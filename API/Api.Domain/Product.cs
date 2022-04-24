using System;
using System.Collections.Generic;
using System.Text;

namespace Api.Domain
{
    public class Product
    {
        public Guid ProductId { get; set; }
        public string ProductName { get; set; }
        public bool IsMainPageItem { get; set; }
        public bool IsNewProduct { get; set; }
        public bool IsBestSelling  { get; set; }
        public bool IsFeaturedProduct { get; set; }
        public bool IsOnSale { get; set; }
        public decimal Price { get; set; }


    }
}
