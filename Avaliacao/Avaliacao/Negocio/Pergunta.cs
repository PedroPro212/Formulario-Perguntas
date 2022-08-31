using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Avaliacao.Negocio
{
    public class Pergunta
    {
        private MySqlConnection connection;
        public Pergunta()
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);
        }

        public Classes.Pergunta Read(string id)
        {
            return this.Read(id, "").FirstOrDefault();
        }

        public List<Classes.Pergunta> Read(string id, string descricao)
        {
            var perguntas = new List<Classes.Pergunta>();
            try
            {
                connection.Open();
                var commando = new MySqlCommand($"SELECT descricao, id FROM perguntas WHERE (1=1) ", connection);
                if (descricao.Equals("") == false)
                {
                    commando.CommandText += $" AND descricao like @descricao";
                    commando.Parameters.Add(new MySqlParameter("descricao", $"%{descricao}%"));
                }
                if (id.Equals("") == false)
                {
                    commando.CommandText += $" AND id = @id";
                    commando.Parameters.Add(new MySqlParameter("id", id));
                }
                var reader = commando.ExecuteReader();
                while (reader.Read())
                {
                    perguntas.Add(new Classes.Pergunta
                    {
                        Descricao = reader.GetString("descricao"),
                        Id = reader.GetInt32("id")
                    });
                }
            }
            catch
            {

            }
            finally
            {
                connection.Close();
            }
            return perguntas;
        }

        public bool Create(Classes.Pergunta pergunta)
        {
            try
            {
                connection.Open();
                var comando = new MySqlCommand($@"INSERT INTO perguntas (descricao) VALUES (@descricao)", connection);
                comando.Parameters.Add(new MySqlParameter("descricao", pergunta.Descricao));
                comando.ExecuteNonQuery();
                connection.Close();
            }
            catch
            {
                return false;
            }
            return true;
        }

        public bool Update(Classes.Pergunta pergunta)
        {
            try
            {
                connection.Open();
                var comando = new MySqlCommand($@"UPDATE perguntas SET descricao = @descricao WHERE id = @id", connection);
                comando.Parameters.Add(new MySqlParameter("descricao", pergunta.Descricao));
                comando.Parameters.Add(new MySqlParameter("id", pergunta.Id));
                comando.ExecuteNonQuery();
                connection.Close();
            }
            catch
            {
                return false;
            }
            return true;
        }

        public bool Delete(int id)
        {
            try
            {
                connection.Open();
                var comando = new MySqlCommand("DELETE FROM perguntas WHERE id = " + id, connection);
                comando.ExecuteNonQuery();
                connection.Close();
            }
            catch
            {
                return false;
            }
            return true;
        }
    }
}