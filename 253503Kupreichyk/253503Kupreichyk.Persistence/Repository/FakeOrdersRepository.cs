using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;
using _253503Kupreichyk.Domain.Abstractions;
using _253503Kupreichyk.Domain.Entities;

namespace _253503Kupreichyk.Persistense.Repository
{
    public class FakeOrdersRepository : IRepository<Order>
    {
        List<Order> _list = new List<Order>();
        public FakeOrdersRepository()
        {
            Random rand = new Random();
            int k = 1;
            for (int i = 1; i <= 2; ++i)
            {
                for (int j = 0; j < 10; ++j)
                {
                    _list.Add(new Order
                    {
                        Id = k,
                        Name = $"Заказ номер {k++}",
                        Description = $"Пицца - под id = {k}",
                        PizzeriaPosId = i,
                        TimeToComplite = i * 100
                    });
                }
            }
        }

        public Task AddAsync(Order entity, CancellationToken cancellationToken = default)
        {
            throw new NotImplementedException();
        }

        public Task DeleteAsync(Order entity, CancellationToken cancellationToken = default)
        {
            throw new NotImplementedException();
        }

        public Task<Order> FirstOrDefaultAsync(Expression<Func<Order, bool>> filter, CancellationToken cancellationToken = default)
        {
            throw new NotImplementedException();
        }

        public Task<Order> GetByIdAsync(int id, CancellationToken cancellationToken = default, params Expression<Func<Order, object>>[]? includesProperties)
        {
            throw new NotImplementedException();
        }

        public Task<IReadOnlyList<Order>> ListAllAsync(CancellationToken cancellationToken = default)
        {
            throw new NotImplementedException();
        }

        public async Task<IReadOnlyList<Order>> ListAsync(Expression<Func<Order, bool>> filter, CancellationToken
            cancellationToken = default, params Expression<Func<Order, object>>[]? includesProperties)
        {
            var data = _list.AsQueryable();
            return data.Where(filter).ToList();
        }

        public Task UpdateAsync(Order entity, CancellationToken cancellationToken = default)
        {
            throw new NotImplementedException();
        }
    }
}
