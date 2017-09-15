using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Charader.Domain;

namespace Charader
{
    class GameInfo
    {
        public List<Substantiv> ValidSubWordIdList { get; set; }
        public List<Adjektiv> ValidAdjWordIdList { get; set; }
        public bool PlayTheGame { get; set; }

        public GameInfo()
        {
            ValidSubWordIdList = new List<Substantiv>(0);
            ValidAdjWordIdList = new List<Adjektiv>(0);
            PlayTheGame = true;
        }
    }
}
