using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Charader
{
    class GameInfo
    {
        public List<int> UsedWordIdList { get; set; }

        public GameInfo()
        {
             UsedWordIdList = new List<int>(0);
            //UsedWordIdList.Add(3);
        }
    }
}
