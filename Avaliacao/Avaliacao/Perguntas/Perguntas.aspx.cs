using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Avaliacao.Perguntas
{
    public partial class FrontEnd_Perguntas : System.Web.UI.Page
    {
        private MySqlConnection connection = new MySqlConnection(SiteMaster.ConnectionString);
        
        int i = 0;

        int[] ids = {0,0,0,0,0};

        protected void Page_Load(object sender, EventArgs e)
        {
            connection.Open();
            Label[] lblperguntas = { lblPergunta1, lblPergunta2, lblPergunta3, lblPergunta4, lblPergunta5 };
            var reader = new MySqlCommand("SELECT id FROM perguntas", connection).ExecuteReader();
            while (reader.Read())
            {
                ids[i] = reader.GetInt32("id");
                i++;
            }
            connection.Close();

            if(!IsPostBack)
            {
                connection.Open();
                ddlAluno.Items.Clear();
                reader = new MySqlCommand("SELECT nome, id FROM alunos", connection).ExecuteReader();
                while (reader.Read())
                {
                    var aluno = new ListItem(reader.GetString("nome"), reader.GetInt32("id").ToString());
                    ddlAluno.Items.Add(aluno);
                }
                connection.Close();

                connection.Open();
                ddlCurso.Items.Clear();
                reader = new MySqlCommand("SELECT descricao, id FROM cursos", connection).ExecuteReader();
                while (reader.Read())
                {
                    var curso = new ListItem(reader.GetString("descricao"), reader.GetInt32("id").ToString());
                    ddlCurso.Items.Add(curso);
                }
                connection.Close();

                connection.Open();
                var comando = new MySqlCommand($"SELECT descricao, id FROM perguntas WHERE (1=1) ", connection);
                reader = comando.ExecuteReader();
                i = 0;
                while (reader.Read())
                {
                    lblperguntas[i].Text = $"{i+1}. {reader.GetString("descricao")}";
                    ids[i] = reader.GetInt32("id");
                    i++;
                }
                connection.Close();
            }
        }
        
        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            for (i=0; i<5; i++)
            {
                connection.Open();
                RadioButtonList[] rdnperguntas = { rdnPergunta1, rdnPergunta2, rdnPergunta3, rdnPergunta4, rdnPergunta5 };
                var comando = new MySqlCommand($"INSERT INTO `resultados`(`id_aluno`, `id_curso`, `id_pergunta`, `Resposta`) " +
                    $"VALUES ('{ddlAluno.SelectedValue}','{ddlCurso.SelectedValue}','{ids[i]}','{rdnperguntas[i].SelectedValue}')",connection);
                comando.ExecuteNonQuery();

                rdnperguntas[i].ClearSelection();

                connection.Close();
            }

            ddlAluno.ClearSelection();
            ddlCurso.ClearSelection();
        }
    }
}