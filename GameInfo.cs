using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Charader
{
    class GameInfo
    {
        public List<int> UsedSubWordIdList { get; set; }
        public List<int> UsedAdjWordIdList { get; set; }
        public bool PlayTheGame { get; set; }

        public GameInfo()
        {
            UsedSubWordIdList = new List<int>(0);
            UsedAdjWordIdList = new List<int>(0);
            PlayTheGame = true;
        }
    }
}
