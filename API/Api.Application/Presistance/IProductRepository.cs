using Api.Application.Dto.Product;
using Api.Domain;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Api.Application.Presistance
{
    public interface IProductRepository : IGenericRepository<Product>
    {
       Task<IEnumerable<ProductList>> GetAllProducts(int is_main_page, int is_new_product, int is_best_selling, int is_featured_product, int is_on_sale);
    }
}
