using Api.Applicatio.Common;
using Api.Application.Dto;
using Api.Application.Dto.Product;
using Api.Application.Interface;
using Api.Application.Presistance;
using pvm =Api.Application.ViewModel;
using Api.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
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


        public IEnumerable<ProductList> GetAllProducts(int is_main_page, int is_new_product, int is_best_selling, int is_featured_product, int is_on_sale)
        {

            IEnumerable<ProductList> plist = _repo.GetAllProducts(is_main_page, is_new_product, is_best_selling, is_featured_product, is_on_sale).Result;
            List<pvm.ProductHeader> res = null;
            var gb = plist.GroupBy(x => new { id= x.product_id, varient_id=x.variant_id, image_is = x.image_id }). ToList();
     //       var query = _customerRepo.Table
     //.GroupBy(c => new { Date = c.Date.Date, Type = c.TypeOfCustomer })
     //.Select(g => new
     ////{
     //    Date = g.Key.Date,
     //    Type = g.Key.Type,
     //    Count = g.Count
     //}
     //       )
     //.OrderByDescending(r = r.Date);
            gb.ToList().ForEach(x =>
            {
                var r = new pvm.ProductHeader();
                r.id = x.FirstOrDefault().product_id;
                r.title = x.FirstOrDefault().product_name;
                r.description = x.FirstOrDefault().description;
                r.type = x.FirstOrDefault().type;
                r.brand = x.FirstOrDefault().subcategory_name;
                r.collection = x.FirstOrDefault().collection_name;
                r.category = x.FirstOrDefault().category_name;
                r.price = x.FirstOrDefault().price;
                r.sale = x.FirstOrDefault().sale;
                r.discount = x.FirstOrDefault().discount;
                r.stock = x.FirstOrDefault().stock;
                r.isnew = x.FirstOrDefault().isnew;
                r.tags = x.FirstOrDefault().tags;
                x.ToList().ForEach(b =>
                        {
                            var detail = new pvm.Images(1);

                            detail.src = b.image_src;

                            r.images.Add(detail);

                        }

                      );
                res.Add(r);
            });
            return plist;
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