using _253503Kupreichyk.UI.ViewModels;

namespace _253503Kupreichyk.UI.Pages;

public partial class Pizzeriaposes : ContentPage
{
    public Pizzeriaposes(PizzeriaPosesViewModel pizzeriaposesViewModel)
    {
        InitializeComponent();
        BindingContext = pizzeriaposesViewModel;
    }
}