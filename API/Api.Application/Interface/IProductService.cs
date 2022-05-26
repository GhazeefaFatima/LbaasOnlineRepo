using Api.Application.Dto.Product;
using Api.Domain;
using System;
using System.Collections.Generic;
using System.Text;

namespace Api.Application.Interface
{
    public interface IProductService : IDefaultService<Product>
    {
        List<ProductList> GetAllProducts();
    }
}
