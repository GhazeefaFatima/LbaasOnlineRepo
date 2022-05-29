using Api.Application.Dto.Product;
using Api.Application.Interface;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class LookupValueController : ControllerBase
    {
        private readonly ILookupValueService _service;
        public LookupValueController(ILookupValueService service)
        {
            _service = service;
        }
        // GET: api/<LookupValueController>
        [HttpGet]
        public IActionResult Get()
        {
            return Ok(_service.GetAll());
        }

        // GET api/<LookupValueController>/5
        [HttpGet("{id}")]
        public IActionResult Get(int id)
        {
            return Ok(_service.GetByCat(id));
        }
        
        //[HttpGet("{id}")]
        //public string GetByCat()
        //{
        //    //return Ok(_service.GetByCat(id));
        //    return "";
        //}

        // POST api/<LookupValueController>
        [HttpPost]
        //public void Post([FromBody] string value)
        public IActionResult Post(Lookup_Value value)
        {
        
           return Ok( _service.Create(value));
           // return Json(new { returnValue, success = true });
        }

        // PUT api/<LookupValueController>/5
        [HttpPut("{id}")]
        public IActionResult Put(Lookup_Value value)
        {
            return Ok(_service.Update(value));
        }

        // DELETE api/<LookupValueController>/5
        [HttpDelete("{id}")]
        public IActionResult Delete(int id)
        {
            return Ok(_service.Delete(id));
        }
    }
}
