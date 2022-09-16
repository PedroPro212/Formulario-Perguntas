using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
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
            if(!IsPostBack)
            {
                connection.Open();
                ddlAluno.Items.Clear();
                var reader1 = new MySqlCommand("SELECT nome, id FROM alunos", connection).ExecuteReader();
                while (reader1.Read())
                {
                    var aluno = new ListItem(reader1.GetString("nome"), reader1.GetInt32("id").ToString());
                    ddlAluno.Items.Add(aluno);
                }
                connection.Close();

                connection.Open();
                ddlCurso.Items.Clear();
                reader1 = new MySqlCommand("SELECT descricao, id FROM cursos", connection).ExecuteReader();
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

                    var rdn = new RadioButtonList { ID = $"rdnPergunta[{i + 1}]"};
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
            int x = lblTeste.Controls.Count;
            for (int i = 0; i < x; i+=2)
            {
                connection.Open();
                var comando = new MySqlCommand($"INSERT INTO `resultados`(`id_aluno`, `id_curso`, `id_pergunta`, `Resposta`) " +
                    $"VALUES ('{ddlAluno.SelectedValue}','{ddlCurso.SelectedValue}','{((Label)lblTeste.Controls[i]).ID}','{((RadioButtonList)lblTeste.Controls[i+1]).SelectedValue}')", connection);
                comando.ExecuteNonQuery();
                connection.Close();
            }

            SiteMaster.AlertPersonalizado(this, "Enviado com sucesso!", "Perguntas.aspx");
        }
    }
}