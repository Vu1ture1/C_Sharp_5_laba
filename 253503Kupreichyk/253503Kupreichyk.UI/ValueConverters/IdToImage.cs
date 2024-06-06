using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _253503Kupreichyk.UI.ValueConverters
{
    internal class IdToImage : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            string path = Preferences.Default.Get<string>("LocalData", null);
            string placeHolder = Path.Combine(path, "Resources", "Images", "unknown_image.png");
            if (path == null)
            {
                return ImageSource.FromFile(placeHolder);
            }
            string tempPath = Path.Combine(path, "Images");
            string imagePath = Path.Combine(tempPath, $"{(int)value}.png");

            if (Path.Exists(imagePath))
            {

                return ImageSource.FromFile(imagePath);
            }

            return ImageSource.FromFile(placeHolder);
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
