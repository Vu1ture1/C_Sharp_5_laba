
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using _253503Kupreichyk.Application.OrderUseCases.Queries;
using _253503Kupreichyk.Application.OrderUseCases.Commands;
using _253503Kupreichyk.Application.PizzeriaPosUseCases.Commands;
using _253503Kupreichyk.Application.PizzeriaPosUseCases.Queries;
using _253503Kupreichyk.UI.Pages;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using _253503Kupreichyk.Domain.Entities;
using MediatR;

namespace _253503Kupreichyk.UI.ViewModels
{
    public partial class PizzeriaPosesViewModel : ObservableObject
    {
        private readonly IMediator _mediator;

        public PizzeriaPosesViewModel(IMediator mediator)
        {
            _mediator = mediator;
        }


        public ObservableCollection<PizzeriaPos> PizzeriaPoses { get; set; } = new();

        [ObservableProperty]
        public ObservableCollection<Order> _orders = new();


        [ObservableProperty]
        PizzeriaPos selectedPizzeriaPoses;

        [RelayCommand]
        async void UpdatePizzaList() => await GetPizzeriaPoses();

        [RelayCommand]
        async void UpdateOrdersList() => await GetOrders();

        public async Task GetPizzeriaPoses()
        {
            var poses = await _mediator.Send(new GetAllPizzeriaPosQuery());

            await MainThread.InvokeOnMainThreadAsync(() =>
            {
                PizzeriaPoses.Clear();

                foreach (var pos in poses)
                {
                    PizzeriaPoses.Add(pos);
                }

                Orders = new();
            });

        }

        public async Task GetOrders()
        {

            if (SelectedPizzeriaPoses is null)
            {
                return;
            }

            var orders = await _mediator.Send(new GetOrdersByGroupQuery(SelectedPizzeriaPoses.Id));

            await MainThread.InvokeOnMainThreadAsync(() =>
            {
                Orders = new();

                foreach (var ord in orders)
                {
                    Orders.Add(ord);
                }

                OnPropertyChanged(nameof(Orders));
            });
        }

        [RelayCommand]
        async void ShowDetails(Order ord) => await GotoDetailsPage(ord);

        private async Task GotoDetailsPage(Order ord)
        {
            IDictionary<string, object> parameters = new Dictionary<string, object>()
            {
                { "Order", ord }
            };
            await Shell.Current.GoToAsync(nameof(OrderDetails), parameters);
        }

        [RelayCommand]
        async void AddPizzeriaPos() => await GotoAddPizzeriaPosPage();

        private async Task GotoAddPizzeriaPosPage()
        {
            await Shell.Current.GoToAsync("AddOrEditPizzeriaPoses");
        }

        [RelayCommand]
        async void AddOrder() => await GotoAddOrderPage();

        private async Task GotoAddOrderPage()
        {
            if (SelectedPizzeriaPoses is null) { return; }
            IDictionary<string, object> parameters = new Dictionary<string, object>()
            {
                { "PizzeriaPos", SelectedPizzeriaPoses }
            };
            await Shell.Current.GoToAsync(nameof(AddOrEditOrder), parameters);
        }


    }
}