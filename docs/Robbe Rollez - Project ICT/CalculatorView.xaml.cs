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
using System.Windows.Shapes;

namespace Robbe_Rollez___Project_ICT
{
    /// <summary>
    /// Interaction logic for CalculatorView.xaml
    /// </summary>
    public partial class CalculatorView : UserControl
    {
        private SerialPort _serialPort;

        public CalculatorView(SerialPort serialPort)
        {
            InitializeComponent();
            _serialPort = serialPort;
        }

        private string GetSelectedOperation()
        {
            if (rbAdd.IsChecked == true) return "+";
            if (rbSubtract.IsChecked == true) return "-";
            if (rbMultiply.IsChecked == true) return "*";
            if (rbDivide.IsChecked == true) return "/";
            return string.Empty;
        }

        private void btnBereken_Click(object sender, RoutedEventArgs e)
        {
            _serialPort.Write("D");

            string operation = GetSelectedOperation();

            if (!double.TryParse(txbNumber1.Text, out double num1) || !double.TryParse(txbNumber2.Text, out double num2))
            {
                MessageBox.Show("Vul een geldig getal in.");
                return;
            }

            double result = 0;
            switch (operation)
            {
                case "+":
                    result = num1 + num2;
                    break;
                case "-":
                    result = num1 - num2;
                    break;
                case "*":
                    result = num1 * num2;
                    break;
                case "/":
                    if (num2 == 0)
                    {
                        MessageBox.Show("Kan niet delen door 0.");
                        return;
                    }
                    result = num1 / num2;
                    break;
                default:
                    MessageBox.Show("Selecteer een operator.");
                    return;
            }

            string formule = $"{num1}{operation}{num2}=";
            _serialPort.WriteLine(formule);

            _serialPort.WriteLine(result.ToString());
            txbResult.Text = result.ToString();
        }

        private void btnClear_Click(object sender, RoutedEventArgs e)
        {
            txbNumber1.Text = txbNumber2.Text = txbResult.Text = "";
        }
    }
}
