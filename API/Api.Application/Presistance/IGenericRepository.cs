using Api.Applicatio.Common;
using System;
using System.Collections.Generic;
using System.Data;
using System.Threading.Tasks;

namespace Api.Application.Presistance
{
    public interface IGenericRepository<T> where T : class
    {
        Task<T> Get(string tablename, long id);
        Task<IEnumerable<T>> GetAll(string tablename);
        Task<ViewResponseModal<T>> Add(T entity);
        Task<bool> Exists(int id);
        Task< ViewResponseModal<T>> Update(T entity);
        Task<bool> Delete(int id, string tablename);
    }
}
