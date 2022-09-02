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

        int p = 0;

        private int[] ids = {0,0,0,0,0};

        protected void Page_Load(object sender, EventArgs e)
        {
            
                connection.Open();
                ddlAluno.Items.Clear();
                var reader = new MySqlCommand("SELECT nome, id FROM alunos", connection).ExecuteReader();
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
                int i = 0;
                Label[] lblperguntas = { lblPergunta1, lblPergunta2, lblPergunta3, lblPergunta4, lblPergunta5 };

                while (reader.Read())
                {
                    lblperguntas[i].Text = $"{i+1}. {reader.GetString("descricao")}";
                    ids[i] = reader.GetInt32("id");
                    i++;
                }
                connection.Close();
            
                p = i;
         
        }        protected void BtnSubmit_Click(object sender, EventArgs e)


        {
            for (int i=0; i<5; i++)
            {
            connection.Open();C:\Users\ALUNO\source\repos\Formulario-Perguntas\Avaliacao\Avaliacao\Perguntas Gabriel\
            RadioButtonList[] rdnperguntas = { rdnPergunta1, rdnPergunta2, rdnPergunta3, rdnPergunta4, rdnPergunta5 };
            var comando = new MySqlCommand($"INSERT INTO `resultados`(`id_aluno`, `id_curso`, `id_pergunta`, `RespC:\Users\ALUNO\source\repos\Formulario-Perguntas\Avaliacao\Avaliacao\obj\osta`) " +
                $"VALUES ('{ddlAluno.SelectedValue}','{ddlCurso.SelectedValue}','{ids[i]}','{rdnperguntas[i].SelectedValue}')",connection);
            comando.ExecuteNonQuery();
            connection.Close();
            }
        }
    }
}