﻿using Charader.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using Charader.Domain;
using NHibernate.Linq;

namespace Charader
{
    class Program
    {
        static GameInfo gameInfo = new GameInfo();
        bool guessingIsActive;

        static void Main(string[] args)
        {
            Program p = new Program();
           // WithHibernate();
            p.Menu();

            //p.AddNewWords();
        }

        private static void WithHibernate()
        {
            var session = DbService.OpenSession();

            //foreach (var word in session.Query<Adjektiv>())
            //{
            //    session.Delete(word);
            //}

            //foreach (var word in session.Query<Substantiv>())
            //{
            //    session.Delete(word);
            //}



            var adjektiv1 = new Adjektiv
            {
                Word = "Krullig"
            };
            session.Save(adjektiv1);

            //var substantiv1 = new Substantiv
            //{
            //    Word = "Grävskopa"
            //};
            var substantiv2 = new Substantiv
            {
                Word = "Hopprep"
            };
           // session.Save(substantiv1);
            session.Save(substantiv2);

            //adda some themes och försök connecta dessa med substantiv --> gör metoder för detta och ändra i mappning, undersök med save - var behövs det?

            foreach (var word in session.Query<Theme>())
            {
                session.Delete(word);
            }
            session.Flush();

            var theme1 = new Theme
            {
                ThemeWord = "Vuxen"
            };
            var theme2 = new Theme
            {
                ThemeWord = "Barn"
            };
            adjektiv1.AddTheme(theme2);
            session.Save(theme1);
            session.Save(theme2);
            //substantiv1.AddTheme(theme2);
            //session.Save(substantiv1);
            DbService.CloseSession(session);
        }

        private void Menu()
        {
            
            do
            {
                Console.Clear();
                Console.WriteLine("-----");
                Console.WriteLine("Menu: ");
                Console.WriteLine("-----");
                Console.WriteLine("[1] Play Charuder");
                Console.WriteLine("[2] Add new words");
                Console.WriteLine("[3] HighScore List");
                //TODO: lägg in menyval settings
                Console.WriteLine("[4] Quit");
                Console.WriteLine("[5] Add new Theme");

                int choice = int.Parse(Console.ReadLine());
                Console.WriteLine();

                switch (choice)
                {
                    case 1:
                        CreateWordListsDB("Substantiv");
                        CreateWordListsDB("Adjektiv");
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
                        gameInfo.PlayTheGame = false;
                        break;
                    case 5:
                        AddNewTheme();
                        break;
                    default:
                        Console.WriteLine();
                        Console.WriteLine("Choose one of the alternatives in the menu!");
                        break;
                }
            } while (gameInfo.PlayTheGame);
        }

        private void AddNewTheme()
        {
            var session = DbService.OpenSession();
            Console.Write("Tema: ");
            string strTheme = Console.ReadLine();
            var theme = new Theme
            {
                ThemeWord = strTheme
            };
            session.Save(theme);
            DbService.CloseSession(session);
        }

        private void CreateWordListsDB(string typeOfWord)
        {
            if (typeOfWord == "Substantiv")
            {
                gameInfo.ValidSubWordIdList = Connection.GetListOfSubstantivFromDatabase();
                
            }
            else if (typeOfWord == "Adjektiv")
            {
                gameInfo.ValidAdjWordIdList = Connection.GetListOfAdjektivFromDatabase();
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
                string addTheme = AskAddTheme(addWord);
                Connection.AddSubstantivTODatabase(addWord, addTheme);
                //Connection.AddWordToDatabase("Substantiv", "word", addWord); //FÖRR
            }
            else if (inputType == "2")
            {
                string addWord = AskForNewWord();
                string addTheme = AskAddTheme(addWord);
                Connection.AddAdjektivTODatabase(addWord, addTheme);
                //Connection.AddAdjektivTODatabase(addWord);
            }
        }

        private string AskAddTheme(string word)
        {
            string addThemeToWord;
            do
            {
                Console.WriteLine($"Which theme(s) does {word} belong to? Separate with comma");
                addThemeToWord = Console.ReadLine();

            } while (!Regex.IsMatch(addThemeToWord, @"^[A-Za-zåäöÅÄÖ,\s]*$"));
            return addThemeToWord;
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
            await Task.Delay(10000);
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
            string returnWord = "";
            int nextWordId = 0;
            if (table == "Substantiv")
            {
                Random rnd = new Random();
                nextWordId = rnd.Next(0, gameInfo.ValidSubWordIdList.Count);
                returnWord = gameInfo.ValidSubWordIdList[nextWordId].Word;
                gameInfo.ValidSubWordIdList.RemoveAt(nextWordId);

            }
            else if (table == "Adjektiv")
            {
                Random rnd = new Random();
                nextWordId = rnd.Next(0, gameInfo.ValidAdjWordIdList.Count);
                returnWord = gameInfo.ValidAdjWordIdList[nextWordId].Word;
                gameInfo.ValidAdjWordIdList.RemoveAt(nextWordId);
            }

            return returnWord;
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
