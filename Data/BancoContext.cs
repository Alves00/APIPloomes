using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using testPloomes.Models;

namespace testPloomes.Data
{
    public class BancoContext : DbContext
    {
        public BancoContext (DbContextOptions<BancoContext> options)
            : base(options)
        {
        }

        public DbSet<testPloomes.Models.Produto> Produto { get; set; }
    }
}
