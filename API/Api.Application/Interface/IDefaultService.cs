using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Api.Application.Interface
{
    public interface IDefaultService<T>
    {
        Task<T> Create(T o);
        Task<T> Update(T o);
        Task<T> Delete(T o);

        Task<List<T>> GetAll();

        Task<T> GetById(Int64 id);
        Task<List<T>> GetBetweenDateRange(DateTime start, DateTime end);
    }
}
