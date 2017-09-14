using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Charader.Domain
{
    class Adjektiv
    {
        public Adjektiv()
        {
            ThemesAdj = new List<Theme>();
        }

        public virtual Guid Id { get; set; }
        public virtual string AdjWord { get; set; }

        public virtual ICollection<Theme> ThemesAdj { get; set; }
    }
}
