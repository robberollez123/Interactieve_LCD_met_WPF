using System;
using System.Diagnostics.Metrics;
using System.IO.Ports;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Threading;

namespace Robbe_Rollez___Project_ICT
{
    public partial class BinaryCounterView : UserControl
    {
        SerialPort _serialPort;
        private DispatcherTimer timer; // Timer to control the counting
        private int counter; // Counter variable

        public BinaryCounterView(SerialPort serialPort)
        {
            InitializeComponent();
            _serialPort = serialPort;
            counter = 0;
            timer = new DispatcherTimer(); 
            timer.Interval = TimeSpan.FromMilliseconds(250);
            timer.Tick += Timer_Tick; 
        }

        private void btnStartCounter_Click(object sender, RoutedEventArgs e)
        {
            if (_serialPort.IsOpen)
            {
                _serialPort.Write("S"); 
                timer.Start(); 
            }
        }

        private void btnStopCounter_Click(object sender, RoutedEventArgs e)
        {
            if (_serialPort.IsOpen)
            {
                _serialPort.Write("P"); 
                timer.Stop();
            }
        }

        private void Timer_Tick(object sender, EventArgs e)
        {
            counter = (counter + 1) % 256;
            UpdateLabels();
            SendCounterValue();
        }

        private void SendCounterValue()
        {
            if (_serialPort.IsOpen)
            {
                _serialPort.Write("S");
                string binaryString = Convert.ToString(counter, 2).PadLeft(8, '0');
                _serialPort.WriteLine(binaryString);
            }
        }


        private void UpdateLabels()
        {
            BinaryLabel.Content = "Binair: " + Convert.ToString(counter, 2).PadLeft(8, '0'); 
            DecimalLabel.Content = "Decimaal: " + counter; 
        }

        private void UserControl_ContextMenuClosing(object sender, ContextMenuEventArgs e)
        {
            if (_serialPort.IsOpen)
            {
                _serialPort.Write("0");
                _serialPort.Dispose();
            }
        }

        private void btnResetCounter_Click(object sender, RoutedEventArgs e)
        {
            counter = 0;
            UpdateLabels();
        }
    }
}