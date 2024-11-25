using System;
using System.Collections.Generic;
using System.Diagnostics.Eventing.Reader;
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
    /// Interaction logic for ConverterView.xaml
    /// </summary>
    public partial class ConverterView : UserControl
    {
        public ConverterView()
        {
            InitializeComponent();
        }

        private void btnOmzetten_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                string input = txbWaarde.Text;
                string van  = "";
                string naar = "";
                txbResultaat.Clear();

                if (rbtVanBinair.IsChecked == true)             van = "bin";
                else if (rbtVanDecimaal.IsChecked == true)      van = "dec";
                else if (rbtVanHexadecimaal.IsChecked == true)  van = "hex";

                if (rbtNaarBinair.IsChecked == true)            naar = "bin";
                else if (rbtNaarDecimaal.IsChecked == true)     naar = "dec";
                else if (rbtNaarHexadecimaal.IsChecked == true) naar = "hex";

                if (van == naar) txbResultaat.Text = input;
                else
                {
                    switch (van)
                    {
                        case "bin":
                            if (naar == "dec") { txbResultaat.Text = BinaryToDecimal(input); }
                            else if (naar == "hex") { txbResultaat.Text = BinaryToHex(input); }
                            break;

                        case "dec":
                            if (naar == "bin") { txbResultaat.Text = DecimalToBinary(input); }
                            else if (naar == "hex") { txbResultaat.Text = DecimalToHex(input); }
                            break;

                        case "hex":
                            if (naar == "bin") { txbResultaat.Text = HexToBinary(input); }
                            else if (naar == "dec") { txbResultaat.Text = HexToDecimal(input); }
                            break;
                    }
                }
            }
            catch (Exception error)
            {
                MessageBox.Show(error.Message);
                throw;
            }
        }
        // Binair naar hexadecimaal omzetten.
        public static string BinaryToHex(string binary)
        {
            int padLength = 4 - (binary.Length % 4);
            if (padLength != 4)
            {
                binary = new string('0', padLength) + binary;
            }

            StringBuilder hexString = new StringBuilder();
            for (int i = 0; i < binary.Length; i += 4)
            {
                string binaryChunk = binary.Substring(i, 4);
                int decimalValue = Convert.ToInt32(binaryChunk, 2);
                hexString.Append(decimalValue.ToString("X"));
            }

            return hexString.ToString();
        }

        public static string BinaryToDecimal(string binary)
        {
            int decimalValue = Convert.ToInt32(binary, 2);
            return decimalValue.ToString();
        }

        public static string DecimalToBinary(string decimalString)
        {
            if (int.TryParse(decimalString, out int decimalValue))
            {
                return Convert.ToString(decimalValue, 2);
            }
            else
            {
                return "Invalid input";
            }
        }

        public static string DecimalToHex(string decimalString)
        {
            if (int.TryParse(decimalString, out int decimalValue))
            {
                return Convert.ToString(decimalValue, 16).ToUpper();
            }
            else
            {
                return "Invalid input"; 
            }
        }

        public static string HexToBinary(string hexString)
        {
            if (int.TryParse(hexString, System.Globalization.NumberStyles.HexNumber, null, out int decimalValue))
            {
                return Convert.ToString(decimalValue, 2);
            }
            else
            {
                return "Invalid input";
            }
        }
        public static string HexToDecimal(string hexString)
        {
            if (int.TryParse(hexString, System.Globalization.NumberStyles.HexNumber, null, out int decimalValue))
            {
                return decimalValue.ToString();
            }
            else
            {
                return "Invalid input";
            }
        }
    }
}
