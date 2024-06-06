//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Text;
//using System.Threading.Tasks;

//namespace _253503_Kupreichyk.Domain.Abstractions
//{
//    internal interface IUnitOfWork
//    {
//    }
//}


using _253503Kupreichyk.Domain.Entities;

namespace _253503Kupreichyk.Domain.Abstractions
{
    public interface IUnitOfWork
    {
        IRepository<PizzeriaPos> PizzeriaPosRepository { get; }
        IRepository<Order> OrderRepository { get; }
        public Task RemoveDatabaseAsync();
        public Task CreateDatabaseAsync();
        public Task SaveAllAsync();
    }
}
