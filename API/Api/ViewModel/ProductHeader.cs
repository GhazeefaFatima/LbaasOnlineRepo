using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Api.ViewModel
{
    public class ProductHeader
    {

        public ProductHeader()
        {
           // ProductDetail = new List<ProductDetail>();
        }


        public int id { get; set; }
        public string title { get; set; }
        public string description { get; set; }
        public string category { get; set; }
        public decimal price { get; set; }
        public bool sale { get; set; }
        public decimal discount { get; set; }
        public decimal stock { get; set; }


        public Boolean is_main_page { get; set; }
        public Boolean is_new_product { get; set; }
        public Boolean is_best_selling { get; set; }
        public Boolean is_featured_product { get; set; }
        public Boolean is_on_sale { get; set; }




        public string subcat_name { get; set; }
        public string size_name { get; set; }
        public string product_img { get; set; }


        //public Boolean is_main_page { get; set; }
        //public Boolean is_new_product { get; set; }
        //public Boolean is_best_selling { get; set; }
        //public Boolean is_featured_product { get; set; }
        //public Boolean is_on_sale { get; set; }
        //public decimal price { get; set; }

      
       
        public List<ProductDetail> images { get; set; }
        public List<ProductDetail> variants { get; set; }

    }
}
