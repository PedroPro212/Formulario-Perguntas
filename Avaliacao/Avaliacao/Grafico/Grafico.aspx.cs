using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Avaliacao.Grafico
{
    public partial class Grafico : System.Web.UI.Page
    {
        private MySqlConnection connection = new MySqlConnection(SiteMaster.ConnectionString);
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                connection.Open();
                ddlPerguntas.Items.Clear();
                var readero = new MySqlCommand("SELECT descricao, id FROM perguntas", connection).ExecuteReader();
                while (readero.Read())
                {
                    var pergunta = new ListItem("Pergunta ID " + readero.GetInt32("id"), readero.GetInt32("id").ToString());
                    ddlPerguntas.Items.Add(pergunta);
                }
                connection.Close();
            }
            connection.Open();
            TextBox[] resposta = { resposta1, resposta2, resposta3, resposta4, resposta5 };
            connection.Close();
            for (int i = 0; i < 5; i++)
            {
                connection.Open();
                var reader = new MySqlCommand($"SELECT COUNT(Resposta) FROM `resultados` WHERE id_pergunta={ddlPerguntas.SelectedValue} AND Resposta={i+1}", connection).ExecuteReader();
                if (reader.Read())
                resposta[i].Text = reader.GetInt32("COUNT(Resposta)").ToString();
                connection.Close();
            }
        }

        protected void ddlPerguntas_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}