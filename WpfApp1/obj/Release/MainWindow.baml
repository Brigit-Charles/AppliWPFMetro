   M S B A M L   `   `   `  ���� d  `Microsoft.Maps.MapControl.WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35tRclr-namespace:Microsoft.Maps.MapControl.WPF;assembly=Microsoft.Maps.MapControl.WPFMicrosoft.Maps.MapControl.WPF   WpfApp1   WpfApp1.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     `mRclr-namespace:Microsoft.Maps.MapControl.WPF;assembly=Microsoft.Maps.MapControl.WPF     -     �Name$  
myMainView�� � Icon$ /images/icoMobilite.ico�� � Title$G AAvec la Métro trouve ton bus et ne rentre plus jamais à pieds !��$
��1000��$	��800�� � 	Resources  	  Jinky  Logo �� 	UriSource  bck  TextBoxBaseControlTemplate �� 
TargetType ��Name �� CornerRadius ��Name��%�   &	        &	      &	 :     &	 U     *�/Fonts/#Jinky)��� $ /images/icoMobilite.png?��� $ /images/bck.png?��� " ��.R��� $ Bd��#��z��
���\\��$��3q�$ 20��._��� $ PART_ContentHost��.��� ���� 	 j� Stretch$
	 None=�
 �� ImageSource$
 Images/bck.png�� j� 
AlignmentY$	 Top=� j� 
AlignmentX$ Center=� � ColumnDefinitions �� $��* ��� $��* ��� $��* ��� $��* � � RowDefinitions �� $
��0.2* ��� $��0.45* ��� $��0.18* ��� $
��0.3* �.+��� $��Jinky)�$��70(�$
��Wrap=� �� TextAlignment$ Center=����#ffed00 �� Padding$
 0 20q�$
��Bold"�$��0 0 0 50q�$��4�� Avec la METRO Trouve ton BUS !�� $��1��$��2��$��0 0 5 5q�.+��� $��	LONGITUDE��$��Arial)�$��15(�$
��Bold"�$
 Left=�$ 
20 18 0 10q����#5ac5f2�� $
��30 0q����#252771$��Jinky)�
�������$��60(�����  �� Path$ 	Longitude��� $��LATITUDE��$��Arial)�$��15(�$
��Bold"�$
 Left=�$ 
20 18 0 10q����#5ac5f2�� $
��30 0q����#252771$��Jinky)�
�������$��60(����� $ Latitude��� $��DISTANCE��$��Arial)�$��15(�$
��Bold"�$
 Left=�$ 
20 18 0 10q����#5ac5f2�� $
��30 0q����#252771$��Jinky)�
�������$��60(����� $ Distance��� ���#5ac5f2
����������� $ ResetCommand�.��Réinitialiser les données�� $
��Auto=�$��2��$��1�����#5ac5f2$��2��$��5 0 0 0q�$	��350��$	��Top=�.���� 
�������$��20(�$��Stretch=�$��Stretch=����� *	BusStop+���� .R��� .+��� ���#afca00$��Arial)�$��15(�$
��Bold"�$
 Left=�$ 
20 18 0 10q����� *Key+�� 
���   �$��Arial)�$��15(�$
��Bold"�$��
20 18 0 10q����� *Value+� $��2��$��4��.+��� -    ��Name$ go�� � Cursor$
 Hand��$	��123��$	��123�����#FFF���#FFF���� $ SaveCommand�.���� -   $��MonImage��$��/images/go.png��� $��4��$��3��.+��� 
�������  �� 
TargetType �� Property �� Value ��Name �� Triggers P� Property P� Value �� 
TargetName��%Z  '��       �� " ��.���  � �� �� " ��.R��� $��Border��$��2,2,2,0q�
�������$ 4,4,0,0��$	��2,0q�._��� $ ContentSite��$��Center=�$��Center=�$��Header��$
��10,2q� P�  �@��
IsSelected . . ��� $ Border�� � �� �#e5007dP�  �@��
IsSelected .  . ��� $ Border�� � ��
 �����.@��� $��Informations générales��.���� $��Jinky)�
���   �$��60(����� $ Message� �� UpdateSourceTrigger$ PropertyChanged=��� $��Voir la carte du réseau��.���� .��'   !Microsoft.Maps.MapControl.WPF.Map  -     Name$ MetroBus��+   %Microsoft.Maps.MapControl.WPF.MapCore   CredentialsProviderT   NMicrosoft.Maps.MapControl.WPF.Design.ApplicationIdCredentialsProviderConverter$F @Ap4M2GklYDMscyvs8DjNG1Cln6SIQpPdi91LOA4nVYJmUqStWt2iRoQb_5iBZDRt    Mode;   5Microsoft.Maps.MapControl.WPF.Design.MapModeConverter$
 road $��0,20,0,0q�    	ZoomLevel$  15Q�$	��300��$	��800��$	��Top=�!   Center<   6Microsoft.Maps.MapControl.WPF.Design.LocationConverter$! 45.1858202, 5.7290103 "   Children." +   %Microsoft.Maps.MapControl.WPF.Pushpin  #   Location$# 45.1858202, 5.7290103 