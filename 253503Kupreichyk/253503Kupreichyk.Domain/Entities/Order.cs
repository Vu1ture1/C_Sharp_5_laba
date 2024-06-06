//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Text;
//using System.Threading.Tasks;

//namespace _253503_Kupreichyk.Domain.Entities
//{
//    internal class Order
//    {
//    }
//}

using static System.Runtime.InteropServices.JavaScript.JSType;

namespace _253503Kupreichyk.Domain.Entities
{
    public class Order : Entity
    {
        public string Name { get; set; }
        public double TimeToComplite { get; set; }
        public int? OrderId { get; private set; }
        public string Description { get; set; }
        public int PizzeriaPosId { get; set; }
        public PizzeriaPos? Pizzeriapos { get; set; }

        public void AddToPizzeriaPos(int pizzeriaposId)
        {
            if (pizzeriaposId <= 0) return;
            PizzeriaPosId = pizzeriaposId;
        }

        public void LeavePizzeriaPos()
        {
            PizzeriaPosId = 0;
        }

        public void ChangeOrderTime(double time)
        {
            if (time < 0) return;
            TimeToComplite = time;
        }
    }
}

