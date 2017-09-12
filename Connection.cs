using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Charader
{
    class Connection
    {
        private static string connectionString = "Server = (localdb)\\mssqllocaldb; Database = Charuder";

        public static string ReadWordFromDatabase(string table, int id)
        {
            string word = "";
            using (var con = new SqlConnection(connectionString))
            {
                using (var com = new SqlCommand($"SELECT Word FROM {table} WHERE ID = {id}", con))
                {
                    con.Open();
                    var reader = com.ExecuteReader();
                    while (reader.Read())
                    {
                        word = $"{reader[0]}";
                    }
                    //com.ExecuteNonQuery();

                }
            }
            return word;
        }
    }
}
