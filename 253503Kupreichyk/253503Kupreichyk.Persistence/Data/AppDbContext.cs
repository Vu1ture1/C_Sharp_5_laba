using _253503Kupreichyk.Domain.Entities;
using Microsoft.EntityFrameworkCore;
using System;
using System.Numerics;

namespace _253503Kupreichyk.Persistense.Data
{
    public class AppDbContext : DbContext
    {
        DbSet<PizzeriaPos> PizzeriaPoses { get; }
        DbSet<Order> Orders { get; }

        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options)
        {
            Database.EnsureCreated();
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {

            modelBuilder.Entity<PizzeriaPos>().HasKey(h => h.Id);
            modelBuilder.Entity<Order>().HasKey(p => p.Id);

            modelBuilder.Entity<Order>().HasOne(p => p.Pizzeriapos).WithMany(h => h.Orders).HasForeignKey(p => p.PizzeriaPosId);

            modelBuilder.Entity<PizzeriaPos>().Property(h => h.Id).ValueGeneratedOnAdd();
            modelBuilder.Entity<Order>().Property(p => p.Id).ValueGeneratedOnAdd();
        }
    }
}
