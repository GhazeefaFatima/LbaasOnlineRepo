using Api.Application.Presistance;
using Api.Domain;
using System;
using System.Collections.Generic;
using System.Text;

namespace Api.Presistence.Repository.Features
{
    public class ProductRepository : GenericRepository<Product>, IProductRepository
    {
    }
}
