using System;
using System.Collections.Generic;
using System.Text;

namespace Api.Presistance.Repository
{
    public interface IBaseRepository<T> where T : class
    {
         T QueryFirstOrDefault<T>(string sql, object parameters = null);


        List<T> Query<T>(string sql, object parameters = null);


        int Execute(string sql, object parameters = null);
    
    }
}
