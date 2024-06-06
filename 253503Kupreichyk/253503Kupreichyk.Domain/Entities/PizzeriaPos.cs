namespace _253503Kupreichyk.Domain.Entities
{
    public class PizzeriaPos : Entity
    {
        public string? Name { get; set; }
        public DateTime CreateDate { get; set; }
        public ICollection<Order>? Orders { get; set; }

    }
}
