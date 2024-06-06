
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using _253503Kupreichyk.UI.Pages;
using SQLitePCL;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using _253503Kupreichyk.Application.OrderUseCases.Queries;
using _253503Kupreichyk.Application.OrderUseCases.Commands;
using _253503Kupreichyk.Application.PizzeriaPosUseCases.Commands;
using _253503Kupreichyk.Application.PizzeriaPosUseCases.Queries;
using _253503Kupreichyk.Domain.Entities;
using MediatR;

namespace _253503Kupreichyk.UI.ViewModels
{
    [QueryProperty(nameof(Order), "Order")]
    public partial class OrderDetailsViewModel : ObservableObject
    {
        private readonly IMediator _mediator;

        public OrderDetailsViewModel(IMediator mediator)
        {
            _mediator = mediator;
        }

        [ObservableProperty]
        Order order;

        [ObservableProperty]
        PizzeriaPos selectedPizzeriaPos;

        public ObservableCollection<PizzeriaPos> PizzeriaPoses { get; set; } = new();

        [RelayCommand]
        async void Edit() => await EditOrder();

        private async Task EditOrder()
        {
            IDictionary<string, object> parameters = new Dictionary<string, object>()
            {
                { "Order", Order },
                { "PizzeriaPos", Order.Pizzeriapos},
                { "Update", true }
            };

            await Shell.Current.GoToAsync(nameof(AddOrEditOrder), parameters);
        }

        [RelayCommand]
        async void Submit() => await ChangePizzeriaPos();

        private async Task ChangePizzeriaPos()
        {
            if (SelectedPizzeriaPos == null) return;

            Order.Pizzeriapos = SelectedPizzeriaPos;
            await _mediator.Send(new UpdateOrderCommand(Order));
            await Shell.Current.GoToAsync("..");
        }

        [RelayCommand]
        async void LoadPizzeriaPoses() => await GetPizzeriaPoses();

        private async Task GetPizzeriaPoses()
        {
            var poses = await _mediator.Send(new GetAllPizzeriaPosQuery());

            await MainThread.InvokeOnMainThreadAsync(() =>
            {
                PizzeriaPoses.Clear();
                foreach (var pos in poses)
                {
                    PizzeriaPoses.Add(pos);
                }
            });
        }
    }
}
