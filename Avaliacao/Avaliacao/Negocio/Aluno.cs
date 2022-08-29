using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Avaliacao.Negocio
{
    public class Aluno
    {
        private MySqlConnection connection;
        public Aluno()
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);
        }

        public Classes.Aluno Read(string id)
        {
            return this.Read(id, "").FirstOrDefault();
        }

        public List<Classes.Aluno> Read(string id, string nome)
        {
            var alunos = new List<Classes.Aluno>();
            try
            {
                connection.Open();
                var commando = new MySqlCommand($"SELECT nome, id FROM alunos WHERE (1=1) ", connection);
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
                    alunos.Add(new Classes.Aluno
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
            return alunos;
        }

        public bool Create(Classes.Aluno aluno)
        {
            try
            {
                connection.Open();
                var comando = new MySqlCommand($@"INSERT INTO alunos (nome,email,senha) VALUES (@nome,null,null)", connection);
                comando.Parameters.Add(new MySqlParameter("nome", aluno.Nome));
                comando.ExecuteNonQuery();
                connection.Close();
            }
            catch
            {
                return false;
            }
            return true;
        }

        public bool Update(Classes.Aluno aluno)
        {
            try
            {
                connection.Open();
                var comando = new MySqlCommand($@"UPDATE alunos SET nome = @nome WHERE id = @id", connection);
                comando.Parameters.Add(new MySqlParameter("nome", aluno.Nome));
                comando.Parameters.Add(new MySqlParameter("id", aluno.Id));
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
                var comando = new MySqlCommand("DELETE FROM alunos WHERE id = " + id, connection);
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