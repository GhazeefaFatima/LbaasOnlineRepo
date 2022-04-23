using Api.Application.Dto;
using Api.Application.Interface;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Api.Application.Implementation
{
    public class CategoryService : ICategoryService
    {
        public Task<Category> Create(Category o)
        {
            throw new NotImplementedException();
        }

        public Task<Category> Delete(Category o)
        {
            throw new NotImplementedException();
        }

        public Task<List<Category>> GetAll()
        {
            throw new NotImplementedException();
        }

        public Task<List<Category>> GetBetweenDateRange(DateTime start, DateTime end)
        {
            throw new NotImplementedException();
        }

        public Task<Category> GetById(long id)
        {
            throw new NotImplementedException();
        }

        public Task<Category> Update(Category o)
        {
            throw new NotImplementedException();
        }
    }
}
