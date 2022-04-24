using Api.Presistance;
using Microsoft.Extensions.Configuration;
//using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Text;

namespace Api.Presistence
{
   public class ConnectionString
    {

        public static string GetConnectionString()

        {

            var builder = new ConfigurationBuilder().SetBasePath(Directory.GetCurrentDirectory()).AddJsonFile("appsettings.json", optional: false);

            IConfiguration config = builder.Build();

            var a = config.GetValue<string>("ConnectionStrings:Local_Db");
            return a;

        }

        //private readonly IConfiguration _configuration;

        //public ConnectionString(IConfiguration configuration)
        //{
        //    _configuration = configuration;


        //}

        //public sealed class DBStringConsts
        //{
        //    public const string AppDb_Conn_Doc = "ConnectionStrings:Local_Db";
        //    //public const string AppDb_Conn_Doc = "Local_Db";
        //    //public const string AppDb_Conn_Doc = "Local_Db";
        //}


        //public  string GetConnectionString()
        //{
        //    //_configuration.GetValue<string>("Modules:Logging:logDb");
        //    var builder = new ConfigurationBuilder();
        //     var configuration = builder.Build();
        //      var a  = configuration["Local_Db"];
        //    var fgg = _configuration["ConnectionStrings:Local_Db"];
        //    return "";
        //  //  return ConfigurationManager.ConnectionStrings["Local_Db"].ConnectionString;
        //}

    
    }
}
