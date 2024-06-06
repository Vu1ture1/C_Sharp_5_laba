using _253503Kupreichyk.UI.Pages;

namespace _253503Kupreichyk.UI;

public partial class AppShell : Shell
{
    public AppShell()
    {
        InitializeComponent();

        Routing.RegisterRoute("OrderDetails", typeof(OrderDetails));
        Routing.RegisterRoute("AddOrEditPizzeriaPoses", typeof(AddOrEditPizzeriaPosess));
        Routing.RegisterRoute("AddOrEditOrder", typeof(AddOrEditOrder));
    }
}