using System;
using System.Collections.Generic;
using System.Text;

namespace Api.Application.Dto
{
    public class Category:DefaultEntity
    {
        public Guid category_id { get; set; }
        public string category_name { get; set; }

    }
}
