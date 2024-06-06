using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using _253503Kupreichyk.Domain.Abstractions;
using _253503Kupreichyk.Domain.Entities;
using _253503Kupreichyk.Persistense.Repository;

namespace _253503Kupreichyk.Persistense.Repository
{
    public class FakeUnitOfWork : IUnitOfWork
    {
        private readonly FakePizzeriaPosRepository _PizzeriaPosRepository;
        private readonly FakeOrdersRepository _OrdersRepository;

        public FakeUnitOfWork()
        {
            _PizzeriaPosRepository = new FakePizzeriaPosRepository();
            _OrdersRepository = new FakeOrdersRepository();
        }

        public IRepository<PizzeriaPos> PizzeriaPosRepository => _PizzeriaPosRepository;

        public IRepository<Order> OrderRepository => _OrdersRepository;

        public Task CreateDatabaseAsync()
        {
            throw new NotImplementedException();
        }

        public Task RemoveDatabaseAsync()
        {
            throw new NotImplementedException();
        }

        public Task SaveAllAsync()
        {
            throw new NotImplementedException();
        }
    }
}
