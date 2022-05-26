using System;
using System.Collections.Generic;
using System.Text;

namespace Api.Application.Dto.Product
{
   public class Lookup_Value : DefaultEntity
    {
        public int? id { get; set; }
        public int? lookup_table { get; set; }
        public string description { get; set; }
        public int? header_id { get; set; }
   
    }
}
