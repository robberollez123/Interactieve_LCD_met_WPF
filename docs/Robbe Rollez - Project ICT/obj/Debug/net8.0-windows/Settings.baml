   M S B A M L   `   `   `  ����U  QRobbe Rollez - Project ICT, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Robbe_Rollez___Project_ICTRobbe_Rollez___Project_ICT  5      )    #Robbe_Rollez___Project_ICT.Settings   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      :local(clr-namespace:Robbe_Rollez___Project_ICT     5      $��30(�5      $
��Auto��5	      $
��Auto��5
        � 	Resources  5         ModernGrayButtonStyle �� 
TargetType �� Property �� Value3  -System.Windows.Media.Effects.DropShadowEffect   Color   	Direction   ShadowDepth   Opacity   
BlurRadius	 �� Triggers
 :� RoutedEvent g� Duration	 �� To �� TargetProperty��%L  &	        �� 5   
   " ��6.   .�5      ��  � ��$ 18(�6)   �� 5       � ��$ 50��6'   �� 5       � ��$ 10q�6'   �� 5       � ��$
 Auto��6&   �� 5       � ��$
 Bold"�6+   �� 5       � ��
 �����6+   �� 5       � �� �	#FF4F4F4F6+   �� 5       � �� �	#FF3333336,   �� 5       � ��$ 2q�60   �� 5       � ��$ 20,10q�6(   �� 5       � ��$ Center=�6;   �� 5       � ��$ Center=�69   �� 5       �@�Cursor$
 Hand��6'   �� 5       �@J�Effect 5        5      $ Black��6'   $	 270Q�65   $ 5Q�6E   $	 0.2Q�6U   $ 8Q�6c   5!      	 5"      :� 5$      $
 Button.MouseEnter��6   .[�5%      �� .��5&      �� .��5'      �� $ 0:0:0.2D�6-    	#FF6161616@   $1 +(Button.Background).(SolidColorBrush.Color)�6O   �� 5(      $ 0:0:0.2D�6-    	#FF4444446@   $2 ,(Button.BorderBrush).(SolidColorBrush.Color)�6O   5)      5*      5+      :� 5.      $
 Button.PreviewMouseDown��6   .[�5/      �� .��50      �� .��51      �� $ 0:0:0.1D�6-    	#FF4A4A4A6@   $1 +(Button.Background).(SolidColorBrush.Color)�6O   �� 52      $ 0:0:0.1D�6-    	#FF2E2E2E6@   $2 ,(Button.BorderBrush).(SolidColorBrush.Color)�6O   53      54      55      57      58      .��5;      � .+�5<   
   ��  �� Orientation$ Vertical=�6   
�������.+�5>      �� $��Instellingen��6   $��50(�6+   $
��Bold"�69   $��10q�6K   �� 5A      
���   �$��	0,20,0,20q�6+    � LayoutTransform 5B      �� 5C       �� ScaleY$ 3Q�6%   5E      �� 5H      $ 
Horizontal=�6   .+�5I      �� $��Contrast LCD:��6   $
��Left=�60   $��	10,10,0,0q�6K   $	��Top=�6^   �� 5J      -   5         ��Name$ sldContrast��5J      $	��185��6.   $��20��6:   $��30q�6F   $	��Top=�6R    �� IsSnapToTickEnabled$
 True��6j    � Maximum$	 200Q�6�   6�   �� 5K      -   5         ��Name$ lblContrast��5K      $�� ��6-   $
��Left=�68   $
��Auto��6S   $��	10,10,0,0q�6`   $	��Top=�6s   �� 5L      -   5         ��Name$ btnResetContrast��5L       � ToolTip$ Reset contrast��5M      $��RESET��5N      $
��Left=�5O      $��Center=�5P      #��[  5Q      6I   5S      �� 5T      
���   �$��	0,20,0,20q�6+    5U      �� 5V      $ 3Q�6%   5X      �� 5Y      $ 
Horizontal=�6   .+�5Z      �� $��	Test leds��6   $
��Left=�6,   $��	10,10,0,0q�6G   $	��Top=�6Z   �� 5[      -   5        $ btnTestLeds��5[      $ 	Test leds��5\      $
��TEST��5]      $
��Left=�5^      $��Center=�5_      #��[  5`      6G   5b      5c      5d      5e      