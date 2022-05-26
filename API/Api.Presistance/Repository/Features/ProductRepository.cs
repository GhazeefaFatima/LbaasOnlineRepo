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

namespace Api.Presistence.Repository.Features
{
    public class ProductRepository : GenericRepository<Product>, IProductRepository
    {

        public List<ProductList> GetAllProducts()

        {

            var builder = new ConfigurationBuilder().SetBasePath(Directory.GetCurrentDirectory()).AddJsonFile("appsettings.json", optional: false);

            IConfiguration config = builder.Build();
            var connectionstring = config.GetValue<string>("ConnectionStrings:Local_Db");
            var storepro = "getAllProducts";

            using (var connection = new SqlConnection(connectionstring))
            {
                var product = connection.Query<ProductList>(storepro, commandType: CommandType.StoredProcedure);
                return product.AsList();
            }

        }





    }
}
