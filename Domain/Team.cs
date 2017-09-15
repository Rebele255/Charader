using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Charader.Domain
{
    class Team
    {
        public string Name { get; set; }
        public int Score { get; set; }

        public Team(string name)
        {
            Name = name;
            Score = 0;
        }
    }
}
