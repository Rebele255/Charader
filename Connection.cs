using Charader.Services;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Charader.Domain;
using Charader.Mapping;
using NHibernate.Linq;

namespace Charader
{
    class Connection
    {
        public static void AddSubstantivTODatabase(string word, string tema)
        {
            var session2 = DbService.OpenSession();
            var substantiv = new Substantiv
            {
                Word = word
            };
            session2.Save(substantiv);

            List<string> themeList = tema.Split(',').ToList();
            foreach (var item in themeList)
            {
                string trimTheme = item.Trim();
                var theme = session2.Query<Theme>().Where(c => c.ThemeWord == trimTheme).FirstOrDefault();
                substantiv.AddTheme(theme);
            }
            session2.Flush();

            DbService.CloseSession(session2);
        }
        public static void AddAdjektivTODatabase(string input, string tema)
        {
            var session2 = DbService.OpenSession();
            var adjektiv = new Adjektiv
            {
                Word = input
            };
            session2.Save(adjektiv);

            List<string> themeList = tema.Split(',').ToList();
            foreach (var item in themeList)
            {
                string trimTheme = item.Trim();
                var theme = session2.Query<Theme>().Where(c => c.ThemeWord == trimTheme).FirstOrDefault();
                adjektiv.AddTheme(theme);
            }
            session2.Flush();
            DbService.CloseSession(session2);
        }


        public static List<Substantiv> GetListOfSubstantivFromDatabase()
        {
            var session = DbService.OpenSession();
            var allSubstantiv = session.Query<Substantiv>().ToList();
            return allSubstantiv;

        }
        public static List<Adjektiv> GetListOfAdjektivFromDatabase()
        {
            var session = DbService.OpenSession();
            var allAdjektiv = session.Query<Adjektiv>().ToList();
            return allAdjektiv;

        }



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
