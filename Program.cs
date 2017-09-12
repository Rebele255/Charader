using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace Charader
{
    class Program
    {
        static GameInfo gameInfo = new GameInfo();

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
            Console.WriteLine("[3] HighScore List");
            //TODO: lägg in menyýval settings
            Console.WriteLine("[4] Quit");

            int choice = int.Parse(Console.ReadLine());
            Console.WriteLine();

            switch (choice)
            {
                case 1:
                    Run();
                    break;
                case 2:
                    AddNewWords();
                    break;
                case 3:
                    //TODO: 
                    //HighScoreList();
                    break;
                case 4:
                    Environment.Exit(0);
                    break;
                default:
                    Console.WriteLine();
                    Console.WriteLine("Choose one of the alternatives in the menu!");
                    break;
            }
        }

        private void AddNewWords()
        {
            string inputType;

            do
            {
                Console.WriteLine("What kind of word would you like to add?");
                Console.WriteLine("[1] Noun");
                Console.WriteLine("[2] Adjective");
                inputType = Console.ReadLine();
                Console.WriteLine();
                if (inputType != "1" && inputType != "2")
                {
                    Console.WriteLine("No valid type of word");
                }
            } while (inputType != "1" && inputType != "2");

            
            if (inputType == "1")
            {
                string addWord = AskForNewWord();
                Connection.AddWordToDatabase("Substantiv", "word", addWord);
            }
            else if (inputType == "2")
            {
                string addWord = AskForNewWord();
                Connection.AddWordToDatabase("Adjektiv", "word", addWord);
            }

        }

        private string AskForNewWord()
        {
            string addWord;

            do
            {
                Console.WriteLine("Word you want to add: ");
                 addWord = Console.ReadLine();

            } while (!Regex.IsMatch(addWord, @"[A-Za-zåäöÅÄÖ-]"));
            return addWord;
        }

        public void Run()
        {

            List<Team> teamList = CreateTeams();
            string input = "y";
            //loop på antal lag = en omgång
            while (Regex.IsMatch(input, @"^[y](es)?"))
            {
                Console.Clear();
                foreach (var team in teamList)
                {
                    Console.WriteLine($"*** {team.Name} ***");
                    Console.WriteLine("Press Enter to show word");
                    guessingIsActive = true;
                    StopAfterThreeSeconds();
                    WordLoop(team);
                }
                Console.Clear();
                DisplayLeaderBoard(teamList);
                input = AskForAnotherRound();

            }
            //TODO: spelet är slut och man vill lägga till omgången i HighScoreLista - genomsnitt per runda 
        }

        private string AskForAnotherRound()
        {
            Console.WriteLine();
            Console.WriteLine("Want to go another round? [Y/N]");
            string input = Console.ReadLine().ToLower();
            return input;
        }

        private void DisplayLeaderBoard(List<Team> teamList)
        {
            List<Team> sortedTeamList = teamList.OrderByDescending(x => x.Score).ToList();

            Console.WriteLine("**** LEADER BOARD *****");

            foreach (var team in sortedTeamList)
            {
                Console.WriteLine($"{team.Name}: {team.Score}");
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

        public void WordLoop(Team team)
        {
            int counter = 0;

            while (true)
            {
                if (!guessingIsActive)
                {
                    break;
                }
                if (Console.KeyAvailable)
                {
                    Console.Write($"{RandomWord("Adjektiv")} ");
                    Console.WriteLine(RandomWord("Substantiv"));
                    Console.ReadKey(true);
                    if (counter != 0)
                    {
                        AddScore(team);
                    }
                    counter++;
                }
            }
        }

        private string RandomWord(string table)
        {
            int nextWordId = 0;
            if (table == "Substantiv")
            {
                do
                {
                    Random rnd = new Random();
                    nextWordId = rnd.Next(1, Connection.GetNumberOfWordsFromTable(table));
                } while (gameInfo.UsedSubWordIdList.Contains(nextWordId));

                gameInfo.UsedSubWordIdList.Add(nextWordId);
                return Connection.ReadWordFromDatabase(table, nextWordId);
            }
            if (table == "Adjektiveee")
            {
                do
                {
                    Random rnd = new Random();
                    nextWordId = rnd.Next(1, Connection.GetNumberOfWordsFromTable(table));
                } while (gameInfo.UsedAdjWordIdList.Contains(nextWordId));

                gameInfo.UsedAdjWordIdList.Add(nextWordId);
                return Connection.ReadWordFromDatabase(table, nextWordId);
            }

            return Connection.ReadWordFromDatabase(table, nextWordId);
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
