using _253503Kupreichyk.Domain.Entities;
using _253503Kupreichyk.Persistense.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using _253503Kupreichyk.Domain.Abstractions;

namespace _253503Kupreichyk.Persistense.Repository
{
    public class EfUnitOfWork : IUnitOfWork
    {
        private readonly AppDbContext _context;
        private readonly Lazy<IRepository<PizzeriaPos>> _PizzeriaPosRepository;
        private readonly Lazy<IRepository<Order>> _OrderRepository;

        public EfUnitOfWork(AppDbContext context)
        {
            _context = context;
            _PizzeriaPosRepository = new(() => new EfRepository<PizzeriaPos>(context));
            _OrderRepository = new(() => new EfRepository<Order>(context));

        }

        public IRepository<PizzeriaPos> PizzeriaPosRepository => _PizzeriaPosRepository.Value;

        public IRepository<Order> OrderRepository => _OrderRepository.Value;

        public async Task CreateDatabaseAsync()
        {
            await _context.Database.EnsureCreatedAsync();
        }

        public async Task RemoveDatabaseAsync()
        {
            await _context.Database.EnsureDeletedAsync();
        }

        public async Task SaveAllAsync()
        {
            await _context.SaveChangesAsync();
        }
    }
}
