using Api.Application.Dto;
using Api.Application.Presistance;
using Api.Presistence.Repository;
using System;
using System.Collections.Generic;
using System.Text;

namespace Api.Presistance.Repository.Features
{
    public class CategoryRepository : GenericRepository<Category>, ICategoryRepository
    {
    }
}
