using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Charader.Domain
{
    class Substantiv
    {
        public Substantiv()
        {
            Themes = new List<Theme>();
        }


        public virtual Guid Id { get; set; }
        public virtual string SubWord { get; set; }

        public virtual ICollection<Theme> Themes { get; set; }


    }
}
