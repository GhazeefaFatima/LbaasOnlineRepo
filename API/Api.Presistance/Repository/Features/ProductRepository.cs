using Api.Application.Dto.Product;
using Api.Application.Presistance;
using Api.Domain;
using Dapper;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Text;
using System.Threading.Tasks;

namespace Api.Presistence.Repository.Features
{
    public class ProductRepository : GenericRepository<Product>, IProductRepository
    {

        public async Task<IEnumerable<ProductList>> GetAllProducts( )

        {

            using (IDbConnection cnn = new SqlConnection(ConnectionString.GetConnectionString()))
            {
               // cnn.Execute("dbo.spPerson_InsertSet", p, commandType: CommandType.StoredProcedure);
                //string sql = $"select * from vw_productdetail  where  is_main_page={is_main_page} and is_new_product= {is_new_product} and  is_best_selling={is_best_selling} " +
                //    $"and is_featured_product={is_featured_product} and is_on_sale={is_on_sale}";     
                string sql = $"EXEC [dbo].[usp_GetAllProducts]";
                var data = await cnn.QueryAsync<ProductList>(sql); 
                return data;

            }

            
        }





    }
}
