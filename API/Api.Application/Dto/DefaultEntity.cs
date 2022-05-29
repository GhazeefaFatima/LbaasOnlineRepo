using System;
using System.Collections.Generic;
using System.Text;

namespace Api.Application.Dto
{
   public class DefaultEntity
    {
        public bool? is_deleted { get; set; }
        public DateTime? created_date { get; set; } = DateTime.Now;
        public int? created_by { get; set; }
        public DateTime? updated_date { get; set; } = DateTime.Now;
    }
}
