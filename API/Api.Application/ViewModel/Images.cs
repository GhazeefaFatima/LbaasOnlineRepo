using System;
using System.Collections.Generic;
using System.Text;

namespace Api.Application.ViewModel
{
    public class Images
    {
        public Images(int elements)
        {
            variant_id = new int[elements];
        }
    
   
        public int image_id { get; set; }
        public int id { get; set; }
        public string alt { get; set; }
        public string src { get; set; }
        public int[] variant_id { get; private set; }

 

}
}
