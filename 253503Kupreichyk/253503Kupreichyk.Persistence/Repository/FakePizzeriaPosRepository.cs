using _253503Kupreichyk.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;
using _253503Kupreichyk.Domain.Abstractions;


namespace _253503Kupreichyk.Persistense.Repository
{
    public class FakePizzeriaPosRepository : IRepository<PizzeriaPos>
    {
        List<PizzeriaPos> _pizzeriaposes;
        public FakePizzeriaPosRepository()
        {
            _pizzeriaposes = new List<PizzeriaPos>()
            {
                new PizzeriaPos() { Id=1, Name="Peperonni", CreateDate= DateTime.Now, Orders=new List<Order>()},
                new PizzeriaPos() { Id=2, Name="Margarita", CreateDate= DateTime.Now, Orders=new List<Order>()}
            };
        }

        public Task AddAsync(PizzeriaPos entity, CancellationToken cancellationToken = default)
        {
            throw new NotImplementedException();
        }

        public Task DeleteAsync(PizzeriaPos entity, CancellationToken cancellationToken = default)
        {
            throw new NotImplementedException();
        }

        public Task<PizzeriaPos> FirstOrDefaultAsync(Expression<Func<PizzeriaPos, bool>> filter, CancellationToken cancellationToken = default)
        {
            throw new NotImplementedException();
        }

        public Task<PizzeriaPos> GetByIdAsync(int id, CancellationToken cancellationToken = default, params Expression<Func<PizzeriaPos, object>>[]? includesProperties)
        {
            throw new NotImplementedException();
        }

        public async Task<IReadOnlyList<PizzeriaPos>> ListAllAsync(CancellationToken cancellationToken = default)
        {
            return await Task.Run(() => _pizzeriaposes);
        }

        public Task<IReadOnlyList<PizzeriaPos>> ListAsync(Expression<Func<PizzeriaPos, bool>> filter, CancellationToken cancellationToken = default, params Expression<Func<PizzeriaPos, object>>[]? includesProperties)
        {
            throw new NotImplementedException();
        }

        public Task UpdateAsync(PizzeriaPos entity, CancellationToken cancellationToken = default)
        {
            throw new NotImplementedException();
        }
    }
}
