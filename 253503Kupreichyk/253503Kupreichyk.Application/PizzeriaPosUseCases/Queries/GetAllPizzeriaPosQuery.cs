
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _253503Kupreichyk.Application.PizzeriaPosUseCases.Queries
{
    public sealed record GetAllPizzeriaPosQuery : IRequest<IEnumerable<PizzeriaPos>>
    {
    }


    public class GetAllPizzeriaPosQueryHandler :
        IRequestHandler<GetAllPizzeriaPosQuery, IEnumerable<PizzeriaPos>>
    {

        private readonly IUnitOfWork _unitOfWork;

        public GetAllPizzeriaPosQueryHandler(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }
        public async Task<IEnumerable<PizzeriaPos>> Handle(
        GetAllPizzeriaPosQuery request,
        CancellationToken cancellationToken)
        {

            return await _unitOfWork.PizzeriaPosRepository.ListAllAsync();
        }
    }
}