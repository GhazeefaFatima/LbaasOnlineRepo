using Api.Applicatio.Common;
using Api.Application.Dto;
using Api.Application.Dto.Product;
using Api.Application.Interface;
using Api.Application.Presistance;
using Api.Domain;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Api.Application.Implementation
{
    public class ProductService : IProductService
    {
        private IProductRepository _repo;
        public string entityname = EntityName.Product;
        public ProductService(IProductRepository repo)
        {
            _repo = repo;
        }
        public async Task<Product> Create(Product o)
        {
            try
            {
                await _repo.Add(o);

                return o;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public async Task<Product> Delete(Product o)
        {
            try
            {
                await _repo.Update(o);
                return o;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public async Task<IEnumerable<Product>> GetAll()
        {
            try
            {
                var list = await _repo.GetAll(entityname);
                return await Task.FromResult(list);

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public async Task<List<Product>> GetBetweenDateRange(DateTime start, DateTime end)
        {
            throw new NotImplementedException();
        }

        public async Task<Product> GetById(long id)
        {
            try
            {
                return await _repo.Get(entityname, id);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public async Task<Product> Update(Product o)
        {
            try
            {
                await _repo.Update(o);
                return o;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }


        public  IEnumerable<ProductList> GetAllProducts(int is_main_page, int is_new_product, int is_best_selling, int is_featured_product, int is_on_sale)
        {

            IEnumerable<ProductList> list =  _repo.GetAllProducts( is_main_page,  is_new_product,  is_best_selling,  is_featured_product,  is_on_sale).Result;
            return list;
        }

        Task<ViewResponseModal<Product>> IDefaultService<Product>.Create(Product o)
        {
            throw new NotImplementedException();
        }

        Task<ViewResponseModal<Product>> IDefaultService<Product>.Update(Product o)
        {
            throw new NotImplementedException();
        }

        public Task<bool> Delete(int o)
        {
            throw new NotImplementedException();
        }
    }
}