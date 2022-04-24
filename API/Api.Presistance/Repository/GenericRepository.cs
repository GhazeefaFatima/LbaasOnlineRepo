using Api.Application.Presistance;
using Api.Domain;
using Api.Presistance;
using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Threading.Tasks;

namespace Api.Presistence.Repository
{
    public class GenericRepository<T> : IGenericRepository<T> where T : class
    {
        //public readonly IConnectionString _conn;
        //public GenericRepository(IConnectionString conn)
        //{
        //    _conn = conn;
        //}
        public Task<T> Add(T entity)
        {
            throw new NotImplementedException();
        }

        public Task Delete(T entity)
        {
            throw new NotImplementedException();
        }

        public Task<bool> Exists(int id)
        {
            throw new NotImplementedException();
        }

        public async Task<T> Get(string tablename, long id)
        {
          
            using (IDbConnection cnn = new SqlConnection(ConnectionString.GetConnectionString()))
            {
                var p = new DynamicParameters();
                p.Add("@Id", id);
                string sql = $"select * from {tablename} where Id = {id}";
                var data = cnn.QueryFirstOrDefaultAsync<T>(sql, p);
                return data.Result;

            }
        }

        public async Task<IEnumerable<T>> GetAll(string tablename)
        {
            using (IDbConnection cnn = new SqlConnection(ConnectionString.GetConnectionString()))
            {
                string sql = $"select * from {tablename}";
                var dataList = cnn.QueryAsync<T>(sql);
                return  dataList.Result;
            }
        }

        public Task Update(T entity)
        {
            throw new NotImplementedException();
        }

      
    }
}
