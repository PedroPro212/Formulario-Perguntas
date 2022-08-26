using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Avaliacao.Negocio
{
    public class Professor
    {
        private MySqlConnection connection;
        public Professor()
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);
        }

        public Classes.Professor Read(string id)
        {
            return this.Read(id, "").FirstOrDefault();
        }

        public List<Classes.Professor> Read(string id, string nome)
        {
            var professores = new List<Classes.Professor>();
            try
            {
                connection.Open();
                var commando = new MySqlCommand($"SELECT nome, id FROM professores WHERE (1=1) ", connection);
                if (nome.Equals("") == false)
                {
                    commando.CommandText += $" AND nome like @nome";
                    commando.Parameters.Add(new MySqlParameter("nome", $"%{nome}%"));
                }
                if (id.Equals("") == false)
                {
                    commando.CommandText += $" AND id = @id";
                    commando.Parameters.Add(new MySqlParameter("id", id));
                }
                var reader = commando.ExecuteReader();
                while (reader.Read())
                {
                    professores.Add(new Classes.Professor
                    {
                        Nome = reader.GetString("nome"),
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
            return professores;
        }

        public bool Create(Classes.Professor professor)
        {
            try
            {
                connection.Open();
                var comando = new MySqlCommand($@"INSERT INTO professores (nome) VALUES (@nome)", connection);
                comando.Parameters.Add(new MySqlParameter("nome", professor.Nome));
                comando.ExecuteNonQuery();
                connection.Close();
            }
            catch
            {
                return false;
            }
            return true;
        }

        public bool Update(Classes.Professor professor)
        {
            try
            {
                connection.Open();
                var comando = new MySqlCommand($@"UPDATE professores SET nome = @nome WHERE id = @id", connection);
                comando.Parameters.Add(new MySqlParameter("nome", professor.Nome));
                comando.Parameters.Add(new MySqlParameter("id", professor.Id));
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
                var comando = new MySqlCommand("DELETE FROM professores WHERE id = " + id, connection);
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