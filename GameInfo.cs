using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Charader
{
    class GameInfo
    {
        public List<int> ValidSubWordIdList { get; set; }
        public List<int> ValidAdjWordIdList { get; set; }
        public bool PlayTheGame { get; set; }

        public GameInfo()
        {
            ValidSubWordIdList = new List<int>(0);
            ValidAdjWordIdList = new List<int>(0);
            PlayTheGame = true;
        }
    }
}
