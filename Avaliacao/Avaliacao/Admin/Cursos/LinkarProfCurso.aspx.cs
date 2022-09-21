using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Avaliacao.Admin.Cursos
{
    public partial class LinkarProfCurso : System.Web.UI.Page
    {
        private MySqlConnection connection = new MySqlConnection(SiteMaster.ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                connection.Open();
                ddlProf.Items.Clear();
                var reader = new MySqlCommand("SELECT nome, id FROM professores", connection).ExecuteReader();
                while (reader.Read())
                {
                    var professor = new ListItem(reader.GetString("nome"), reader.GetInt32("id").ToString());
                    ddlProf.Items.Add(professor);
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

        protected void AtribuirProfCurso_Click(object sender, EventArgs e)
        {
            connection.Open();
            var comando = new MySqlCommand($"SELECT * FROM professor_curso WHERE id_prof='{ddlProf.SelectedValue}' AND id_curso='{ddlCurso.SelectedValue}'", connection);
            var reader = comando.ExecuteReader();
            if (reader.Read())
            {
                SiteMaster.AlertPersonalizado(this, "Esse professor já está associado a este curso.");
                connection.Close();
                return;
            }
            else
            {
                connection.Close();
                connection.Open();
                comando = new MySqlCommand($"INSERT INTO `professor_curso`(`id_prof`, `id_curso`) VALUES ('{ddlProf.SelectedValue}','{ddlCurso.SelectedValue}')", connection);
                comando.ExecuteNonQuery();
                connection.Close();
            }
        }
    }
}