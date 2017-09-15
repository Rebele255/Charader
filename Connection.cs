using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Charader.Domain;
using Charader.Services;

namespace Charader
{
    class Connection
    {

        public static List<Substantiv> GetListOfSubstantivFromDatabase()
        {
            var session = DbService.OpenSession();
            var allSubstantiv = session.Query<Customer>().ToList();

        }
        //private static string connectionString = "Server = (localdb)\\mssqllocaldb; Database = Charuder"; //för att få två ord kör vi denna metod två gånger istället för att ändra metoden?

        //public static string ReadWordFromDatabase(string table, int id)
        //{
        //    string word = "";
        //    using (var con = new SqlConnection(connectionString))
        //    {
        //        using (var com = new SqlCommand($"SELECT Word FROM {table} WHERE ID = {id}", con))
        //        {
        //            con.Open();
        //            var reader = com.ExecuteReader();
        //            while (reader.Read())
        //            {
        //                word = $"{reader[0]}";
        //            }
        //            //com.ExecuteNonQuery();

        //        }
        //    }
        //    return word;
        //}

        //public static void AddWordToDatabase (string table, string col, string addWord)
        //{
        //    using (var con = new SqlConnection(connectionString))
        //    {
        //        using (var com = new SqlCommand($"INSERT INTO {table} ({col}) VALUES ('{addWord}')", con))
        //        {
        //            con.Open();
        //            var reader = com.ExecuteNonQuery(); //com.ExecuteReader();
        //            //
        //        }
        //    }
        //}

        //public static int GetNumberOfWordsFromTable(string table)
        //{
        //    using (var con = new SqlConnection(connectionString))
        //    {
        //        int wordCount = 0;
        //        using (var com = new SqlCommand($"SELECT * FROM {table}", con))
        //        {
        //            con.Open();
        //            var reader = com.ExecuteReader();
        //            while (reader.Read())
        //            {
        //                wordCount++;
        //            }
        //            //com.ExecuteNonQuery();

        //        }
        //        return wordCount;
        //    }
        //}
        //public static List<int> GetListOfIDFromDatabase(string table)
        //{
        //    List<int> listOfID = new List<int>();
        //    using (var con = new SqlConnection(connectionString))
        //    {
        //        using (var com = new SqlCommand($"SELECT ID FROM {table}", con))
        //        {
        //            con.Open();
        //            var reader = com.ExecuteReader();
        //            while (reader.Read())
        //            {
        //                listOfID.Add(reader.GetInt32(0));
        //            }
        //            //com.ExecuteNonQuery();

        //        }
        //        return listOfID;
        //    }
        //}
    }
}
