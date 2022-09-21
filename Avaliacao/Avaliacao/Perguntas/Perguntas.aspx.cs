using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Avaliacao.Perguntas
{
    public partial class FrontEnd_Perguntas : System.Web.UI.Page
    {
        private MySqlConnection connection = new MySqlConnection(SiteMaster.ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            List<Label> listaPerguntas = new List<Label>();
            List<RadioButtonList> listaAlternativas = new List<RadioButtonList>();
            if (!IsPostBack)
            {
                connection.Open();
                ddlCurso.Items.Clear();
                var select = new ListItem("Selecione um Curso", "0");
                ddlCurso.Items.Add(select);
                var reader1 = new MySqlCommand("SELECT descricao, id FROM cursos", connection).ExecuteReader();
                while (reader1.Read())
                {
                    var curso = new ListItem(reader1.GetString("descricao"), reader1.GetInt32("id").ToString());
                    ddlCurso.Items.Add(curso);
                }
                connection.Close();
            }

            connection.Open();
            var comando = new MySqlCommand($"SELECT descricao, id FROM perguntas WHERE (1=1) ", connection);
            var reader = comando.ExecuteReader();
            int i = 0;
            while (reader.Read())
            {
                Label enunciado = new Label { Text = $"{i + 1}. {reader.GetString("descricao")}", ID = reader.GetInt32("id").ToString() };
                listaPerguntas.Add(enunciado);

                var rdn = new RadioButtonList { ID = $"rdnPergunta[{i + 1}]", RepeatDirection = RepeatDirection.Horizontal };
                listaAlternativas.Add(rdn);

                for (int n = 1; n <= 5; n++)
                {
                    var alt = new ListItem("" + n, "" + n);
                    listaAlternativas[i].Items.Add(alt);
                }
                i++;
            }
            connection.Close();

            for (i = 0; i < listaPerguntas.Count; i++)
            {
                lblTeste.Controls.Add(listaPerguntas[i]);
                lblTeste.Controls.Add(listaAlternativas[i]);
            }
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            if (ddlCurso.SelectedValue != "0")
            {
                int x = lblTeste.Controls.Count;
                for (int i = 0; i < x; i += 2)
                {
                    connection.Open();
                    var comando = new MySqlCommand($"INSERT INTO `resultados`(`id_aluno`, `id_curso`, `id_pergunta`, `Resposta`) " +
                        $"VALUES ('{ddlAluno.SelectedValue}','{ddlCurso.SelectedValue}','{((Label)lblTeste.Controls[i]).ID}','{((RadioButtonList)lblTeste.Controls[i + 1]).SelectedValue}')", connection);
                    comando.ExecuteNonQuery();
                    connection.Close();
                }

                string y = txtComentario.Text.Replace(" ", "");
                if (y != "")
                {
                    connection.Open();
                    var comando = new MySqlCommand($"INSERT INTO `comentarios`(`id_aluno`, `id_curso`, `descricao`) " +
                        $"VALUES ('{ddlAluno.SelectedValue}','{ddlCurso.SelectedValue}', @descricao)", connection);
                    comando.Parameters.Add(new MySqlParameter("descricao", $"{txtComentario.Text}"));
                    comando.ExecuteNonQuery();
                    connection.Close();
                }

                SiteMaster.AlertPersonalizado(this, "Enviado com sucesso!");

                Response.Redirect("Perguntas.aspx");
            }
            else
                SiteMaster.AlertPersonalizado(this, "Selecione um curso para responder a pesquisa.");
        }

        protected void ddlCurso_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlCurso.SelectedValue == "0")
            {
                ddlAluno.Visible = false;
                return;
            }
            ddlAluno.Visible = true;
            connection.Open();
            ddlAluno.Items.Clear();
            var anon = new ListItem("Anônimo", "1");
            ddlAluno.Items.Add(anon);
            var reader1 = new MySqlCommand($"SELECT alunos.nome, aluno_curso.id_aluno FROM aluno_curso, alunos " +
                $"WHERE alunos.id=aluno_curso.id_aluno AND aluno_curso.id_curso={ddlCurso.SelectedValue}", connection).ExecuteReader();
            while (reader1.Read())
            {
                var aluno = new ListItem(reader1.GetString("nome"), reader1.GetInt32("id_aluno").ToString());
                ddlAluno.Items.Add(aluno);
            }
            connection.Close();
        }
    }
}