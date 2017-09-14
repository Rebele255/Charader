using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Charader.Domain
{
    class Theme
    {
        public virtual Guid Id { get; set; }
        public virtual string ThemeWord { get; set; }

        public virtual ICollection<Substantiv> Substantives { get; set; }
    }
}
