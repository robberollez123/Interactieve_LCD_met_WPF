   M S B A M L   `   `   `  ����  Robbe Rollez - Project ICT.    (Robbe_Rollez___Project_ICT.ConverterView   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      $
��Auto��5      $
��Auto��6   $��30(�6)     � 	Resources  5         ModernGrayButtonStyle �� 
TargetType �� Property �� Value3  -System.Windows.Media.Effects.DropShadowEffect   Color   	Direction   ShadowDepth   Opacity   
BlurRadius	 �� Triggers
 :� RoutedEvent g� Duration	 �� To �� TargetProperty��%V  &	        �� 5   
   " ��6.   .�5      ��  � ��$ 30(�6)   �� 5	       � ��$ 50��6'   �� 5
       � ��$ 10q�6'   �� 5       � ��$
 Auto��6&   �� 5       � ��$
 Bold"�6+   �� 5       � ��
 �����6+   �� 5       � �� �	#FF4F4F4F6+   �� 5       � �� �	#FF3333336,   �� 5       � ��$ 2q�60   �� 5       � ��$ 20,10q�6(   �� 5       � ��$ Center=�6;   �� 5       � ��$ Center=�69   �� 5       �@�Cursor$
 Hand��6'   �� 5       �@J�Effect 5        5      $ Black��6'   $	 270Q�65   $ 5Q�6E   $	 0.2Q�6U   $ 8Q�6c   5      	 5      :� 5      $
 UIElement.MouseEnter��6   .[�5      �� .��5      �� .��5      �� $ 0:0:0.2D�6-    	#FF6161616@   $2 ,(Control.Background).(SolidColorBrush.Color)�6O   �� 5       $ 0:0:0.2D�6-    	#FF4444446@   $3 -(Control.BorderBrush).(SolidColorBrush.Color)�6O   5!      5"      5#      :� 5&      $ 
 UIElement.PreviewMouseDown��6   .[�5'      �� .��5(      �� .��5)      �� $ 0:0:0.1D�6-    	#FF4A4A4A6@   $2 ,(Control.Background).(SolidColorBrush.Color)�6O   �� 5*      $ 0:0:0.1D�6-    	#FF2E2E2E6@   $3 -(Control.BorderBrush).(SolidColorBrush.Color)�6O   5+      5,      5-      5/      50      .��51      � .+�52   
   �� 
�������.+�53      �� $��HEX, BIN, DEC Omzetter��6   $��50(�65   $
��Bold"�6C   �� 54      
���   �$��	0,20,0,20q�6+    � LayoutTransform 55      �� 56       �� ScaleY$ 3Q�6%   58      �� 59       �� Orientation$ 
Horizontal=�6   $��10, 0, 0, 0q�62   .+�5:      �� $��Waarde:��6   �� 5;      -   5         ��Name$ 	txbWaarde��5;      $	��400��6-   $��20, 0, 0, 0q�69   5<      �� 5=      $ 
Horizontal=�6   $��10, 20, 0, 0q�62   .+�5>      �� $ Vertical=�6   .+�5?      �� $
��Van:��6   	� 5@      -   5         	�Name$ rbtVanBinair��5@   "   $��Binair��68   $��25(�6I   	� 5A      -   5        $ rbtVanDecimaal��5A   "   $��Decimaal��6:   $��25(�6M   	� 5B      -   5        $ rbtVanHexadecimaal��5B   "   $��Hexadecimaal��6>   $��25(�6U   5C      �� 5D      $ Vertical=�6   $��100, 0, 0, 0q�64   .+�5E      �� $��Naar:��6   	� 5F      -   5        $ rbtNaarBinair��5F   "   $��Binair��69   $��25(�6J   	� 5G      -   5        $ rbtNaarDecimaal��5G   "   $��Decimaal��6;   $��25(�6N   	� 5H      -   5        $ rbtNaarHexadecimaal��5H   "   $��Hexadecimaal��6?   $��25(�6V   5I      5J      �� 5K      -   5         ��Name$ btnOmzetten��5K      $��OMZETTEN��6*   $��10, 20, 10, 20q�6=   #��[  6U   $	��100��6�   6�   �� 5L      $ 
Horizontal=�6   $��10, 0, 0, 0q�62   .+�5M      �� $��
Resultaat:��6   �� 5N      -	   5        $ txbResultaat��5N       �� 
IsReadOnly$
 True��60   $	��400��6B   $��20, 0, 0, 0q�6N   5O      5P      5Q      5R      