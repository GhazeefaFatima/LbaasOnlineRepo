using Api.Applicatio.Common;
using Api.Application.Dto.Product;
using Api.Application.Presistance;
using Api.Presistence;
using Api.Presistence.Repository;
using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Threading.Tasks;

namespace Api.Presistance.Repository.Features
{
    public class LookupRepository : GenericRepository<Lookup_Value>, ILookupValueRepository
    {
        public override async Task<ViewResponseModal<Lookup_Value>> Add(Lookup_Value entity)
        {
            var response = new ViewResponseModal<Lookup_Value>(entity);

            try
            {
                using (IDbConnection connection = new SqlConnection(ConnectionString.GetConnectionString()))
                {

                    var sql = string.Empty;
                    if (entity.header_id != null)
                    {

                         sql = "insert into dbo.lookup_value (lookup_table, description,header_id,is_deleted,created_by,created_date)";
                        sql += $"Values ('{entity.lookup_table}', '{entity.description}', '{entity.header_id}', '{entity.is_deleted}','{entity.created_by}','{entity.created_date}');";

                    }
                    else
                    {
                        sql = "insert into dbo.lookup_value (lookup_table, description,is_deleted,created_by,created_date)";
                        sql += $"Values ('{entity.lookup_table}', '{entity.description}', '{entity.is_deleted}','{entity.created_by}','{entity.created_date}');";

                    }
                    var result = await connection.ExecuteAsync(sql).ConfigureAwait(false);
                    response.Status = RecordStatus.SUCCESS;

            
                }
            }
            catch (Exception ex)
            {
                response.Status = RecordStatus.UNKNOWN;
                response.Message = ex.Message;
            }

            return response;

                
            //  // total =  connection.ExecuteAsync(sql, p);
            //    var result = await connection.ExecuteAsync(sql,p).ConfigureAwait(false);
            //    response.Status = RecordStatus.SUCCESS;

            //}
            //return total;

        }

        public override async Task<ViewResponseModal<Lookup_Value>> Update(Lookup_Value entity)
        {
            var response = new ViewResponseModal<Lookup_Value>(entity);
            try
            {
                using (IDbConnection connection = new SqlConnection(ConnectionString.GetConnectionString()))
                {
                    var sql = string.Empty;
                    if(entity.header_id!= null)
                    {
                      sql = $"UPDATE lookup_value SET lookup_table='{entity.lookup_table}', description='{entity.description}', header_id='{entity.header_id}', updated_date='{entity.updated_date}', is_deleted='{entity.is_deleted}'";
                    }
                    else
                    {
                        sql = $"UPDATE lookup_value SET  lookup_table='{entity.lookup_table}', description='{entity.description}',  updated_date='{entity.updated_date}', is_deleted='{entity.is_deleted}'";

                    }
                    sql += $" WHERE id={entity.id};";
                    var result = await connection.ExecuteAsync(sql).ConfigureAwait(false);
                    response.Status = RecordStatus.SUCCESS;
                }
            }
            catch (Exception ex)
            {
                response.Status = RecordStatus.UNKNOWN;
                response.Message = ex.Message;
            }

            return response;
        }

        public async Task<IEnumerable<Lookup_Value>> GetByCat( int catid)

        {

            using (IDbConnection cnn = new SqlConnection(ConnectionString.GetConnectionString()))
            {
                var p = new DynamicParameters();
              
                string sql = $"select * from lookup_value  where  lookup_table = {catid}";
                var data = await cnn.QueryAsync<Lookup_Value>(sql, p);
                return data;

            }
        }
    }
}
