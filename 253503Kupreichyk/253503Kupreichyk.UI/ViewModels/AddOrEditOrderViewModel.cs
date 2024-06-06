
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using _253503Kupreichyk.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using _253503Kupreichyk.Application.OrderUseCases.Commands;
using MediatR;
//using _253503_Kupreichyk.Application.PizzeriaPosUseCases.Commands;

namespace _253503Kupreichyk.UI.ViewModels
{
    [QueryProperty(nameof(CurrentOrder), "Order")]
    [QueryProperty(nameof(Pizzeriapos), "PizzeriaPos")]
    [QueryProperty(nameof(Update), "Update")]
    public partial class AddOrEditOrderViewModel : ObservableObject
    {
        private readonly IMediator _mediator;

        public AddOrEditOrderViewModel(IMediator mediator)
        {
            _mediator = mediator;
        }

        [ObservableProperty]
        PizzeriaPos pizzeriapos;


        [ObservableProperty]
        bool update = false;

        [ObservableProperty]
        public Order currentOrder = new();

        [ObservableProperty]
        FileResult image;

        [RelayCommand]
        public async void AddPower() => await AddPowerAndGoBack();

        private async Task AddPowerAndGoBack()
        {
            if (CurrentOrder.Name == null || CurrentOrder.Name == string.Empty ||
                CurrentOrder.Description is null || CurrentOrder.Description == string.Empty ||
                CurrentOrder.TimeToComplite < 0)
            {
                return;
            }
            
            CurrentOrder.Pizzeriapos = Pizzeriapos;

            if (Update)
            {
                await _mediator.Send(new UpdateOrderCommand(CurrentOrder));
            }
            else
            {
                await _mediator.Send(new AddOrderCommand(CurrentOrder));
            }

            if (Image != null)
            {
                using var stream = await Image.OpenReadAsync();
                var image = ImageSource.FromStream(() => stream);

                string filename = Path.Combine(Preferences.Default.Get<string>("LocalData", null), "Images", $"{CurrentOrder.Id}.png");
                //Directory.CreateDirectory(Path.Combine(Preferences.Default.Get<string>("LocalData", null), "Images"));
                var path = FileSystem.Current.AppDataDirectory;
                using var fileStream = File.Create(filename);
                stream.CopyTo(fileStream);
            }

            await Shell.Current.GoToAsync("../..");
        }

        [RelayCommand]
        public async void AddImage() => await PickImage();
        public async Task PickImage()
        {
            var customFileType = new FilePickerFileType(
                new Dictionary<DevicePlatform, IEnumerable<string>>
                {
                    { DevicePlatform.Android, new[] { ".png" } },
                    { DevicePlatform.WinUI, new[] { ".png" } },
                });

            PickOptions options = new()
            {
                PickerTitle = "Please select a png image",
                FileTypes = customFileType,
            };

            try
            {
                var result = await FilePicker.Default.PickAsync(options);
                if (result != null)
                {
                    if (result.FileName.EndsWith("png", StringComparison.OrdinalIgnoreCase))
                    {
                        Image = result;
                    }
                }
            }
            catch (Exception ex)
            {
                return;
            }

            return;
        }
    }
}
