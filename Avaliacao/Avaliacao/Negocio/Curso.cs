using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Avaliacao.Negocio
{
    public class Curso
    {
        private MySqlConnection connection;
        public Curso()
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);
        }

        public Classes.Curso Read(string id)
        {
            return this.Read(id, "").FirstOrDefault();
        }

        public List<Classes.Curso> Read(string id, string descricao)
        {
            var cursos = new List<Classes.Curso>();
            try
            {
                connection.Open();
                var commando = new MySqlCommand($"SELECT descricao, id FROM cursos WHERE (1=1) ", connection);
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
                    cursos.Add(new Classes.Curso
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
            return cursos;
        }

        public bool Create(Classes.Curso curso)
        {
            try
            {
                connection.Open();
                var comando = new MySqlCommand($@"INSERT INTO cursos (descricao) VALUES (@descricao)", connection);
                comando.Parameters.Add(new MySqlParameter("descricao", curso.Descricao));
                comando.ExecuteNonQuery();
                connection.Close();
            }
            catch
            {
                return false;
            }
            return true;
        }

        public bool Update(Classes.Curso curso)
        {
            try
            {
                connection.Open();
                var comando = new MySqlCommand($@"UPDATE cursos SET descricao = @descricao WHERE id = @id", connection);
                comando.Parameters.Add(new MySqlParameter("nome", curso.Descricao));
                comando.Parameters.Add(new MySqlParameter("id", curso.Id));
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
                var comando = new MySqlCommand("DELETE FROM cursos WHERE id = " + id, connection);
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