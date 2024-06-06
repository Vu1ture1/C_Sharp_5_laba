using _253503Kupreichyk.UI.ViewModels;

namespace _253503Kupreichyk.UI.Pages;

public partial class AddOrEditPizzeriaPosess : ContentPage
{
    public AddOrEditPizzeriaPosess(AddOrEditPizzeriaPosViewModel viewModel)
    {
        InitializeComponent();
        BindingContext = viewModel;
    }
}