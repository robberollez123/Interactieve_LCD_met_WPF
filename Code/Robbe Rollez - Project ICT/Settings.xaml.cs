using System;
using System.Collections.Generic;
using System.IO.Ports;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Robbe_Rollez___Project_ICT
{
    /// <summary>
    /// Interaction logic for Settings.xaml
    /// </summary>
    public partial class Settings : UserControl
    {
        SerialPort _serialPort;
        public Settings(SerialPort serialPort)
        {
            InitializeComponent();
            _serialPort = serialPort;
        }

        private void sldContrast_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            if (_serialPort.IsOpen)
            {
                _serialPort.Write("M");
                string contrast = sldContrast.Value.ToString();
                _serialPort.WriteLine(contrast);
                lblContrast.Content = contrast;
            }
        }
    }
}
