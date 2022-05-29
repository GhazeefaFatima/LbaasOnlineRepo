﻿using Api.Application.Dto;
using Api.Application.Dto.Product;
using Api.Application.Interface;
using Api.Domain;
using Api.ViewModel;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductController : ControllerBase
    {
        private readonly IProductService _service;
        public ProductController(IProductService service)
        {
            _service = service;
        }
        [HttpGet]
        public List<ProductHeader> Get(int is_main_page, int is_new_product, int is_best_selling, int is_featured_product, int is_on_sale)
        {
            var rec= _service.GetAllProducts(is_main_page, is_new_product, is_best_selling, is_featured_product, is_on_sale);
            var res = new List<ProductHeader>();
        //    var gb = rec.GroupBy(x => x.product_id).ToList();
        //    gb.ToList().ForEach(x =>
        //    {

        //        var r = new ProductHeader();
        //        r.product_id = x.FirstOrDefault().product_id;
        //        r.category_name = x.FirstOrDefault().category_name;
        //        r.description = x.FirstOrDefault().description;
        //        r.product_name = x.FirstOrDefault().product_name;
        //        r.subcat_name = x.FirstOrDefault().subcat_name;
        //        r.size_name = x.FirstOrDefault().size_name;
        //        r.product_img = x.FirstOrDefault().product_img;
        //        r.is_main_page = x.FirstOrDefault().is_main_page;
        //        r.is_new_product = x.FirstOrDefault().is_new_product;
        //        r.is_best_selling = x.FirstOrDefault().is_best_selling;
        //        r.is_featured_product = x.FirstOrDefault().is_featured_product;
        //        r.is_on_sale = x.FirstOrDefault().is_on_sale;
        //        r.price = x.FirstOrDefault().price;
        //x.ToList().ForEach(b =>
        //        {
        //            var detail= new ProductDetail();

        //            detail.image_src = b.image_src;

        //            r.ProductDetail.Add(detail);

        //        }

        //        );
        //        res.Add(r);
        //    });
            return res;
        }
    }

}
