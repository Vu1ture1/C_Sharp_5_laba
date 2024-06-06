using _253503Kupreichyk.UI.ViewModels;

namespace _253503Kupreichyk.UI.Pages;

public partial class OrderDetails : ContentPage
{
    public OrderDetails(OrderDetailsViewModel viewModel)
    {
        InitializeComponent();
        BindingContext = viewModel;
    }
}