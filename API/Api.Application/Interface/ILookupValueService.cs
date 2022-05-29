using Api.Application.Dto.Product;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Api.Application.Interface
{
    public interface ILookupValueService : IDefaultService<Lookup_Value>
    {
        Task<IEnumerable<Lookup_Value>> GetByCat(int catid);
    }
}

