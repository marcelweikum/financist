FasdUAS 1.101.10   ��   ��    k             l     ��  ��    !   Get_Selection.applescript     � 	 	 6     G e t _ S e l e c t i o n . a p p l e s c r i p t   
  
 l     ��  ��       Get Selection     �        G e t   S e l e c t i o n      l     ��������  ��  ��        l     ��  ��    * $  Created by Sal Soghoian on 3/4/15.     �   H     C r e a t e d   b y   S a l   S o g h o i a n   o n   3 / 4 / 1 5 .      l     ��  ��    : 4  Copyright (c) 2015 Apple Inc. All rights reserved.     �   h     C o p y r i g h t   ( c )   2 0 1 5   A p p l e   I n c .   A l l   r i g h t s   r e s e r v e d .      l     ��������  ��  ��        h     �� �� 0 get_selection Get_Selection  k            ! " ! j     �� #
�� 
pare # 4     �� $
�� 
pcls $ m     % % � & &  A M B u n d l e A c t i o n "  ' ( ' j   	 �� )�� 0 loggingstatus loggingStatus ) m   	 
��
�� boovtrue (  * + * l     ��������  ��  ��   +  , - , j    �� .�� .0 actionidentiferstring actionIdentiferString . m     / / � 0 0  P H O T O S - 0 1 -  1 2 1 l     ��������  ��  ��   2  3 4 3 i     5 6 5 I      �� 7���� @0 runwithinput_fromaction_error_ runWithInput_fromAction_error_ 7  8 9 8 o      ���� 	0 input   9  : ; : o      ���� 0 anaction anAction ;  <�� < o      ���� 0 errorref errorRef��  ��   6 Q     j = > ? = k    8 @ @  A B A n   	 C D C I    	�� E���� 0 logthis logThis E  F�� F m     G G � H H  r u n W i t h I n p u t ( & )��  ��   D  f     B  I J I l  
 
��������  ��  ��   J  K L K r   
  M N M m   
  O O � P P  P h o t o s N o      ���� 0 photos__ Photos__ L  Q R Q O    6 S T S k    5 U U  V W V r     X Y X c     Z [ Z l    \���� \ e     ] ] 1    ��
�� 
selc��  ��   [ m    ��
�� 
list Y o      ���� 0 selecteditems selectedItems W  ^ _ ^ Z   2 ` a���� ` =   " b c b o    ���� 0 selecteditems selectedItems c J    !����   a R   % .�� d��
�� .ascrerr ****      � **** d l  ' - e���� e n  ' - f g f I   ( -�� h���� &0 nslocalizedstring NSLocalizedString h  i�� i m   ( ) j j � k k $ N O _ S E L E C T I O N _ E R R O R��  ��   g  f   ' (��  ��  ��  ��  ��   _  l�� l L   3 5 m m o   3 4���� 0 selecteditems selectedItems��   T 4    �� n
�� 
capp n o    ���� 0 photos__ Photos__ R  o p o l  7 7��������  ��  ��   p  q r q l  7 7�� s t��   s L F return (current application's NSArray's arrayWithArray:selectedItems)    t � u u �   r e t u r n   ( c u r r e n t   a p p l i c a t i o n ' s   N S A r r a y ' s   a r r a y W i t h A r r a y : s e l e c t e d I t e m s ) r  v�� v l  7 7��������  ��  ��  ��   > R      �� w x
�� .ascrerr ****      � **** w o      ���� (0 errormessagestring errorMessageString x �� y��
�� 
errn y o      ���� 0 errornumber errorNumber��   ? k   @ j z z  { | { n  @ F } ~ } I   A F�� ���� 0 logthis logThis   ��� � o   A B���� (0 errormessagestring errorMessageString��  ��   ~  f   @ A |  ��� � Z   G j � ��� � � >  G J � � � o   G H���� 0 errornumber errorNumber � m   H I������ � k   M a � �  � � � r   M U � � � l  M S ����� � n  M S � � � I   N S�� ����� &0 nslocalizedstring NSLocalizedString �  ��� � m   N O � � � � � 0 G E T _ S E L E C T E D _ P H O T O _ E R R O R��  ��   �  f   M N��  ��   � o      ���� .0 localizederrormessage localizedErrorMessage �  � � � r   V ^ � � � K   V Z � � �� ����� 60 nsapplescripterrormessage NSAppleScriptErrorMessage � o   W X���� .0 localizederrormessage localizedErrorMessage��   � n       � � � 1   [ ]��
�� 
pcnt � o   Z [���� 0 errorref errorRef �  ��� � L   _ a � � m   _ `��
�� 
msng��  ��   � R   d j���� �
�� .ascrerr ****      � ****��   � �� ���
�� 
errn � m   f g��������  ��   4  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � = 7 HANDLER CALLED BEFORE ACTION VIEW APPEARS IN WORKFLOW     � � � � n   H A N D L E R   C A L L E D   B E F O R E   A C T I O N   V I E W   A P P E A R S   I N   W O R K F L O W   �  � � � i     � � � I      �������� 
0 opened  ��  ��   � n     � � � I    �� ����� 0 logthis logThis �  ��� � m     � � � � �  o p e n e d ( )��  ��   �  f      �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � \ V HANDLER CALLED TO STORE THE CURRENT SELECTIONS. CALLED WHEN WORKFLOW IS SAVED OR RUN     � � � � �   H A N D L E R   C A L L E D   T O   S T O R E   T H E   C U R R E N T   S E L E C T I O N S .   C A L L E D   W H E N   W O R K F L O W   I S   S A V E D   O R   R U N   �  � � � i     � � � I      �������� $0 updateparameters updateParameters��  ��   � n     � � � I    �� ����� 0 logthis logThis �  ��� � m     � � � � � $ u p d a t e P a r a m e t e r s ( )��  ��   �  f      �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   �   LOGGING HANDLER     � � � � "   L O G G I N G   H A N D L E R   �  � � � i     � � � I      �� ����� 0 logthis logThis �  ��� � o      ���� 0 	itemtolog 	itemToLog��  ��   � Z     R � ����� � =     � � � o     ���� 0 loggingstatus loggingStatus � m    ��
�� boovtrue � O   
 N � � � Z    M � ��� � � =    � � � n     � � � m    �
� 
pcls � o    �~�~ 0 	itemtolog 	itemToLog � m    �}
�} 
list � k    C � �  � � � r     � � � l    ��|�{ � I   �z ��y
�z .corecnte****       **** � o    �x�x 0 	itemtolog 	itemToLog�y  �|  �{   � o      �w�w 0 	itemcount 	itemCount �  ��v � Y    C ��u � ��t � I  ( >�s ��r
�s .ascrcmnt****      � **** � l  ( : ��q�p � b   ( : � � � b   ( 5 � � � b   ( 3 � � � b   ( / � � � b   ( - � � � m   ( ) � � � � � . A C T I O N :   G e t   S e l e c t i o n :   � l  ) , ��o�n � c   ) , � � � o   ) *�m�m 0 i   � m   * +�l
�l 
TEXT�o  �n   � m   - . � � � � �  : � l  / 2 ��k�j � c   / 2 � � � o   / 0�i�i 0 	itemcount 	itemCount � m   0 1�h
�h 
TEXT�k  �j   � 1   3 4�g
�g 
spac � l  5 9 ��f�e � n   5 9 � � � 4   6 9�d �
�d 
cobj � o   7 8�c�c 0 i   � o   5 6�b�b 0 	itemtolog 	itemToLog�f  �e  �q  �p  �r  �u 0 i   � m   ! "�a�a  � l  " # �`�_  o   " #�^�^ 0 	itemcount 	itemCount�`  �_  �t  �v  ��   � I  F M�]�\
�] .ascrcmnt****      � **** l  F I�[�Z b   F I m   F G � . A C T I O N :   G e t   S e l e c t i o n :   o   G H�Y�Y 0 	itemtolog 	itemToLog�[  �Z  �\   � m   
 �X
�X misccura��  ��   �  l     �W�V�U�W  �V  �U   	
	 l     �T�T     LOCALIZATION ROUTINE    � *   L O C A L I Z A T I O N   R O U T I N E
  i    " I      �S�R�S &0 nslocalizedstring NSLocalizedString �Q 1      �P
�P 
kMsg�Q  �R   k       r      b     	 b      o     �O�O .0 actionidentiferstring actionIdentiferString m     �  - 1    �N
�N 
kMsg 1      �M
�M 
kMsg �L L       c    !"! n   #$# l   %�K�J% n   &'& I    �I(�H�I H0 "localizedstringforkey_value_table_ "localizedStringForKey_value_table_( )*) 1    �G
�G 
kMsg* +,+ l   -�F�E- m    �D
�D 
msng�F  �E  , .�C. l   /�B�A/ m    �@
�@ 
msng�B  �A  �C  �H  ' I    �?�>�=�? 
0 bundle  �>  �=  �K  �J  $  f    " m    �<
�< 
utxt�L   0�;0 l     �:�9�8�:  �9  �8  �;    1�71 l     �6�5�4�6  �5  �4  �7       �323�3  2 �2�2 0 get_selection Get_Selection3 �1 45�1 0 get_selection Get_Selection4 66 �0�/7
�0 misccura
�/ 
pcls7 �88  A M B u n d l e A c t i o n5 
�.9�-�, /:;<=>�.  9 �+�*�)�(�'�&�%�$
�+ 
pare�* 0 loggingstatus loggingStatus�) .0 actionidentiferstring actionIdentiferString�( @0 runwithinput_fromaction_error_ runWithInput_fromAction_error_�' 
0 opened  �& $0 updateparameters updateParameters�% 0 logthis logThis�$ &0 nslocalizedstring NSLocalizedString�-  
�, boovtrue: �# 6�"�!?@� �# @0 runwithinput_fromaction_error_ runWithInput_fromAction_error_�" �A� A  ���� 	0 input  � 0 anaction anAction� 0 errorref errorRef�!  ? ��������� 	0 input  � 0 anaction anAction� 0 errorref errorRef� 0 photos__ Photos__� 0 selecteditems selectedItems� (0 errormessagestring errorMessageString� 0 errornumber errorNumber� .0 localizederrormessage localizedErrorMessage@  G� O��� j��B� ����
�	� 0 logthis logThis
� 
capp
� 
selc
� 
list� &0 nslocalizedstring NSLocalizedString� (0 errormessagestring errorMessageStringB ���
� 
errn� 0 errornumber errorNumber�  ���� 60 nsapplescripterrormessage NSAppleScriptErrorMessage
� 
pcnt
�
 
msng
�	 
errn�  k :)�k+ O�E�O*�/ "*�,E�&E�O�jv  )j)�k+ Y hO�UOPW 1X  	)�k+ O�� )�k+ E�O�l��,FO�Y )��lh; � ���CD�� 
0 opened  �  �  C  D  ��� 0 logthis logThis� )�k+ < �  �����EF���  $0 updateparameters updateParameters��  ��  E  F  ����� 0 logthis logThis�� )�k+ = �� �����GH���� 0 logthis logThis�� ��I�� I  ���� 0 	itemtolog 	itemToLog��  G �������� 0 	itemtolog 	itemToLog�� 0 	itemcount 	itemCount�� 0 i  H �������� ��� �������
�� misccura
�� 
pcls
�� 
list
�� .corecnte****       ****
�� 
TEXT
�� 
spac
�� 
cobj
�� .ascrcmnt****      � ****�� Sb  e  I� A��,�  2�j E�O $k�kh ��&%�%��&%�%��/%j 	[OY��Y 	�%j 	UY h> ������JK���� &0 nslocalizedstring NSLocalizedString�� ��L�� L  ��
�� 
kMsg��  J ��
�� 
kMsgK ���������� 
0 bundle  
�� 
msng�� H0 "localizedstringforkey_value_table_ "localizedStringForKey_value_table_
�� 
utxt�� b  �%�%E�O)j+ ���m+ �& ascr  ��ޭ