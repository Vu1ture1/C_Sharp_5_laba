using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _253503Kupreichyk.Application.OrderUseCases.Queries
{
    public sealed record GetOrdersByGroupQuery(int Id)
                                : IRequest<IEnumerable<Order>>
    { }

    public class GetOrdersByGroupQueryHandler :
        IRequestHandler<GetOrdersByGroupQuery, IEnumerable<Order>>
    {

        private readonly IUnitOfWork _unitOfWork;

        public GetOrdersByGroupQueryHandler(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }
        public async Task<IEnumerable<Order>> Handle(
        GetOrdersByGroupQuery request,
        CancellationToken cancellationToken)
        {
            return await _unitOfWork.OrderRepository
            .ListAsync((order) => order.PizzeriaPosId == request.Id,
           cancellationToken);
        }
    }
}
