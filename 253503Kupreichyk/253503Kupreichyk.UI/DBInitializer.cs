using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Extensions.DependencyInjection;
using _253503Kupreichyk.Domain.Abstractions;
using _253503Kupreichyk.Domain.Entities;



namespace _253503Kupreichyk.UI
{
    public static class DBInitializer
    {
        public async static void Initialize(IServiceCollection services)
        {
            using var provider = services.BuildServiceProvider();
            var unitOfWork = provider.GetService<IUnitOfWork>();


            await unitOfWork.RemoveDatabaseAsync();
            await unitOfWork.CreateDatabaseAsync();

            IReadOnlyList<PizzeriaPos> PizzeriaPoses = new List<PizzeriaPos>()
            {
                new PizzeriaPos() { Name = "Пепронни", CreateDate = DateTime.Now},
                new PizzeriaPos() { Name = "Маргарита", CreateDate= new DateTime(2024, 6, 3)}
            };

            foreach (PizzeriaPos pos in PizzeriaPoses)
                await unitOfWork.PizzeriaPosRepository.AddAsync(pos);
            await unitOfWork.SaveAllAsync();

            int k = 1;

            string[] maleNames = {
            "John", "Sarah", "James", "Jessica", "George",
            "Joseph", "Edward", "Frank", "Henry", "Robert",
            "Thomas", "Margaret", "David", "Richard", "Dorothy",
            "Mary", "Patricia", "Jennifer", "Linda", "Elizabeth",
            "Barbara"
            };

            foreach (PizzeriaPos pos in PizzeriaPoses)
            {
                for (int j = 0; j < 10; j++, k++)
                {
                    await unitOfWork.OrderRepository.AddAsync(new Order()
                    {
                        Pizzeriapos = pos,
                        Id = k,
                        Name = $"Заказ под именем {maleNames[k - 1]}",
                        TimeToComplite = (j + 2),
                        Description = $"Цена заказа {System.Math.Round(k * 0.6, 2)}$",
                    });
                }
            }
            
            await unitOfWork.SaveAllAsync();
        }
    }
}

