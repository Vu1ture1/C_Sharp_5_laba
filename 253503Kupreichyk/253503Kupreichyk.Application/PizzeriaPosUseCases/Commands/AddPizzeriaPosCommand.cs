using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _253503Kupreichyk.Application.PizzeriaPosUseCases.Commands
{

    public sealed record AddPizzeriaPosCommand(PizzeriaPos pizzeriapos) : IRequest<PizzeriaPos>
    {
    }

    public class AddPizzeriaPosCommandHandler :
        IRequestHandler<AddPizzeriaPosCommand, PizzeriaPos>
    {

        private readonly IUnitOfWork _unitOfWork;

        public AddPizzeriaPosCommandHandler(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }
        public async Task<PizzeriaPos> Handle(
        AddPizzeriaPosCommand request,
        CancellationToken cancellationToken)
        {
            await _unitOfWork.PizzeriaPosRepository.AddAsync(request.pizzeriapos);
            await _unitOfWork.SaveAllAsync();
            return request.pizzeriapos;
        }
    }
}
