using Api.Applicatio.Common;
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
        public virtual Task<ViewResponseModal<T>> Add(T entity)
        {
            throw new NotImplementedException();
        }

        public virtual async Task<bool> Delete(int id, string tablename)
        {
           // var response = new ViewResponseModal<T>(entity);
            using (IDbConnection cnn = new SqlConnection(ConnectionString.GetConnectionString()))
            {
                var p = new DynamicParameters();
                p.Add("@Id", id);
                string sql = $"update  {tablename} set is_deleted=0 where Id = {id}";
                //var data = cnn.ExecuteAsync<T>(sql, p);
                var result = await cnn.ExecuteAsync(sql,p).ConfigureAwait(false);
              //  response.Status = RecordStatus.SUCCESS;
               

            }
            return true;
        }

        public  Task<bool> Exists(int id)
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
                var data = await cnn.QueryFirstOrDefaultAsync<T>(sql, p);
                return data;

            }
        }

        public async Task<IEnumerable<T>> GetAll(string tablename)
        {
            using (IDbConnection cnn = new SqlConnection(ConnectionString.GetConnectionString()))
            {
                string sql = $"select * from {tablename}";
                var dataList = await cnn.QueryAsync<T>(sql);
                return  dataList;
            }
        }


        public virtual Task<ViewResponseModal<T>> Update(T entity)
        {
            throw new NotImplementedException();
        }

      
    }
}
