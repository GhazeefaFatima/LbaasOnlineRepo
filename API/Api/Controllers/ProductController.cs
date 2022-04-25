using Api.Application.Dto;
using Api.Application.Interface;
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
        private readonly ICategoryService _service;
        public ProductController(ICategoryService service)
        {
            _service = service;
        }
        [HttpGet]
        public Task<IEnumerable<Category>> Get()
        {
            return _service.GetAll();
        }
    }
}
