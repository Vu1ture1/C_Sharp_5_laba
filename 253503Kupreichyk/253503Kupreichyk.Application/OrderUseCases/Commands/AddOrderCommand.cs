using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _253503Kupreichyk.Application.OrderUseCases.Commands
{
    public sealed record AddOrderCommand(Order ord)
                               : IRequest<Order>
    { }

    public class AddOrderCommandHandler : IRequestHandler<AddOrderCommand, Order>
    {
        private readonly IUnitOfWork _unitOfWork;

        public AddOrderCommandHandler(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }

        public async Task<Order> Handle(AddOrderCommand request, CancellationToken cancellationToken)
        {

            await _unitOfWork.OrderRepository.AddAsync(request.ord);
            await _unitOfWork.SaveAllAsync();
            return request.ord;
        }
    }
}