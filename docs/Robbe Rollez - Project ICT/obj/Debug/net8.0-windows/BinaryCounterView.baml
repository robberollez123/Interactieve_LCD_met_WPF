   M S B A M L   `   `   `  ����  Robbe Rollez - Project ICT2    ,Robbe_Rollez___Project_ICT.BinaryCounterView   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Aav2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     6L   -   5        $
��Auto��5      $
��Auto��6     � 	Resources  5         ModernGrayButtonStyle �� 
TargetType �� Property �� Value3  -System.Windows.Media.Effects.DropShadowEffect   Color   	Direction   ShadowDepth   Opacity   
BlurRadius	 �� Triggers
 :� RoutedEvent g� Duration	 �� To �� TargetProperty��%V  &	        �� 5   
   " ��6.   .�5	      ��  � ��$ 30(�6)   �� 5
       � ��$ 70��6'   �� 5       � ��$ 10q�6'   �� 5       � ��$
 Auto��6&   �� 5       � ��$
 Bold"�6+   �� 5       � ��
 �����6+   �� 5       � �� �	#FF4F4F4F6+   �� 5       � �� �	#FF3333336,   �� 5       � ��$ 2q�60   �� 5       � ��$ 20,10q�6(   �� 5       � ��$ Center=�6;   �� 5       � ��$ Center=�69   �� 5       �@�Cursor$
 Hand��6'   �� 5       �@J�Effect 5        5      $ Black��6'   $	 270Q�65   $ 5Q�6E   $	 0.2Q�6U   $ 8Q�6c   5      	 5      :� 5      $
 UIElement.MouseEnter��6   .[�5      �� .��5      �� .��5       �� $ 0:0:0.2D�6-    	#FF6161616@   $2 ,(Control.Background).(SolidColorBrush.Color)�6O   �� 5!      $ 0:0:0.2D�6-    	#FF4444446@   $3 -(Control.BorderBrush).(SolidColorBrush.Color)�6O   5"      5#      5$      :� 5'      $ 
 UIElement.PreviewMouseDown��6   .[�5(      �� .��5)      �� .��5*      �� $ 0:0:0.1D�6-    	#FF4A4A4A6@   $2 ,(Control.Background).(SolidColorBrush.Color)�6O   �� 5+      $ 0:0:0.1D�6-    	#FF2E2E2E6@   $3 -(Control.BorderBrush).(SolidColorBrush.Color)�6O   5,      5-      5.      50      51      .��53      � .+�54   
   �� 
�������.+�55      �� $��Binaire teller��6   $��50(�6-   $
��Bold"�6;   �� 56      
���   �$��	0,20,0,20q�6+    � LayoutTransform 57      �� 58       �� ScaleY$ 3Q�6%   5;      �� 5=      -   5         ��Name$ BinaryLabel��5=      $��Binair: 0000 0000��6)   $��30(�6E   $��10q�6S   $
��Left=�6_   �� 5>      -   5        $ DecimalLabel��5>      $��Decimaal: 0��6*   $��30(�6@   $��10q�6N   $
��Left=�6Z   �� 5?      
���   �$��	0,20,0,20q�6+    5@      �� 5A      $ 3Q�6%   5D      �� 5F      -   5         ��Name$ btnStartCounter��5F      $��START��6.   #��[  6>   6m   �� 5G      -   5        $ btnStopCounter��5G      $
��STOP��6-   #��[  6<   6k   �� 5H      -   5        $ btnResetCounter��5H      $��RESET��6.   #��[  6>   6m   5I      5J      5K      