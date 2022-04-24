using Api.Presistance;
using Api.Presistance.Repository;
using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace Api.Presistence.Repository
{
    public class BaseRepository<T> : IBaseRepository<T> where T : class
    {
        public readonly IConnectionString _conn;
        public BaseRepository(IConnectionString conn)
        {
            _conn = conn;
        }
        public int Execute(string sql, object parameters = null)
        {
            using (var connection = CreateConnection())
            {
                return connection.Execute(sql, parameters);
            }
        }

        public List<T> Query<T>(string sql, object parameters = null)
        {
            using (var connection = CreateConnection())
            {
                return connection.Query<T>(sql, parameters).ToList();
            }
        }
        public T QueryFirstOrDefault<T>(string sql, object parameters = null)
        {
                using (var connection = CreateConnection())
                {
                    return connection.QueryFirstOrDefault<T>(sql, parameters);
                }
        }
        private IDbConnection CreateConnection()
        {
            var connection = new SqlConnection(_conn.GetConnectionString());
            // Properly initialize your connection here.
            return connection;
        }

    }
}
