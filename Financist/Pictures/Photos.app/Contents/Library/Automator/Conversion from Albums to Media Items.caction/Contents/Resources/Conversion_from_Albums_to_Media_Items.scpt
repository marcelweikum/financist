FasdUAS 1.101.10   ��   ��    k             l     ��  ��    9 3  Conversion_from_Albums_to_Media_Items.applescript     � 	 	 f     C o n v e r s i o n _ f r o m _ A l b u m s _ t o _ M e d i a _ I t e m s . a p p l e s c r i p t   
  
 l     ��  ��    - '  Conversion from Albums to Media Items     �   N     C o n v e r s i o n   f r o m   A l b u m s   t o   M e d i a   I t e m s      l     ��������  ��  ��        l     ��  ��    + %  Created by Sal Soghoian on 3/14/15.     �   J     C r e a t e d   b y   S a l   S o g h o i a n   o n   3 / 1 4 / 1 5 .      l     ��  ��    : 4  Copyright (c) 2015 Apple Inc. All rights reserved.     �   h     C o p y r i g h t   ( c )   2 0 1 5   A p p l e   I n c .   A l l   r i g h t s   r e s e r v e d .      l     ��������  ��  ��        h     �� �� N0 %conversion_from_albums_to_media_items %Conversion_from_Albums_to_Media_Items  k            ! " ! j     �� #
�� 
pare # 4     �� $
�� 
pcls $ m     % % � & &  A M B u n d l e A c t i o n "  ' ( ' j   	 �� )�� 0 loggingstatus loggingStatus ) m   	 
��
�� boovtrue (  * + * j    �� ,�� .0 actionidentiferstring actionIdentiferString , m     - - � . .  P H O T O S - 1 2 +  / 0 / l     ��������  ��  ��   0  1 2 1 i     3 4 3 I      �� 5���� @0 runwithinput_fromaction_error_ runWithInput_fromAction_error_ 5  6 7 6 o      ���� 	0 input   7  8 9 8 o      ���� 0 anaction anAction 9  :�� : o      ���� 0 errorref errorRef��  ��   4 Q     � ; < = ; k    a > >  ? @ ? n   	 A B A I    	�� C���� 0 logthis logThis C  D�� D m     E E � F F  r u n W i t h I n p u t ( & )��  ��   B  f     @  G H G l  
  I J K I r   
  L M L c   
  N O N o   
 ���� 	0 input   O m    ��
�� 
list M o      ���� 	0 input   J %  convert to AppleScript objects    K � P P >   c o n v e r t   t o   A p p l e S c r i p t   o b j e c t s H  Q R Q l   ��������  ��  ��   R  S T S r     U V U m     W W � X X  P h o t o s V o      ���� 0 photos__ Photos__ T  Y Z Y O    _ [ \ [ k    ^ ] ]  ^ _ ^ n   ' ` a ` I    '�� b���� 0 logthis logThis b  c�� c b    # d e d m     f f � g g  i m p u t   c o u n t :   e l   " h���� h I   "�� i��
�� .corecnte****       **** i o    ���� 	0 input  ��  ��  ��  ��  ��   a  f     _  j k j r   ( , l m l J   ( *����   m o      ���� "0 thesemediaitems theseMediaItems k  n o n Y   - N p�� q r�� p k   ; I s s  t u t r   ; A v w v n   ; ? x y x 4   < ?�� z
�� 
cobj z o   = >���� 0 i   y o   ; <���� 	0 input   w o      ���� 0 	thisalbum 	thisAlbum u  {�� { r   B I | } | b   B G ~  ~ o   B C���� "0 thesemediaitems theseMediaItems  l  C F ����� � n   C F � � � 2   D F��
�� 
IPmi � o   C D���� 0 	thisalbum 	thisAlbum��  ��   } o      ���� "0 thesemediaitems theseMediaItems��  �� 0 i   q m   0 1����  r l  1 6 ����� � I  1 6�� ���
�� .corecnte****       **** � o   1 2���� 	0 input  ��  ��  ��  ��   o  � � � n  O [ � � � I   P [�� ����� 0 logthis logThis �  ��� � b   P W � � � m   P Q � � � � �  r e s u l t   c o u n t :   � l  Q V ����� � I  Q V�� ���
�� .corecnte****       **** � o   Q R���� "0 thesemediaitems theseMediaItems��  ��  ��  ��  ��   �  f   O P �  ��� � L   \ ^ � � o   \ ]���� "0 thesemediaitems theseMediaItems��   \ 4    �� �
�� 
capp � o    ���� 0 photos__ Photos__ Z  ��� � l  ` `��������  ��  ��  ��   < R      �� � �
�� .ascrerr ****      � **** � o      ���� (0 errormessagestring errorMessageString � �� ���
�� 
errn � o      ���� 0 errornumber errorNumber��   = k   i � � �  � � � n  i o � � � I   j o�� ����� 0 logthis logThis �  ��� � o   j k���� (0 errormessagestring errorMessageString��  ��   �  f   i j �  ��� � Z   p � � ��� � � >  p s � � � o   p q���� 0 errornumber errorNumber � m   q r������ � k   v � � �  � � � r   v ~ � � � l  v | ����� � n  v | � � � I   w |�� ����� &0 nslocalizedstring NSLocalizedString �  ��� � m   w x � � � � � " C O N V E R S I O N _ F A I L E D��  ��   �  f   v w��  ��   � o      ���� .0 localizederrormessage localizedErrorMessage �  � � � r    � � � � K    � � � �� ����� 60 nsapplescripterrormessage NSAppleScriptErrorMessage � o   � ����� .0 localizederrormessage localizedErrorMessage��   � n       � � � 1   � ���
�� 
pcnt � o   � ����� 0 errorref errorRef �  ��� � L   � � � � m   � ���
�� 
msng��  ��   � R   � ����� �
�� .ascrerr ****      � ****��   � �� ���
�� 
errn � m   � ���������  ��   2  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � = 7 HANDLER CALLED BEFORE ACTION VIEW APPEARS IN WORKFLOW     � � � � n   H A N D L E R   C A L L E D   B E F O R E   A C T I O N   V I E W   A P P E A R S   I N   W O R K F L O W   �  � � � i     � � � I      �������� 
0 opened  ��  ��   � n     � � � I    �� ����� 0 logthis logThis �  ��� � m     � � � � �  o p e n e d ( )��  ��   �  f      �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � \ V HANDLER CALLED TO STORE THE CURRENT SELECTIONS. CALLED WHEN WORKFLOW IS SAVED OR RUN     � � � � �   H A N D L E R   C A L L E D   T O   S T O R E   T H E   C U R R E N T   S E L E C T I O N S .   C A L L E D   W H E N   W O R K F L O W   I S   S A V E D   O R   R U N   �  � � � i     � � � I      ������� $0 updateparameters updateParameters��  �   � n     � � � I    �~ ��}�~ 0 logthis logThis �  ��| � m     � � � � � $ u p d a t e P a r a m e t e r s ( )�|  �}   �  f      �  � � � l     �{�z�y�{  �z  �y   �  � � � l      �x � ��x   �   LOGGING HANDLER     � � � � "   L O G G I N G   H A N D L E R   �  � � � i     � � � I      �w ��v�w 0 logthis logThis �  ��u � o      �t�t 0 	itemtolog 	itemToLog�u  �v   � Z     R � ��s�r � =     � � � o     �q�q 0 loggingstatus loggingStatus � m    �p
�p boovtrue � O   
 N � � � Z    M � ��o � � =    � � � n     � � � m    �n
�n 
pcls � o    �m�m 0 	itemtolog 	itemToLog � m    �l
�l 
list � k    C � �  � � � r     � � � l    ��k�j � I   �i ��h
�i .corecnte****       **** � o    �g�g 0 	itemtolog 	itemToLog�h  �k  �j   � o      �f�f 0 	itemcount 	itemCount �  �e  Y    C�d�c I  ( >�b�a
�b .ascrcmnt****      � **** l  ( :�`�_ b   ( : b   ( 5	 b   ( 3

 b   ( / b   ( - m   ( ) � \ A C T I O N :   C o n v e r s i o n   f r o m   A l b u m   t o   M e d i a   I t e m s :   l  ) ,�^�] c   ) , o   ) *�\�\ 0 i   m   * +�[
�[ 
TEXT�^  �]   m   - . �  : l  / 2�Z�Y c   / 2 o   / 0�X�X 0 	itemcount 	itemCount m   0 1�W
�W 
TEXT�Z  �Y  	 1   3 4�V
�V 
spac l  5 9�U�T n   5 9 4   6 9�S
�S 
cobj o   7 8�R�R 0 i   o   5 6�Q�Q 0 	itemtolog 	itemToLog�U  �T  �`  �_  �a  �d 0 i   m   ! "�P�P  l  " #�O�N o   " #�M�M 0 	itemcount 	itemCount�O  �N  �c  �e  �o   � I  F M�L�K
�L .ascrcmnt****      � **** l  F I �J�I  b   F I!"! m   F G## �$$ \ A C T I O N :   C o n v e r s i o n   f r o m   A l b u m   t o   M e d i a   I t e m s :  " o   G H�H�H 0 	itemtolog 	itemToLog�J  �I  �K   � m   
 �G
�G misccura�s  �r   � %&% l     �F�E�D�F  �E  �D  & '(' l     �C)*�C  )   LOCALIZATION ROUTINE   * �++ *   L O C A L I Z A T I O N   R O U T I N E( ,-, i    "./. I      �B0�A�B &0 nslocalizedstring NSLocalizedString0 1�@1 1      �?
�? 
kMsg�@  �A  / k     22 343 r     565 b     	787 b     9:9 o     �>�> .0 actionidentiferstring actionIdentiferString: m    ;; �<<  -8 1    �=
�= 
kMsg6 1      �<
�< 
kMsg4 =�;= L    >> c    ?@? n   ABA l   C�:�9C n   DED I    �8F�7�8 H0 "localizedstringforkey_value_table_ "localizedStringForKey_value_table_F GHG 1    �6
�6 
kMsgH IJI l   K�5�4K m    �3
�3 
msng�5  �4  J L�2L l   M�1�0M m    �/
�/ 
msng�1  �0  �2  �7  E I    �.�-�,�. 
0 bundle  �-  �,  �:  �9  B  f    @ m    �+
�+ 
utxt�;  - N�*N l     �)�(�'�)  �(  �'  �*    O�&O l     �%�$�#�%  �$  �#  �&       �"PQ�"  P �!�! N0 %conversion_from_albums_to_media_items %Conversion_from_Albums_to_Media_ItemsQ �  RS�  N0 %conversion_from_albums_to_media_items %Conversion_from_Albums_to_Media_ItemsR TT ��U
� misccura
� 
pclsU �VV  A M B u n d l e A c t i o nS 
�W�� -XYZ[\�  W ��������
� 
pare� 0 loggingstatus loggingStatus� .0 actionidentiferstring actionIdentiferString� @0 runwithinput_fromaction_error_ runWithInput_fromAction_error_� 
0 opened  � $0 updateparameters updateParameters� 0 logthis logThis� &0 nslocalizedstring NSLocalizedString�  
� boovtrueX � 4��]^�� @0 runwithinput_fromaction_error_ runWithInput_fromAction_error_� �_� _  ���� 	0 input  � 0 anaction anAction� 0 errorref errorRef�  ] 
�
�	���������
 	0 input  �	 0 anaction anAction� 0 errorref errorRef� 0 photos__ Photos__� "0 thesemediaitems theseMediaItems� 0 i  � 0 	thisalbum 	thisAlbum� (0 errormessagestring errorMessageString� 0 errornumber errorNumber� .0 localizederrormessage localizedErrorMessage^  E� �� W�� f������ ���`�� ������������  0 logthis logThis
�� 
list
�� 
capp
�� .corecnte****       ****
�� 
cobj
�� 
IPmi�� (0 errormessagestring errorMessageString` ������
�� 
errn�� 0 errornumber errorNumber��  ������ &0 nslocalizedstring NSLocalizedString�� 60 nsapplescripterrormessage NSAppleScriptErrorMessage
�� 
pcnt
�� 
msng
�� 
errn� � c)�k+ O��&E�O�E�O*�/ E)�j %k+ OjvE�O  k�j kh ��/E�O���-%E�[OY��O)�j %k+ O�UOPW 7X 
 )�k+ O�� )�k+ E�O�l�a ,FOa Y 
)a �lhY �� �����ab���� 
0 opened  ��  ��  a  b  ����� 0 logthis logThis�� )�k+ Z �� �����cd���� $0 updateparameters updateParameters��  ��  c  d  ����� 0 logthis logThis�� )�k+ [ �� �����ef���� 0 logthis logThis�� ��g�� g  ���� 0 	itemtolog 	itemToLog��  e �������� 0 	itemtolog 	itemToLog�� 0 	itemcount 	itemCount�� 0 i  f ����������������#
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
�� .ascrcmnt****      � ****�� Sb  e  I� A��,�  2�j E�O $k�kh ��&%�%��&%�%��/%j 	[OY��Y 	�%j 	UY h\ ��/����hi���� &0 nslocalizedstring NSLocalizedString�� ��j�� j  ��
�� 
kMsg��  h ��
�� 
kMsgi ;���������� 
0 bundle  
�� 
msng�� H0 "localizedstringforkey_value_table_ "localizedStringForKey_value_table_
�� 
utxt�� b  �%�%E�O)j+ ���m+ �&ascr  ��ޭ