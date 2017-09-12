using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Charader
{
    class Program
    {
        static void Main(string[] args)
        {
            Program p = new Program();
            p.Menu();
        }

        bool guessingIsActive;

        private void Menu()
        {
            Console.WriteLine("-----");
            Console.WriteLine("Menu: ");
            Console.WriteLine("-----");
            Console.WriteLine("[1] Play Charuder");
            Console.WriteLine("[2] Add new words");
            //TODO: lägg in menyýval settings
            Console.WriteLine("[3] Quit");

            int choice = int.Parse(Console.ReadLine());
            Console.WriteLine();

            switch (choice)
            {
                case 1:
                    Run();
                    break;
                case 2:
                    //AddNewWords();
                    break;
                case 7:
                    Environment.Exit(0);
                    break;
                default:
                    Console.WriteLine();
                    Console.WriteLine("Choose one of the alternatives in the menu!");
                    break;
            }
        }

        public void Run()
        {
            List<Team> teamList = CreateTeams();

            //loop på antal lag = en omgång
            foreach (var team in teamList)
            {
                Console.WriteLine($"*** {team.Name} ***");
                Console.WriteLine("Press Enter to show word");
                guessingIsActive = true;
                StopAfterThreeSeconds();
                WordLoop();
            }
        }

        private async void StopAfterThreeSeconds()
        {
            await Task.Delay(3000);
            StopCurrentRound();
        }

        private void StopCurrentRound()
        {
            Console.WriteLine("Stop current round!");
            Console.WriteLine();
            guessingIsActive = false;
        }

        public void WordLoop()
        {
            while (true)
            {
                if (!guessingIsActive)
                {
                    break;
                }
                if (Console.KeyAvailable)
                {

                    Console.WriteLine(RandomWord("Substantiv"));
                    Console.ReadKey(true);
                    //AddScore();
                }
            }
        }

        private string RandomWord(string table)
        {
            Random rnd = new Random();
            int nextWord = rnd.Next(1, Connection.GetNumberOfWordsFromTable(table));
            return Connection.ReadWordFromDatabase(table, nextWord);
        }

        private List<Team> CreateTeams()
        {
            Console.Write("How many teams are playing this awesome game? ");
            int nrOfTeams = int.Parse(Console.ReadLine()); //TODO: på nåt sätt kolla så man skriver en siffra! Regex
            List<Team> teamList = new List<Team>();

            for (int i = 0; i < nrOfTeams; i++)
            {
                Console.WriteLine($"Name of team {i + 1}: ");
                teamList.Add(new Team(Console.ReadLine()));
            }
            return teamList;
        }

        private void AddScore(Team team)
        {
            team.Score++;
        }
        
    }
}
