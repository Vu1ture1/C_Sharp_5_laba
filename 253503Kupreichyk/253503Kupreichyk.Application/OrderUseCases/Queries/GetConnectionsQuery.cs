using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _253503Kupreichyk.Application.OrderUseCases.Queries
{
    public sealed record GetConnectionsQuery : IRequest<Unit>
    {
    }
    public class GetConnectionsQueryHandler : IRequestHandler<GetConnectionsQuery, Unit>
    {
        private readonly IUnitOfWork _unitOfWork;

        public GetConnectionsQueryHandler(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }

        public async Task<Unit> Handle(GetConnectionsQuery request, CancellationToken cancellationToken)
        {
            await _unitOfWork.OrderRepository.ListAllAsync();
            await _unitOfWork.PizzeriaPosRepository.ListAllAsync();

            // Здесь можно обрабатывать полученные данные, если это необходимо

            return Unit.Value;
        }
    }

}