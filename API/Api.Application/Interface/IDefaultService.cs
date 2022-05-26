using Api.Applicatio.Common;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Api.Application.Interface
{
    public interface IDefaultService<T>
    {
        Task<ViewResponseModal<T>> Create(T o);
        Task<ViewResponseModal<T>> Update(T o);
        Task<bool> Delete(int o);

        Task<IEnumerable<T>> GetAll();

        Task<T> GetById(Int64 id);
        Task<List<T>> GetBetweenDateRange(DateTime start, DateTime end);
    }
}
