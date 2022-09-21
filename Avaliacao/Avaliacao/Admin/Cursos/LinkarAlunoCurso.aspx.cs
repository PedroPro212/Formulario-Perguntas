using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Avaliacao.Admin.Cursos
{
    public partial class LinkarAlunoCurso : System.Web.UI.Page
    {
        private MySqlConnection connection = new MySqlConnection(SiteMaster.ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["CAVALO"] == null)
            {
                Response.Redirect("../Login/LoginAdmin.aspx");
            }

            if (!IsPostBack)
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
            }
        }

        protected void AtribuirAlunoCurso_Click(object sender, EventArgs e)
        {
            connection.Open();
            var comando = new MySqlCommand($"SELECT * FROM aluno_curso WHERE id_aluno='{ddlAluno.SelectedValue}' AND id_curso='{ddlCurso.SelectedValue}'", connection);
            var reader = comando.ExecuteReader();
            if (reader.Read())
            {
                SiteMaster.AlertPersonalizado(this, "Esse aluno já está associado a este curso.");
                connection.Close();
                return;
            }
            else
            {
                connection.Close();
                connection.Open();
                comando = new MySqlCommand($"INSERT INTO `aluno_curso`(`id_aluno`, `id_curso`) VALUES ('{ddlAluno.SelectedValue}','{ddlCurso.SelectedValue}')", connection);
                comando.ExecuteNonQuery();
                connection.Close();
            }
        }
    }
}