using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using _253503Kupreichyk.UI.Pages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;
using static Microsoft.EntityFrameworkCore.DbLoggerCategory;
using _253503Kupreichyk.Application.PizzeriaPosUseCases.Commands;
using _253503Kupreichyk.Domain.Entities;
using MediatR;


namespace _253503Kupreichyk.UI.ViewModels
{

    public partial class AddOrEditPizzeriaPosViewModel : ObservableObject
    {
        private readonly IMediator _mediator;

        public AddOrEditPizzeriaPosViewModel(IMediator mediator)
        {
            creationdate = DateTime.Now;

            _mediator = mediator;
        }

        [ObservableProperty]
        public string name;


        [ObservableProperty]
        public DateTime creationdate;

        [RelayCommand]
        async void AddPizzeriaPos() => await AddPizzeriaPosAndGoBack();

        private async Task AddPizzeriaPosAndGoBack()
        {
            if (Name is null || Name == string.Empty)
            {
                return;
            }

            await _mediator.Send(new AddPizzeriaPosCommand(new PizzeriaPos() { Name = Name, CreateDate = creationdate }));
            await Shell.Current.GoToAsync("..");
        }
    }
}
