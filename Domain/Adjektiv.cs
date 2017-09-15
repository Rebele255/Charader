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
            Themes = new List<Theme>();
        }

        public virtual Guid Id { get; set; }
        public virtual string Word { get; set; }

        public virtual ICollection<Theme> Themes { get; set; }

        public virtual void AddTheme(Theme theme)
        {
            Themes.Add(theme);
            theme.Adjectives.Add(this);
        }
    }
}
