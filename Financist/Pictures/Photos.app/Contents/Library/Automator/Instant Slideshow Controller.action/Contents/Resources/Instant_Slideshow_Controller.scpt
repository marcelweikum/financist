FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ( "  Slideshow_Controller.applescript     � 	 	 D     S l i d e s h o w _ C o n t r o l l e r . a p p l e s c r i p t   
  
 l     ��  ��       Slideshow Controller     �   ,     S l i d e s h o w   C o n t r o l l e r      l     ��������  ��  ��        l     ��  ��    * $  Created by Sal Soghoian on 3/9/15.     �   H     C r e a t e d   b y   S a l   S o g h o i a n   o n   3 / 9 / 1 5 .      l     ��  ��    : 4  Copyright (c) 2015 Apple Inc. All rights reserved.     �   h     C o p y r i g h t   ( c )   2 0 1 5   A p p l e   I n c .   A l l   r i g h t s   r e s e r v e d .      l     ��������  ��  ��        h     �� �� ,0 slideshow_controller Slideshow_Controller  k            ! " ! j     �� #
�� 
pare # 4     �� $
�� 
pcls $ m     % % � & &  A M B u n d l e A c t i o n "  ' ( ' j   	 �� )�� 0 loggingstatus loggingStatus ) m   	 
��
�� boovtrue (  * + * j    �� ,�� .0 actionidentiferstring actionIdentiferString , m     - - � . .  P H O T O S - 0 5 +  / 0 / l     ��������  ��  ��   0  1 2 1 i     3 4 3 I      �� 5���� @0 runwithinput_fromaction_error_ runWithInput_fromAction_error_ 5  6 7 6 o      ���� 	0 input   7  8 9 8 o      ���� 0 anaction anAction 9  :�� : o      ���� 0 errorref errorRef��  ��   4 k    � ; ;  < = < n     > ? > I    �� @���� 0 logthis logThis @  A�� A m     B B � C C  r u n W i t h I n p u t ( & )��  ��   ?  f      =  D E D Q   � F G H F k   
{ I I  J K J l  
 
�� L M��   L 7 1 STORE THE ACTION PARAMETERS RECORD IN A VARIABLE    M � N N b   S T O R E   T H E   A C T I O N   P A R A M E T E R S   R E C O R D   I N   A   V A R I A B L E K  O P O r   
  Q R Q n  
  S T S I    �������� 0 
parameters  ��  ��   T  f   
  R l      U���� U o      ���� ,0 parametersdictionary parametersDictionary��  ��   P  V W V l   ��������  ��  ��   W  X Y X l   �� Z [��   Z ' ! EXTRACT CURRENT PARAMETER VALUES    [ � \ \ B   E X T R A C T   C U R R E N T   P A R A M E T E R   V A L U E S Y  ] ^ ] r     _ ` _ l    a���� a c     b c b l    d���� d n    e f e I    �� g���� 0 valueforkey_ valueForKey_ g  h�� h m     i i � j j   c o m m a n d I n d i c a t o r��  ��   f o    ���� ,0 parametersdictionary parametersDictionary��  ��   c m    ��
�� 
long��  ��   ` o      ���� $0 commandindicator commandIndicator ^  k l k n   % m n m I    %�� o���� 0 logthis logThis o  p�� p b    ! q r q m     s s � t t $ c o m m a n d I n d i c a t o r :   r o     ���� $0 commandindicator commandIndicator��  ��   n  f     l  u v u l  & &��������  ��  ��   v  w x w Z   &h y z {�� y =  & ) | } | o   & '���� $0 commandindicator commandIndicator } m   ' (����   z l  , z ~  � ~ k   , z � �  � � � l  , 1 � � � � r   , 1 � � � c   , / � � � o   , -���� 	0 input   � m   - .��
�� 
list � o      ���� 	0 input   � %  convert to AppleScript objects    � � � � >   c o n v e r t   t o   A p p l e S c r i p t   o b j e c t s �  � � � Z  2 F � ����� � =  2 6 � � � o   2 3���� 	0 input   � J   3 5����   � R   9 B�� ���
�� .ascrerr ****      � **** � l  ; A ����� � n  ; A � � � I   < A�� ����� &0 nslocalizedstring NSLocalizedString �  ��� � m   < = � � � � �  N O _ I N P U T��  ��   �  f   ; <��  ��  ��  ��  ��   �  � � � l  G G��������  ��  ��   �  � � � l   G G�� � ���   ���
                 set themeIndicator to ((parametersDictionary's valueForKey:"themeIndicator") as integer)
                 my logThis("themeIndicator: " & themeIndicator)
                 if themeIndicator is not 0 then
                 set oneClickSlideshowStyleID to item themeIndicator of {"marimba://KenBurns","marimba://Origami","marimba://Reflections","marimba://SlidingPanels","marimba://VintagePrints","opus://com.apple.opus.producer.classic","opus://com.apple.opus.producer.magazine"}
                 tell current application
                 do shell script "defaults write com.apple.Photos oneClickSlideshowStyleID " & quoted form of oneClickSlideshowStyleID
                 end tell
                 end if
                     � � � �� 
                                   s e t   t h e m e I n d i c a t o r   t o   ( ( p a r a m e t e r s D i c t i o n a r y ' s   v a l u e F o r K e y : " t h e m e I n d i c a t o r " )   a s   i n t e g e r ) 
                                   m y   l o g T h i s ( " t h e m e I n d i c a t o r :   "   &   t h e m e I n d i c a t o r ) 
                                   i f   t h e m e I n d i c a t o r   i s   n o t   0   t h e n 
                                   s e t   o n e C l i c k S l i d e s h o w S t y l e I D   t o   i t e m   t h e m e I n d i c a t o r   o f   { " m a r i m b a : / / K e n B u r n s " , " m a r i m b a : / / O r i g a m i " , " m a r i m b a : / / R e f l e c t i o n s " , " m a r i m b a : / / S l i d i n g P a n e l s " , " m a r i m b a : / / V i n t a g e P r i n t s " , " o p u s : / / c o m . a p p l e . o p u s . p r o d u c e r . c l a s s i c " , " o p u s : / / c o m . a p p l e . o p u s . p r o d u c e r . m a g a z i n e " } 
                                   t e l l   c u r r e n t   a p p l i c a t i o n 
                                   d o   s h e l l   s c r i p t   " d e f a u l t s   w r i t e   c o m . a p p l e . P h o t o s   o n e C l i c k S l i d e s h o w S t y l e I D   "   &   q u o t e d   f o r m   o f   o n e C l i c k S l i d e s h o w S t y l e I D 
                                   e n d   t e l l 
                                   e n d   i f 
                                   �  � � � r   G J � � � m   G H � � � � �  P h o t o s � o      ���� 0 photos__ Photos__ �  ��� � O   K z � � � k   R y � �  � � � I  R W������
�� .miscactvnull��� ��� null��  ��   �  � � � Z   X o � ����� � =  X ] � � � 1   X [��
�� 
SSrn � m   [ \��
�� boovtrue � k   ` k � �  � � � I  ` e������
�� .IPXSindsnull��� ��� null��  ��   �  ��� � I  f k�� ���
�� .sysodelanull��� ��� nmbr � m   f g � � ?�      ��  ��  ��  ��   �  ��� � I  p y���� �
�� .IPXSslidnull��� ��� null��   � �� ���
�� 
slUS � o   t u���� 	0 input  ��  ��   � 4   K O�� �
�� 
capp � o   M N���� 0 photos__ Photos__��    9 3 start slideshow using passed references as content    � � � � f   s t a r t   s l i d e s h o w   u s i n g   p a s s e d   r e f e r e n c e s   a s   c o n t e n t {  � � � =  } � � � � o   } ~���� $0 commandindicator commandIndicator � m   ~ ����  �  � � � l  � � � � � � k   � � � �  � � � r   � � � � � m   � � � � � � �  P h o t o s � o      ���� 0 photos__ Photos__ �  ��� � O   � � � � � k   � � � �  � � � I  � �������
�� .miscactvnull��� ��� null��  ��   �  ��� � Z   � � � ����� � =  � � � � � 1   � ���
�� 
SSrn � m   � ���
�� boovtrue � I  � �������
�� .IPXSindsnull��� ��� null��  ��  ��  ��  ��   � 4   � ��� �
�� 
capp � o   � ����� 0 photos__ Photos__��   �   stop slideshow    � � � �    s t o p   s l i d e s h o w �  � � � =  � � � � � o   � ����� $0 commandindicator commandIndicator � m   � �����  �  � � � l  � � � � � � k   � � � �  � � � r   � � � � � m   � � � � � � �  P h o t o s � o      ���� 0 photos__ Photos__ �  ��� � O   � � � � � k   � � � �  � � � I  � �������
�� .miscactvnull��� ��� null��  ��   �  ��� � Z   � � � ����� � =  � � � � � 1   � ��
� 
SSrn � m   � ��~
�~ boovtrue � I  � ��}�|�{
�} .IPXSslpanull��� ��� null�|  �{  ��  ��  ��   � 4   � ��z �
�z 
capp � o   � ��y�y 0 photos__ Photos__��   �   pause slideshow    � � � �     p a u s e   s l i d e s h o w �  � � � =  � � � � � o   � ��x�x $0 commandindicator commandIndicator � m   � ��w�w  �  � � � l  � � �  � k   �  r   � � m   � � �  P h o t o s o      �v�v 0 photos__ Photos__ �u O   �	
	 k   �  I  � ��t�s�r
�t .miscactvnull��� ��� null�s  �r   �q Z   ��p�o =  � � 1   � ��n
�n 
SSrn m   � ��m
�m boovtrue I  � ��l�k�j
�l .IPXSslrenull��� ��� null�k  �j  �p  �o  �q  
 4   � ��i
�i 
capp o   � ��h�h 0 photos__ Photos__�u   �   resume slideshow     � "   r e s u m e   s l i d e s h o w �  =  o  �g�g $0 commandindicator commandIndicator m  �f�f   l 4 k  4   r  !"! m  ## �$$  P h o t o s" o      �e�e 0 photos__ Photos__  %�d% O  4&'& k  3(( )*) I !�c�b�a
�c .miscactvnull��� ��� null�b  �a  * +�`+ Z  "3,-�_�^, = "'./. 1  "%�]
�] 
SSrn/ m  %&�\
�\ boovtrue- I */�[�Z�Y
�[ .IPXSslnenull��� ��� null�Z  �Y  �_  �^  �`  ' 4  �X0
�X 
capp0 o  �W�W 0 photos__ Photos__�d     next slide    �11    n e x t   s l i d e 232 = 7<454 o  78�V�V $0 commandindicator commandIndicator5 m  8;�U�U 3 6�T6 l ?d7897 k  ?d:: ;<; r  ?D=>= m  ?B?? �@@  P h o t o s> o      �S�S 0 photos__ Photos__< A�RA O  EdBCB k  LcDD EFE I LQ�Q�P�O
�Q .miscactvnull��� ��� null�P  �O  F G�NG Z  RcHI�M�LH = RWJKJ 1  RU�K
�K 
SSrnK m  UV�J
�J boovtrueI I Z_�I�H�G
�I .IPXSslprnull��� ��� null�H  �G  �M  �L  �N  C 4  EI�FL
�F 
cappL o  GH�E�E 0 photos__ Photos__�R  8   previous slide   9 �MM    p r e v i o u s   s l i d e�T  ��   x NON r  inPQP m  ilRR �SS  P h o t o sQ o      �D�D 0 photos__ Photos__O TUT O  oyVWV L  vxXX o  vw�C�C 	0 input  W 4  os�BY
�B 
cappY o  qr�A�A 0 photos__ Photos__U Z�@Z l zz�?�>�=�?  �>  �=  �@   G R      �<[\
�< .ascrerr ****      � ****[ o      �;�; (0 errormessagestring errorMessageString\ �:]�9
�: 
errn] o      �8�8 0 errornumber errorNumber�9   H k  ��^^ _`_ n ��aba I  ���7c�6�7 0 logthis logThisc d�5d o  ���4�4 (0 errormessagestring errorMessageString�5  �6  b  f  ��` e�3e Z  ��fg�2hf > ��iji o  ���1�1 0 errornumber errorNumberj m  ���0�0��g k  ��kk lml r  ��non l ��p�/�.p n ��qrq I  ���-s�,�- &0 nslocalizedstring NSLocalizedStrings t�+t m  ��uu �vv 4 S L I D E S H O W _ C O N T R O L L E R _ E R R O R�+  �,  r  f  ���/  �.  o o      �*�* .0 localizederrormessage localizedErrorMessagem wxw r  ��yzy K  ��{{ �)|�(�) 60 nsapplescripterrormessage NSAppleScriptErrorMessage| o  ���'�' .0 localizederrormessage localizedErrorMessage�(  z n      }~} 1  ���&
�& 
pcnt~ o  ���%�% 0 errorref errorRefx �$ L  ���� m  ���#
�# 
msng�$  �2  h R  ���"�!�
�" .ascrerr ****      � ****�!  � � ��
�  
errn� m  �������  �3   E ��� l ������  �  �  �   2 ��� l     ����  �  �  � ��� l      ����  � = 7 HANDLER CALLED BEFORE ACTION VIEW APPEARS IN WORKFLOW    � ��� n   H A N D L E R   C A L L E D   B E F O R E   A C T I O N   V I E W   A P P E A R S   I N   W O R K F L O W  � ��� i    ��� I      ���� 
0 opened  �  �  � n    ��� I    ���� 0 logthis logThis� ��� m    �� ���  o p e n e d ( )�  �  �  f     � ��� l     ����  �  �  � ��� l      ����  � \ V HANDLER CALLED TO STORE THE CURRENT SELECTIONS. CALLED WHEN WORKFLOW IS SAVED OR RUN    � ��� �   H A N D L E R   C A L L E D   T O   S T O R E   T H E   C U R R E N T   S E L E C T I O N S .   C A L L E D   W H E N   W O R K F L O W   I S   S A V E D   O R   R U N  � ��� i    ��� I      ��
�	� $0 updateparameters updateParameters�
  �	  � n    ��� I    ���� 0 logthis logThis� ��� m    �� ��� $ u p d a t e P a r a m e t e r s ( )�  �  �  f     � ��� l     ����  �  �  � ��� l      ����  �   LOGGING HANDLER    � ��� "   L O G G I N G   H A N D L E R  � ��� i    ��� I      ��� � 0 logthis logThis� ���� o      ���� 0 	itemtolog 	itemToLog��  �   � Z     R������� =    ��� o     ���� 0 loggingstatus loggingStatus� m    ��
�� boovtrue� O   
 N��� Z    M������ =   ��� n    ��� m    ��
�� 
pcls� o    ���� 0 	itemtolog 	itemToLog� m    ��
�� 
list� k    C�� ��� r    ��� l   ������ I   �����
�� .corecnte****       ****� o    ���� 0 	itemtolog 	itemToLog��  ��  ��  � o      ���� 0 	itemcount 	itemCount� ���� Y    C�������� I  ( >�����
�� .ascrcmnt****      � ****� l  ( :������ b   ( :��� b   ( 5��� b   ( 3��� b   ( /��� b   ( -��� m   ( )�� ��� < A C T I O N :   S l i d e s h o w   C o n t r o l l e r :  � l  ) ,������ c   ) ,��� o   ) *���� 0 i  � m   * +��
�� 
TEXT��  ��  � m   - .�� ���  :� l  / 2������ c   / 2��� o   / 0���� 0 	itemcount 	itemCount� m   0 1��
�� 
TEXT��  ��  � 1   3 4��
�� 
spac� l  5 9������ n   5 9��� 4   6 9���
�� 
cobj� o   7 8���� 0 i  � o   5 6���� 0 	itemtolog 	itemToLog��  ��  ��  ��  ��  �� 0 i  � m   ! "���� � l  " #������ o   " #���� 0 	itemcount 	itemCount��  ��  ��  ��  ��  � I  F M�����
�� .ascrcmnt****      � ****� l  F I������ b   F I��� m   F G�� ��� < A C T I O N :   S l i d e s h o w   C o n t r o l l e r :  � o   G H���� 0 	itemtolog 	itemToLog��  ��  ��  � m   
 ��
�� misccura��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  �   LOCALIZATION ROUTINE   � ��� *   L O C A L I Z A T I O N   R O U T I N E� ���� i    "��� I      ������� &0 nslocalizedstring NSLocalizedString� ���� 1      ��
�� 
kMsg��  ��  � k     �� ��� r     ��� b     	��� b     � � o     ���� .0 actionidentiferstring actionIdentiferString  m     �  -� 1    ��
�� 
kMsg� 1      ��
�� 
kMsg� �� L     c     n    l   	����	 n   

 I    ������ H0 "localizedstringforkey_value_table_ "localizedStringForKey_value_table_  1    ��
�� 
kMsg  l   ���� m    ��
�� 
msng��  ��   �� l   ���� m    ��
�� 
msng��  ��  ��  ��   I    �������� 
0 bundle  ��  ��  ��  ��    f     m    ��
�� 
utxt��  ��    �� l     ��������  ��  ��  ��       ����   ���� ,0 slideshow_controller Slideshow_Controller �� �� ,0 slideshow_controller Slideshow_Controller  ����
�� misccura
�� 
pcls �  A M B u n d l e A c t i o n 
������ - !��   ����������������
�� 
pare�� 0 loggingstatus loggingStatus�� .0 actionidentiferstring actionIdentiferString�� @0 runwithinput_fromaction_error_ runWithInput_fromAction_error_�� 
0 opened  �� $0 updateparameters updateParameters�� 0 logthis logThis�� &0 nslocalizedstring NSLocalizedString��  
�� boovtrue �� 4����"#���� @0 runwithinput_fromaction_error_ runWithInput_fromAction_error_�� ��$�� $  �������� 	0 input  �� 0 anaction anAction�� 0 errorref errorRef��  " 	�������������������� 	0 input  �� 0 anaction anAction�� 0 errorref errorRef�� ,0 parametersdictionary parametersDictionary�� $0 commandindicator commandIndicator�� 0 photos__ Photos__�� (0 errormessagestring errorMessageString�� 0 errornumber errorNumber�� .0 localizederrormessage localizedErrorMessage# ' B���� i���� s�� ��� ��������� ������� � ������#�~�}?�|R�{%�zu�y�x�w�v�� 0 logthis logThis�� 0 
parameters  �� 0 valueforkey_ valueForKey_
�� 
long
�� 
list�� &0 nslocalizedstring NSLocalizedString
�� 
capp
�� .miscactvnull��� ��� null
�� 
SSrn
�� .IPXSindsnull��� ��� null
�� .sysodelanull��� ��� nmbr
�� 
slUS
�� .IPXSslidnull��� ��� null
�� .IPXSslpanull��� ��� null
�� .IPXSslrenull��� ��� null� 
�~ .IPXSslnenull��� ��� null�} 
�| .IPXSslprnull��� ��� null�{ (0 errormessagestring errorMessageString% �u�t�s
�u 
errn�t 0 errornumber errorNumber�s  �z���y 60 nsapplescripterrormessage NSAppleScriptErrorMessage
�x 
pcnt
�w 
msng
�v 
errn���)�k+ Ov)j+ E�O��k+ �&E�O)�%k+ O�j  S��&E�O�jv  )j)�k+ 	Y hO�E�O*�/ )*j O*�,e  *j O�j Y hO*a �l UY ��k  *a E�O*�/ *j O*�,e  
*j Y hUY ��l  *a E�O*�/ *j O*�,e  
*j Y hUY ��m  *a E�O*�/ *j O*�,e  
*j Y hUY c�a   *a E�O*�/ *j O*�,e  
*j Y hUY 3�a   *a E�O*�/ *j O*�,e  
*j Y hUY hOa E�O*�/ �UOPW ?X   )�k+ O�a ! !)a "k+ 	E�Oa #�l�a $,FOa %Y )a &a !lhOP �r��q�p&'�o�r 
0 opened  �q  �p  &  ' ��n�n 0 logthis logThis�o )�k+  �m��l�k()�j�m $0 updateparameters updateParameters�l  �k  (  ) ��i�i 0 logthis logThis�j )�k+   �h��g�f*+�e�h 0 logthis logThis�g �d,�d ,  �c�c 0 	itemtolog 	itemToLog�f  * �b�a�`�b 0 	itemtolog 	itemToLog�a 0 	itemcount 	itemCount�` 0 i  + �_�^�]�\��[��Z�Y�X�
�_ misccura
�^ 
pcls
�] 
list
�\ .corecnte****       ****
�[ 
TEXT
�Z 
spac
�Y 
cobj
�X .ascrcmnt****      � ****�e Sb  e  I� A��,�  2�j E�O $k�kh ��&%�%��&%�%��/%j 	[OY��Y 	�%j 	UY h! �W��V�U-.�T�W &0 nslocalizedstring NSLocalizedString�V �S/�S /  �R
�R 
kMsg�U  - �Q
�Q 
kMsg. �P�O�N�M�P 
0 bundle  
�O 
msng�N H0 "localizedstringforkey_value_table_ "localizedStringForKey_value_table_
�M 
utxt�T b  �%�%E�O)j+ ���m+ �& ascr  ��ޭ