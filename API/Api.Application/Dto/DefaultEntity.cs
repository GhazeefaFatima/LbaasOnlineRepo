using System;
using System.Collections.Generic;
using System.Text;

namespace Api.Application.Dto
{
   public class DefaultEntity
    {
        public bool is_deleted { get; set; }
        public DateTime created_date { get; set; }
        public DateTime created_by { get; set; }
    }
}
