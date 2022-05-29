using Api.Application.Dto.Product;
using Api.Domain;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using pvm = Api.Application.ViewModel;

namespace Api.Application.Interface
{
    public interface IProductService : IDefaultService<Product>
    {
        List<pvm.ProductHeader> GetAllProducts( );
    }
}
