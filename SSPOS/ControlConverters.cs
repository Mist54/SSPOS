using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Globalization;
using System.Windows;
using System.Windows.Data;

namespace SSPOS
{
    public class ControlConverters : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            bool isPaneOpen = (bool)value;    //Margin : Left Top Right Bottom
            return isPaneOpen ? new Thickness(10, 10, 10, 10) : new Thickness(-140, 10, 10, 10);
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
