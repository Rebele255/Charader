using NHibernate.Cfg.MappingSchema;
using NHibernate.Mapping.ByCode;
using Charader.Domain;

namespace Charader.Mapping
{
    public class NHibernateMapper
    {
        private readonly ModelMapper _modelMapper;

        public NHibernateMapper()
        {
            _modelMapper = new ModelMapper();
        }

        public HbmMapping Map()
        {
            MapSubstantiv();
            //MapCar();
            //MapMovie();
            return _modelMapper.CompileMappingForAllExplicitlyAddedEntities();
        }

        //private void MapCar()
        //{
        //    _modelMapper.Class<Car>(e =>
        //    {
        //        e.Id(p => p.RegNr);
        //        e.Property(p => p.Maker);
        //        e.Property(p => p.NrOfSeats);
        //        e.Property(p => p.Color);

        //        // Många bilar  hör till en kund
        //        e.ManyToOne(p => p.Owner, mapper =>
        //        {
        //            mapper.Column("OwnerGuid"); // Ange namn på kolumnen som pekar på pappan
        //            // Valfritt om du sätter "NotNullable(true)" eller "NotNullable(false)". (false är default). 
        //            // false = BlogPostId kan vara null
        //            // true =  BlogPostId får inte vara null
        //            //mapper.NotNullable(true);

        //            // Sätt Cascade.None här vid ManyToOne. (annars tas bloggposten bort när vi tar bort en kommentar = inte bra)
        //            mapper.Cascade(Cascade.None); // None är default
        //        });
        //    });
        //}

        //private void MapMovie()
        //{
        //    _modelMapper.Class<Movie>(e =>
        //    {
        //        e.Id(p => p.Id, p => p.Generator(Generators.GuidComb));
        //        e.Property(p => p.Title, p => p.Unique(true)); //


        //        e.Set(x => x.Customers, collectionMapping =>
        //        {
        //            // Inverse true måste vara på ena sidan (men inte den andra). Det spelar ingen roll vilken sida du väljer.
        //            // collectionMapping.Inverse(true); //får bara finnas på ena!! 
        //            collectionMapping.Table("CustomerRentsMovie");
        //            collectionMapping.Cascade(Cascade.None);
        //            collectionMapping.Key(keyMap => keyMap.Column("MovieId"));
        //            collectionMapping.Inverse(true);

        //        }, map => map.ManyToMany(p => p.Column("CustomerId")));
        //    });
        //}

        private void MapSubstantiv()
        {
            _modelMapper.Class<Substantiv>(e =>
            {
                // Låt varje tabell ha en "uniqueidentifier" med namn "Id" och är "primary key". Förutom kopplingstabeller.
                e.Id(p => p.Id, p => p.Generator(Generators.GuidComb));

                // Koppla ihop dina klassers fält med kolumnerna i databastabellen
                e.Property(p => p.SubWord); // property = vanlig kolumn
                //e.Property(p => p.Updated, m => m.Column("Uppdaterad")); // Exempel när en kolumn i en tabell heter "Uppdaterad" (och kopplas till "Updated")
                

                // Många-till-många-relation mellan BlogPost och Tag. (Det behövs en ManyToMany på andra sidan också)
                //e.Set(x => x.Movies, collectionMapping =>
                //{

                //    collectionMapping.Table("CustomerRentsMovie"); //namn på mellanliggande tabell
                //    collectionMapping.Cascade(Cascade.None); // Sätt alltid "Cascade.None" vid en många-till-många-relation
                //    collectionMapping.Key(keyMap => keyMap.Column("CustomerId")); // kopplingstabell (mellanliggande)
                //}, map => map.ManyToMany(p => p.Column("MovieId"))); //kopplingstabellen (mellanliggande)
            });

        }
    }
}


