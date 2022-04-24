using Api.Application.Dto;
using Api.Application.Interface;
using Api.Application.Presistance;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Api.Application.Implementation
{
    public class CategoryService : ICategoryService
    {
        private ICategoryRepository _repo;
        public string entityname = EntityName.Category;
        public CategoryService(ICategoryRepository repo)
        {
            _repo = repo;
        }
        public async Task<Category> Create(Category o)
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

        public async Task<Category> Delete(Category o)
        {
            try
            {
                o.is_deleted = true;
                await _repo.Update(o);
                return o;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public async Task<IEnumerable<Category>> GetAll()
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

        public async Task<List<Category>> GetBetweenDateRange(DateTime start, DateTime end)
        {
            throw new NotImplementedException();
        }

        public async Task<Category> GetById(long id)
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

        public async Task<Category> Update(Category o)
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
    }
}
