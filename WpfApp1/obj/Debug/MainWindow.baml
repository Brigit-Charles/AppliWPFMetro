   M S B A M L   `   `   `  ����d  `Microsoft.Maps.MapControl.WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35tRclr-namespace:Microsoft.Maps.MapControl.WPF;assembly=Microsoft.Maps.MapControl.WPFMicrosoft.Maps.MapControl.WPF  5   	    WpfApp1   WpfApp1.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   `mRclr-namespace:Microsoft.Maps.MapControl.WPF;assembly=Microsoft.Maps.MapControl.WPF     5   	   -   5          �Name$  
myMainView��5   	    � Icon$ /images/icoMobilite.ico��5   
    � Title$G AAvec la Métro trouve ton bus et ne rentre plus jamais à pieds !��5	   	   $
��1000��6Q   $	��800��6_    � 	Resources 5   
    	  Jinky  Logo �� 	UriSource  bck  TextBoxBaseControlTemplate �� 
TargetType ��Name �� CornerRadius ��Name��%e  &	        &	 %     &	 [     &	 �     *�5   
   /Fonts/#Jinky)�62   �� 5   
   $ /images/icoMobilite.png?�6#   6I   �� 5   
   $ /images/bck.png?�6"   6@   �� 5   
   " ��6=   .R�5      �� $ Bd��5      #��z��5      
���\\��$��3q�5      $ 20��6%   ._�5      �� $ PART_ContentHost��6   5      5      5      .��5      � ��5   
   �� 5      	 j� Stretch$
	 None=�6   
 �� ImageSource$
 Images/bck.png��6(    j� 
AlignmentY$	 Top=�6E    j� 
AlignmentX$ Center=�6V    � ColumnDefinitions 5!   
   �� 5"      $��* �6   �� 5#      $��* �6   �� 5$      $��* �6   �� 5%      $��* �6    � RowDefinitions 5'   
   �� 5(      $
��0.2* �6   �� 5)      $��0.45* �6   �� 5*      $��0.18* �6   �� 5+      $
��0.3* �6   .+�5.   
   �� $��Jinky)�6   $��70(�6'   $
��Wrap=�65    �� TextAlignment$ Center=�6I   ���#ffed00 �� Padding$
 0 20q�6u   $
��Bold"�6�   $��0 0 0 50q�6�   $��4��6�    Avec la METRO Trouve ton BUS !6�   �� 50   
   $��1��6   $��2��6"   $��0 0 5 5q�66   .+�52      �� $��	LONGITUDE��6   $��Arial)�6)   $��15(�6<   $
��Bold"�6J   $
 Left=�6\   $ 
20 18 0 10q�6q   ���#5ac5f26�   �� 53      $
��30 0q�66   ���#252771$��Jinky)�6Z   
�������$��60(�6�   ��6   ��  �� Path$ 	Longitude�6�   �� 54      $��LATITUDE��6   $��Arial)�6(   $��15(�6;   $
��Bold"�6I   $
 Left=�6[   $ 
20 18 0 10q�6p   ���#5ac5f26�   �� 55      $
��30 0q�65   ���#252771$��Jinky)�6Y   
�������$��60(�6   ��6   �� $ Latitude�6   �� 56      $��DISTANCE��6   $��Arial)�6(   $��15(�6;   $
��Bold"�6I   $
 Left=�6[   $ 
20 18 0 10q�6p   ���#5ac5f26�   �� 57      $
��30 0q�65   ���#252771$��Jinky)�6Y   
�������$��60(�6   ��6   �� $ Distance�6   �� 58      ���#5ac5f2
���������6   �� $ ResetCommand�.��6c   Réinitialiser les données6~   59      �� 5;   
   $
��Auto=�6   $��2��6:   $��1��6J   ���#5ac5f2$��2��6m   $��5 0 0 0q�6�   $	��350��6�   $	��Top=�6�   .��5<      �� 
�������$��20(�6N   $��Stretch=�6\   $��Stretch=�6   ��6   �� *	BusStop+��5=      �� 5>      .R�5?      �� .+�5@      �� ���#afca00$��Arial)�6S   $��15(�6f   $
��Bold"�6t   $
 Left=�6�   $ 
20 18 0 10q�6�   ��6(   �� *Key+6�   �� 5A      
���   �$��Arial)�6]   $��15(�6p   $
��Bold"�6~   $��
20 18 0 10q�6�   ��6+   �� *Value+5B      5C      5D      5F      5G      � 5H   
   $��2��6   $��4��6   .+�5J      �� -   5         ��Name$ go��5J   #    � Cursor$
 Hand��6   $	��123��6/   $	��123��6;   ���#FFF���#FFF��6H   �� $ SaveCommand�.��5K      �� -   5        $��MonImage��5K   0   $��/images/go.png��6   5L      5M      5N      � 5O   
   $��4��6   $��3��6#   .+�5Q      �� 
������� 5R       �� 
TargetType �� Property �� Value ��Name �� Triggers P� Property P� Value �� 
TargetName��%N  '��       �� 5S      " ��6   .�5T      ��  � �� 5U      �� 5V   "   " ��62   .R�5W   &   �� $��Border��6-   $��2,2,2,0q�6;   
�������$ 4,4,0,0��6m   $	��2,0q�6�   ._�5X   *   �� $ ContentSite��6;   $��Center=�5Y   )   $��Center=�5Z   )   $��Header��5[   )   $
��10,2q�5\   )   5]   '    5^   &   P� 5_   *    �@��
IsSelected . . �5`   .   �� $ Border��65    � �� �#e5007d6_   5a   +   P� 5b   *    �@��
IsSelected .  . �5c   .   �� $ Border��65    � ��
 �����6_   5d   +   5f   #   5h      5i      5j      .@�5k      �� $��Informations générales��6   .��5l      �� $��Jinky)�6b   
���   �$��60(�6�   ��6   �� $ Message� �� UpdateSourceTrigger$ PropertyChanged=�5m      5o      �� 5p      $��Voir la carte du réseau��6   .��5q      �� .��5r      '   !Microsoft.Maps.MapControl.WPF.Map  -   5          Name$ MetroBus��5r       +   %Microsoft.Maps.MapControl.WPF.MapCore   CredentialsProviderT   NMicrosoft.Maps.MapControl.WPF.Design.ApplicationIdCredentialsProviderConverter$F @Ap4M2GklYDMscyvs8DjNG1Cln6SIQpPdi91LOA4nVYJmUqStWt2iRoQb_5iBZDRt 62      Mode;   5Microsoft.Maps.MapControl.WPF.Design.MapModeConverter$
 road 6�   $��0,20,0,0q�6�       	ZoomLevel$  15Q�6�   $	��300��6�   $	��800��6�   $	��Top=�6�   !   Center<   6Microsoft.Maps.MapControl.WPF.Design.LocationConverter$! 45.1858202, 5.7290103 6�   "   Children." 5s      +   %Microsoft.Maps.MapControl.WPF.Pushpin  #   Location$# 45.1858202, 5.7290103 6(   5t      5u      5v      5w      5x      5{      5|      5}      