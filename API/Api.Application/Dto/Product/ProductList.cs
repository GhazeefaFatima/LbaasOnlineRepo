using System;
using System.Collections.Generic;
using System.Text;

namespace Api.Application.Dto.Product
{
   public class ProductList
    {
        //ProductId, ProdCatId, ProdName, ProdShortDescription, 
        //    is_main_page, is_new_product, is_best_selling, is_featured_product, is_on_sale, price, description, 

        //    Picture1, Picture2, Picture3, Picture4, Picture5,
            
        //    UnitPrice, OldPrice, Discount, UnitInStock, ProductAvailable, 
        //     created_by, created_date, is_deleted, updated_date


        public int ProductId { get; set; }
        public int ProdCatId { get; set; }
        public string ProdName { get; set; }
        public string ProdShortDescription { get; set; }

        public string Picture1 { get; set; }
        public string Picture2 { get; set; }

        public string Picture3 { get; set; }
        public string Picture4 { get; set; }
        public string Picture5 { get; set; }


        public decimal UnitPrice { get; set; }
        public decimal OldPrice { get; set; }
        public decimal Discount { get; set; }
        public decimal UnitInStock { get; set; }

        public Boolean ProductAvailablel { get; set; }
        public Boolean is_main_page { get; set; }
        public Boolean is_new_product { get; set; }
        public Boolean is_best_selling { get; set; }
        public Boolean is_featured_product { get; set; }
        public Boolean is_on_sale { get; set; }
        public decimal price { get; set; }
        public string description { get; set; }





    }
}
