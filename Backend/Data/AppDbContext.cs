using Microsoft.EntityFrameworkCore;
using Backend.Models;

namespace Backend.Data
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options) { }

        // Define DbSets for your tables
        public DbSet<ServerPart> ServerParts { get; set; }
    }
}
