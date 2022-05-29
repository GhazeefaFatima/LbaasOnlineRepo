using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Api.Application.ViewModel
{
    public class ProductHeader
    {

        public ProductHeader()
        {
            images = new List<Images>();
            variants = new List<Variants>();
    }


     
      
        public int id { get; set; }
        public string title { get; set; }
        public string description { get; set; }
        public string type { get; set; }
        public string brand { get; set; }
        public string collection { get; set; }
        public string[] category { get; set; }
        public int price { get; set; }
        public int sale { get; set; }
        public int discount { get; set; }
        public int stock { get; set; }
        public bool isnew { get; set; }
        public string tags { get; set; }
       
        public List<Images> images { get; set; }
        public List<Variants> variants { get; set; }

    }
}
