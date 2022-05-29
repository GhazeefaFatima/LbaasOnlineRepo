using System;
using System.Collections.Generic;
using System.Text;

namespace Api.Application.Dto.Product
{
   public class ProductList
    {

        public int product_id { get; set; }
        public int ProdCatId { get; set; }
        public string product_name { get; set; }
        public string description { get; set; }
        public string type { get; set; }
        public string subcategory_name { get; set; }
        public string collection_name { get; set; }
        public string category_name { get; set; }
        public int price { get; set; }
        public int sale { get; set; }
        public int discount { get; set; }
        public int stock { get; set; }
        public bool isnew { get; set; }
        public string tags { get; set; }
        public int variant_id { get; set; }
        public string size_name { get; set; }
        public string color_name { get; set; }
        public int image_id { get; set; }
        public int var_img_id { get; set; }
        public string alt { get; set; }
        public string image_src { get; set; }
        

        //public string Picture1 { get; set; }
        //public string Picture2 { get; set; }

        //public string Picture3 { get; set; }
        //public string Picture4 { get; set; }
        //public string Picture5 { get; set; }


        //public decimal UnitPrice { get; set; }
        //public decimal OldPrice { get; set; }
        //public decimal Discount { get; set; }
        //public decimal UnitInStock { get; set; }

        //public Boolean ProductAvailablel { get; set; }
        //public Boolean is_main_page { get; set; }
        //public Boolean is_new_product { get; set; }
        //public Boolean is_best_selling { get; set; }
        //public Boolean is_featured_product { get; set; }
        //public Boolean is_on_sale { get; set; }
        //public decimal price { get; set; }
        //public string description { get; set; }

    }
}
