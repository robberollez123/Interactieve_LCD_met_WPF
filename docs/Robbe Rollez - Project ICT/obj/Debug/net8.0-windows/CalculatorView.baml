   M S B A M L   `   `   `  ����  Robbe Rollez - Project ICT/    )Robbe_Rollez___Project_ICT.CalculatorView   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Aav2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     6L   $
��Auto��5      $
��Auto��6     � 	Resources  5         ModernGrayButtonStyle �� 
TargetType �� Property �� Value3  -System.Windows.Media.Effects.DropShadowEffect   Color   	Direction   ShadowDepth   Opacity   
BlurRadius	 �� Triggers
 :� RoutedEvent g� Duration	 �� To �� TargetProperty��%V  &	        �� 5   
   " ��6.   .�5	      ��  � ��$ 30(�6)   �� 5
       � ��$ 50��6'   �� 5       � ��$ 10q�6'   �� 5       � ��$
 Auto��6&   �� 5       � ��$
 Bold"�6+   �� 5       � ��
 �����6+   �� 5       � �� �	#FF4F4F4F6+   �� 5       � �� �	#FF3333336,   �� 5       � ��$ 2q�60   �� 5       � ��$ 20,10q�6(   �� 5       � ��$ Center=�6;   �� 5       � ��$ Center=�69   �� 5       �@�Cursor$
 Hand��6'   �� 5       �@J�Effect 5        5      $ Black��6'   $	 270Q�65   $ 5Q�6E   $	 0.2Q�6U   $ 8Q�6c   5      	 5      :� 5      $
 UIElement.MouseEnter��6   .[�5      �� .��5      �� .��5       �� $ 0:0:0.2D�6-    	#FF6161616@   $2 ,(Control.Background).(SolidColorBrush.Color)�6O   �� 5!      $ 0:0:0.2D�6-    	#FF4444446@   $3 -(Control.BorderBrush).(SolidColorBrush.Color)�6O   5"      5#      5$      :� 5'      $ 
 UIElement.PreviewMouseDown��6   .[�5(      �� .��5)      �� .��5*      �� $ 0:0:0.1D�6-    	#FF4A4A4A6@   $2 ,(Control.Background).(SolidColorBrush.Color)�6O   �� 5+      $ 0:0:0.1D�6-    	#FF2E2E2E6@   $3 -(Control.BorderBrush).(SolidColorBrush.Color)�6O   5,      5-      5.      50      51      .��53      � .+�54   
   ��  �� Orientation$ Vertical=�6   
�������.+�56      �� $��Rekenmachine��6   $��50(�6+   $
��Bold"�69   $��0q�6K   �� 57      
���   �$��	0,20,0,20q�6+    � LayoutTransform 58      �� 59       �� ScaleY$ 3Q�6%   5<      �� 5=      $ 
Horizontal=�6   �� 5?      $ 
Horizontal=�6   $
��Auto��62   $
��Left=�6?   .+�5@      �� $��Getal 1:��6   $��30(�6+   $��10q�69   $
��Left=�6E   �� 5A      -   5         ��Name$ 
txbNumber1��5A      $��10q�6.   $��30(�6:   $	��100��6H   $
��Left=�6T   
������ 6o   5B      �� 5C      $ 
Horizontal=�6   $
��Auto��62   $
��Left=�6?   .+�5D      �� $��Getal 2:��6   $��30(�6+   $��10q�69   $
��Left=�6E   �� 5E      -   5        $ 
txbNumber2��5E      $��30(�6.   $��10q�6<   $	��100��6H   $
��Left=�6T   
������ 6o   5F      �� 5H      $ 
Horizontal=�6   .+�5I      �� $��Selecteer operator:��6   $��30(�66   $��10, 0, 0, 0q�6D   �� 5J      $ 
Horizontal=�6   $��10, 0, 0, 0q�66   $
��Auto��6K   $
��Left=�6X   .+�5K      	� -   5         	�Name$ rbAdd��5K   "   $��30(�61   $��+��6?   $��5q�6K    d� 	IsChecked$
 TrueY�6V   	� 5L      -   5        $ 
rbSubtract��5L   "   $��30(�66   $��-��6D   $��5q�6P   	� 5M      -   5        $ 
rbMultiply��5M   "   $��30(�66   $��*��6D   $��5q�6P   	� 5N      -   5        $ rbDivide��5N   "   $��30(�64   $��/��6B   $��5q�6N   5O      5P      �� 5Q      $ 
Horizontal=�6   $
��Auto��62   $
��Left=�6?   .+�5R      �� $��
Resultaat:��6   $��30(�6-   $��10q�6;   $
��Left=�6G   �� 5S      -   5        $ 	txbResult��5S      $��30(�6-   $��10q�6;   $
��Auto��6G   $
��Left=�6T    �� 
IsReadOnly$
 True��6o   
������ 6�   5T      �� 5U      
���   �$��	0,20,0,20q�6#    5V   
   �� 5W      $ 3Q�6   5Y      �� 5\      -   5        $��BEREKEN��5\      $	��100��6'   $
��Auto��64   #��[  6A   6p   �� 5^      -	   5        $��CLEAR��5^      $	��100��6%   $
��Auto��62   #��[  6?   6n   5`      5a      5b      