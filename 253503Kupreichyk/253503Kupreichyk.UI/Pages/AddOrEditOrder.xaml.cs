using _253503Kupreichyk.UI.ViewModels;
namespace _253503Kupreichyk.UI.Pages;

public partial class AddOrEditOrder : ContentPage
{
    public AddOrEditOrder(AddOrEditOrderViewModel viewModel)
    {
        InitializeComponent();
        BindingContext = viewModel;
    }
}