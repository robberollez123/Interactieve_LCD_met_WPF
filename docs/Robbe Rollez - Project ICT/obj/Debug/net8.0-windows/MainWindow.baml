   M S B A M L   `   `   `  ����U  QRobbe Rollez - Project ICT, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Robbe_Rollez___Project_ICTRobbe_Rollez___Project_ICT  5   	   +    %Robbe_Rollez___Project_ICT.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   :local(clr-namespace:Robbe_Rollez___Project_ICT     5   	   -   5          � Title$0  *Visual Studio C# Connectie met Arduino Uno��5   	   $
��Auto��6<   
������� � WindowStyle$
 None=�5
   	   $��20(�5   "    � WindowStartupLocation$ CenterScreen=�60    � 
ResizeMode$ NoResize=�6U    � WindowState$ 	Maximized=�6k    � 	Resources 5         ModernGrayButtonStyle �� 
TargetType �� Property �� Value3  -System.Windows.Media.Effects.DropShadowEffect	   Color
   	Direction   ShadowDepth   Opacity   
BlurRadius �� Triggers :� RoutedEvent g� Duration	 �� To �� TargetProperty  ModernGrayComboBoxStyle��%�  &	        &	 �    �� 5   
   " ��6.   .�5      ��  � ��$ 18(�6)   �� 5       � ��$ 50��6'   �� 5       � ��$ 10q�6'   �� 5       � ��$	 180��6&   �� 5       � ��$
 Bold"�6+   �� 5       � ��
 �����6+   �� 5       � �� �	#FF4F4F4F6+   �� 5       � �� �	#FF3333336,   �� 5       � ��$ 2q�60   �� 5       � ��$ 20,10q�6(   �� 5       � ��$ Center=�6;   �� 5       � ��$ Center=�69   �� 5       �@�Cursor$
 Hand��6'   �� 5       �@J�Effect 5        5      $	 Black��6'   $	
 270Q�65   $ 5Q�6E   $	 0.2Q�6U   $ 8Q�6c   5        5!      :� 5#      $ Button.PreviewMouseDown��6   .[�5$      �� .��5%      �� .��5&      �� $ 0:0:0.1D�6-    	#FF4A4A4A6@   $1 +(Button.Background).(SolidColorBrush.Color)�6O   �� 5'      $ 0:0:0.1D�6-    	#FF2E2E2E6@   $2 ,(Button.BorderBrush).(SolidColorBrush.Color)�6O   5(      5)      5*      5,      �� 5/   
   " ��60   .�50      ��  � ��$ 18(�6)   �� 51       � ��$ 50��6'   �� 52       � ��$	 250��6&   �� 53       � ��$ 5q�6'   �� 54       � ��
 �   �6+   �� 55       � �� �	#FFB0B0B06+   �� 56       � �� �	#FF8C8C8C6,   �� 57       � ��$ 2q�60   �� 58       � ��$ 10q�6(   �� 59       � ��$ Center=�6;   �� 5:       � ��$ Center=�69   �� 5;       �@�Cursor$
 Hand��6'    5<      :� 5>      $ ComboBox.MouseEnter��6   .[�5?      �� .��5@      �� .��5A      �� $ 0:0:0.2D�6-    	#FF9E9E9E6@   $3 -(ComboBox.Background).(SolidColorBrush.Color)�6O   �� 5B      $ 0:0:0.2D�6-    	#FF7575756@   $4 .(ComboBox.BorderBrush).(SolidColorBrush.Color)�6O   5C      5D      5E      :� 5H      $ ComboBox.PreviewMouseDown��6   .[�5I      �� .��5J      �� .��5K      �� $ 0:0:0.1D�6-    	#FF8E8E8E6@   $3 -(ComboBox.Background).(SolidColorBrush.Color)�6O   �� 5L      $ 0:0:0.1D�6-    	#FF5A5A5A6@   $4 .(ComboBox.BorderBrush).(SolidColorBrush.Color)�6O   5M      5N      5O      5Q      5R      .��5T      �  � RowDefinitions 5U   
   �� 5V      $��70 �6   $��50��6(   �� 5X      .+�5]   
   ��  �� Orientation$ 
Horizontal=�6   $��0��6.   
�������.+�5^      �� $��
COM-Poort:��6   $
��Left=�5_      $��10,0,0,0q�5`      $��Center=�5a      $��Center=�5b      $��50��5c      $	��125��5d      �� 5f      -   5         ��Name$ cmbComPorts��5f       � ToolTip$ COM-Poort opties��5g      #��[ 5h      $��Center=�5i      $	��100��5k      �� 5m      -   5         ��Name$ 
btnConnect��5m      $��CONNECT��5n      $ Connect��5o      $
��Left=�5p      $��Center=�5q      #��[  5r      ${�False��5s   .   �� 5u      -   5        $ btnDisconnect��5u      $ 
Disconnect��5v      $��
DISCONNECT��5w      $
��Left=�5x      $��Center=�5y      #��[  5z      ${�False��5{   1   �� 5}      -   5        $ btnClearLCD��5}      $ 	Clear LCD��5~      $��	Clear LCD��5      $
��Left=�5�      $��Center=�5�      #��[  5�      ${�False��5�   /   �� 5�      $��Selecteer mode:��6   $��10,0,0,0q�5�      $��Center=�5�      $��Center=�5�      $��50��5�      $	��151��5�      �� 5�      -   5        $ cmbMode��5�      #��[ 5�      $��Center=�5�      $��10, 0, 20, 0q�5�      $	��250��5�      .@�5�      �� $
 None��6   .��6.   None64   �� 5�      $ Binaire teller��6   .��68   Binaire teller6H   �� 5�      $ Rekenmachine��6   .��66   Rekenmachine6D   �� 5�      $ Omzetter��6   .��62   HEX, BIN, DEC Omzetter6J   5�      �� 5�      -   5        $ btnSettings��5�      $ Instellingen��5�      $��Right=�5�      $��10q�5�      $��50��5�      #��[  5�      $��50��5�      $
{�True��5�   /   
������ ��5�      �� 5�       �� ImageSource$ /SettingsLogo1.png��6!   5�      �� 5�      -   5        $ btnMinimize��5�      $ Minimize��5�      $��Right=�5�      $��60��5�      $��50��5�      $��10q�5�      $��-��5�      #��[  5�      6D   �� 5�      -	   5        $ btnClose��5�      $ 	Afsluiten��5�      $��Right=�5�      $��60��5�      $��50��5�      $��10q�5�      $��X��5�      #��[  5�      6D   5�      �� 5�   
   -
   5         ��Name$ contentControl��5�      $��1��61   
�������$��30(�6U   5�      5�      5�      