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
            p.Run();
        }

        bool guessingIsActive;


        public void Run()
        {
            guessingIsActive = true;
            Console.WriteLine("*** ROUND 1 ***");
            StopAfterThreeSeconds();
            WordLoop();

            guessingIsActive = true;
            Console.WriteLine("*** ROUND 2 ***");
            StopAfterThreeSeconds();
            WordLoop();
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
                    Console.WriteLine("New random word");
                    Console.ReadKey(true);
                }
            }
        }
    }
}
