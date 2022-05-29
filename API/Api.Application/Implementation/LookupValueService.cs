using Api.Applicatio.Common;
using Api.Application.Dto;
using Api.Application.Dto.Product;
using Api.Application.Interface;
using Api.Application.Presistance;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Api.Application.Implementation
{
   public class LookupValueService:ILookupValueService
    {
        private ILookupValueRepository _repo;
        public string entityname = EntityName.LookupValue;
        public LookupValueService(ILookupValueRepository repo)
        {
            _repo = repo;
        }
        public async Task<ViewResponseModal<Lookup_Value>> Create(Lookup_Value o)
        {
            return await _repo.Add(o)
            .ConfigureAwait(false);
        }

        public async Task<bool> Delete(int o)
        {
            try
            {

            return  await _repo.Delete(o, entityname).ConfigureAwait(false); ;

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public async Task<IEnumerable<Lookup_Value>> GetAll()
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

        public async Task<List<Lookup_Value>> GetBetweenDateRange(DateTime start, DateTime end)
        {
            throw new NotImplementedException();
        }

        public async Task<Lookup_Value> GetById(long id)
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

        public async Task<ViewResponseModal<Lookup_Value>> Update(Lookup_Value o)
        {
            try
            {
              return  await _repo.Update(o).ConfigureAwait(false); 
                 
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public async Task<IEnumerable<Lookup_Value>> GetByCat(int catid)
        {
            try
            {
                return await _repo.GetByCat(catid);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}
