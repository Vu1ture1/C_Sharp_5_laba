
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _253503Kupreichyk.Application.OrderUseCases.Commands
{

    public sealed record UpdateOrderCommand(Order ord)
                               : IRequest<Order>
    { }

    public class UpdateOrderCommandHandler : IRequestHandler<UpdateOrderCommand, Order>
    {
        private readonly IUnitOfWork _unitOfWork;

        public UpdateOrderCommandHandler(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }

        public async Task<Order> Handle(UpdateOrderCommand request, CancellationToken cancellationToken)
        {

            await _unitOfWork.OrderRepository.UpdateAsync(request.ord);
            await _unitOfWork.SaveAllAsync();
            return request.ord;
        }
    }
}




