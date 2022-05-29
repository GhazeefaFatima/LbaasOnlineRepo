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


        public List<pvm.ProductHeader> GetAllProducts()
        {

            IEnumerable<ProductList> plist = _repo.GetAllProducts().Result;
            List<pvm.ProductHeader> res = new List<pvm.ProductHeader>();
            var gb = plist.GroupBy(x => new { id= x.product_id}). ToList().Select(x=>x);
            var pimg = plist.GroupBy(x => new { id = x.product_id, src = x.image_src , img_id = x.image_id, alt=x.alt }) .Select(g => new
            {
                id = g.Key.id,
                src = g.Key.src,
                image_id = g.Key.img_id,
                alt=g.Key.alt,
            }).ToList();
            var pvar = plist.GroupBy(x => new { id = x.product_id, var_id = x.variant_id, size = x.size_name, color = x.color_name , img_id=x.var_img_id}).Select(g => new
            {
                id = g.Key.id,
                var_id = g.Key.var_id,
                size = g.Key.size,
                color = g.Key.color,
                img_id = g.Key.img_id,
                sku = g.Key.img_id,
            }).ToList();


            gb.ToList().ForEach(x =>
            {
                var r = new pvm.ProductHeader();
                r.id = x.FirstOrDefault().product_id;
                r.title = x.FirstOrDefault().product_name;
                r.description = x.FirstOrDefault().description;
                r.type = x.FirstOrDefault().type;
                r.brand = x.FirstOrDefault().subcategory_name;
                r.collection = x.FirstOrDefault().collection_name;
                //r.collection[0]=
                //r.category[0] = x.FirstOrDefault().category_name;
                r.price = x.FirstOrDefault().price;
                r.sale = x.FirstOrDefault().sale;
                r.discount = x.FirstOrDefault().discount;
                r.stock = x.FirstOrDefault().stock;
                r.isnew = x.FirstOrDefault().isnew;
                r.tags = x.FirstOrDefault().tags;

                pimg.Where(y => y.id == r.id).ToList()
                             .ForEach(i =>
                        {
                            var detail = new pvm.Images();

                            detail.src = i.src;
                            detail.id = i.id;
                            detail.image_id = i.image_id;
                            detail.alt = i.alt;

                            r.images.Add(detail);

                        }

                      );
                pvar.Where(y => y.id == r.id).ToList()
                            .ForEach(i =>
                            {
                                var detail = new pvm.Variants();     
                                detail.variant_id = i.var_id;
                                detail.id = i.id;
                                detail.sku = "sku";
                                detail.color = i.color;
                                detail.size = i.size;
                                detail.image_id = i.img_id;

                                r.variants.Add(detail);

                            }

                     );
                res.Add(r);
            });
            return res;
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