��- -   C r e a t e T a b l e 
 
 C R E A T E   T A B L E   " A d m i n "   ( 
 
         " i d "   U U I D   N O T   N U L L , 
 
         " n a m e "   V A R C H A R ( 2 5 )   N O T   N U L L , 
 
         " l a s t _ n a m e "   V A R C H A R ( 2 5 )   N O T   N U L L , 
 
         " p a s s w o r d "   V A R C H A R ( 1 6 )   N O T   N U L L , 
 
         " e m a i l "   V A R C H A R ( 6 0 )   N O T   N U L L , 
 
         " b i r t h d a t e "   T I M E S T A M P T Z ( 6 )   N O T   N U L L , 
 
         " p h o n e _ n u m b e r "   I N T E G E R , 
 
 
 
         C O N S T R A I N T   " A d m i n _ p k e y "   P R I M A R Y   K E Y   ( " i d " ) 
 
 ) ; 
 
 
 
 - -   C r e a t e T a b l e 
 
 C R E A T E   T A B L E   " B o o k "   ( 
 
         " i d "   U U I D   N O T   N U L L , 
 
         " n a m e "   V A R C H A R ( 5 0 )   N O T   N U L L , 
 
         " g e n d e r "   V A R C H A R ( 2 0 )   N O T   N U L L , 
 
         " p u b l i s h e r "   V A R C H A R ( 2 0 ) , 
 
         " i d _ p r o d u c e r "   U U I D   N O T   N U L L , 
 
         " e d i t i o n "   I N T E G E R   N O T   N U L L , 
 
         " s y n o p s i s "   T E X T   N O T   N U L L , 
 
         " p d f _ u r l "   V A R C H A R ( 2 5 5 )   N O T   N U L L , 
 
         " p r i c e "   R E A L   N O T   N U L L , 
 
         " p a g e s _ n u m b e r "   I N T E G E R   N O T   N U L L , 
 
         " d a t e "   T I M E S T A M P T Z ( 6 )   N O T   N U L L , 
 
         " c o v e r _ u r l "   V A R C H A R ( 2 5 5 )   N O T   N U L L , 
 
         " r a t i n g "   I N T E G E R , 
 
         " l a n g u a g e "   V A R C H A R ( 2 5 ) , 
 
         " s u b m i s s i o n _ s t a t u s "   B O O L E A N   N O T   N U L L , 
 
         " s u b m i s s i o n _ d a t e "   T I M E S T A M P T Z ( 6 )   N O T   N U L L , 
 
         " s u b m i s s i o n _ r e a s o n "   T E X T   N O T   N U L L , 
 
 
 
         C O N S T R A I N T   " B o o k _ p k e y "   P R I M A R Y   K E Y   ( " i d " ) 
 
 ) ; 
 
 
 
 - -   C r e a t e T a b l e 
 
 C R E A T E   T A B L E   " C a r t "   ( 
 
         " i d _ b o o k "   U U I D   N O T   N U L L , 
 
         " i d _ r e a d e r "   U U I D   N O T   N U L L , 
 
 
 
         C O N S T R A I N T   " C a r t _ p k e y "   P R I M A R Y   K E Y   ( " i d _ b o o k " , " i d _ r e a d e r " ) 
 
 ) ; 
 
 
 
 - -   C r e a t e T a b l e 
 
 C R E A T E   T A B L E   " P r o d u c e r "   ( 
 
         " i d "   U U I D   N O T   N U L L , 
 
         " n a m e "   V A R C H A R ( 2 5 )   N O T   N U L L , 
 
         " l a s t _ n a m e "   V A R C H A R ( 2 5 )   N O T   N U L L , 
 
         " p a s s w o r d "   V A R C H A R ( 1 6 )   N O T   N U L L , 
 
         " e m a i l "   V A R C H A R ( 6 0 )   N O T   N U L L , 
 
         " b i r t h d a t e "   T I M E S T A M P T Z ( 6 )   N O T   N U L L , 
 
         " p h o n e _ n u m b e r "   I N T E G E R , 
 
         " c n p j "   I N T E G E R   N O T   N U L L , 
 
         " b a n k _ n a m e "   V A R C H A R ( 2 5 )   N O T   N U L L , 
 
         " b a n k _ a g e n c y "   I N T E G E R   N O T   N U L L , 
 
         " n u m b e r _ a c c o u n t "   I N T E G E R   N O T   N U L L , 
 
         " a c c o u n t _ t y p e "   V A R C H A R ( 1 0 )   N O T   N U L L , 
 
 
 
         C O N S T R A I N T   " P r o d u c e r _ p k e y "   P R I M A R Y   K E Y   ( " i d " ) 
 
 ) ; 
 
 
 
 - -   C r e a t e T a b l e 
 
 C R E A T E   T A B L E   " P u r c h a s e "   ( 
 
         " i d _ b o o k "   U U I D   N O T   N U L L , 
 
         " i d _ r e a d e r "   U U I D   N O T   N U L L , 
 
         " d a t e "   T I M E S T A M P T Z ( 6 )   N O T   N U L L , 
 
 
 
         C O N S T R A I N T   " P u r c h a s e _ p k e y "   P R I M A R Y   K E Y   ( " i d _ b o o k " , " i d _ r e a d e r " ) 
 
 ) ; 
 
 
 
 - -   C r e a t e T a b l e 
 
 C R E A T E   T A B L E   " R e a d e r "   ( 
 
         " i d "   U U I D   N O T   N U L L , 
 
         " n a m e "   V A R C H A R ( 2 5 )   N O T   N U L L , 
 
         " l a s t _ n a m e "   V A R C H A R ( 2 5 )   N O T   N U L L , 
 
         " p a s s w o r d "   V A R C H A R ( 1 6 )   N O T   N U L L , 
 
         " e m a i l "   V A R C H A R ( 6 0 )   N O T   N U L L , 
 
         " b i r t h d a t e "   T I M E S T A M P ( 6 )   N O T   N U L L , 
 
         " p h o n e _ n u m b e r "   I N T E G E R , 
 
         " c p f "   I N T E G E R   N O T   N U L L , 
 
         " g e n d e r "   V A R C H A R ( 1 5 ) , 
 
         " c a r d h o l d e r "   V A R C H A R ( 5 0 )   N O T   N U L L , 
 
         " c v v "   I N T E G E R   N O T   N U L L , 
 
         " c a r d _ n u m b e r "   I N T E G E R   N O T   N U L L , 
 
         " c a r d _ d a t e "   T I M E S T A M P ( 6 )   N O T   N U L L , 
 
 
 
         C O N S T R A I N T   " R e a d e r _ p k e y "   P R I M A R Y   K E Y   ( " i d " ) 
 
 ) ; 
 
 
 
 - -   C r e a t e T a b l e 
 
 C R E A T E   T A B L E   " S u b m i s s i o n "   ( 
 
         " i d _ a d m i n "   U U I D   N O T   N U L L , 
 
         " i d _ b o o k "   U U I D   N O T   N U L L , 
 
 
 
         C O N S T R A I N T   " S u b m i s s i o n _ p k e y "   P R I M A R Y   K E Y   ( " i d _ a d m i n " , " i d _ b o o k " ) 
 
 ) ; 
 
 
 
 - -   C r e a t e I n d e x 
 
 C R E A T E   U N I Q U E   I N D E X   " e m a i l "   O N   " A d m i n " ( " e m a i l " ) ; 
 
 
 
 - -   C r e a t e I n d e x 
 
 C R E A T E   U N I Q U E   I N D E X   " P r o d u c e r _ e m a i l _ k e y "   O N   " P r o d u c e r " ( " e m a i l " ) ; 
 
 
 
 - -   C r e a t e I n d e x 
 
 C R E A T E   U N I Q U E   I N D E X   " P r o d u c e r _ c n p j _ k e y "   O N   " P r o d u c e r " ( " c n p j " ) ; 
 
 
 
 - -   C r e a t e I n d e x 
 
 C R E A T E   U N I Q U E   I N D E X   " R e a d e r _ e m a i l _ k e y "   O N   " R e a d e r " ( " e m a i l " ) ; 
 
 
 
 - -   C r e a t e I n d e x 
 
 C R E A T E   U N I Q U E   I N D E X   " R e a d e r _ c p f _ k e y "   O N   " R e a d e r " ( " c p f " ) ; 
 
 
 
 - -   A d d F o r e i g n K e y 
 
 A L T E R   T A B L E   " B o o k "   A D D   C O N S T R A I N T   " c o n s t _ b o o k _ 0 0 "   F O R E I G N   K E Y   ( " i d _ p r o d u c e r " )   R E F E R E N C E S   " P r o d u c e r " ( " i d " )   O N   D E L E T E   N O   A C T I O N   O N   U P D A T E   N O   A C T I O N ; 
 
 
 
 - -   A d d F o r e i g n K e y 
 
 A L T E R   T A B L E   " C a r t "   A D D   C O N S T R A I N T   " c o n s t _ c a r t _ 0 0 "   F O R E I G N   K E Y   ( " i d _ r e a d e r " )   R E F E R E N C E S   " R e a d e r " ( " i d " )   O N   D E L E T E   N O   A C T I O N   O N   U P D A T E   N O   A C T I O N ; 
 
 
 
 - -   A d d F o r e i g n K e y 
 
 A L T E R   T A B L E   " C a r t "   A D D   C O N S T R A I N T   " c o n s t _ c a r t _ 0 1 "   F O R E I G N   K E Y   ( " i d _ b o o k " )   R E F E R E N C E S   " B o o k " ( " i d " )   O N   D E L E T E   N O   A C T I O N   O N   U P D A T E   N O   A C T I O N ; 
 
 
 
 - -   A d d F o r e i g n K e y 
 
 A L T E R   T A B L E   " P u r c h a s e "   A D D   C O N S T R A I N T   " c o n s t _ p u r c h a s e _ 0 0 "   F O R E I G N   K E Y   ( " i d _ r e a d e r " )   R E F E R E N C E S   " R e a d e r " ( " i d " )   O N   D E L E T E   N O   A C T I O N   O N   U P D A T E   N O   A C T I O N ; 
 
 
 
 - -   A d d F o r e i g n K e y 
 
 A L T E R   T A B L E   " P u r c h a s e "   A D D   C O N S T R A I N T   " c o n s t _ p u r c h a s e _ 0 1 "   F O R E I G N   K E Y   ( " i d _ b o o k " )   R E F E R E N C E S   " B o o k " ( " i d " )   O N   D E L E T E   N O   A C T I O N   O N   U P D A T E   N O   A C T I O N ; 
 
 
 
 - -   A d d F o r e i g n K e y 
 
 A L T E R   T A B L E   " S u b m i s s i o n "   A D D   C O N S T R A I N T   " c o n s t _ s u b m i s s i o n _ 0 0 "   F O R E I G N   K E Y   ( " i d _ a d m i n " )   R E F E R E N C E S   " A d m i n " ( " i d " )   O N   D E L E T E   N O   A C T I O N   O N   U P D A T E   N O   A C T I O N ; 
 
 
 
 - -   A d d F o r e i g n K e y 
 
 A L T E R   T A B L E   " S u b m i s s i o n "   A D D   C O N S T R A I N T   " c o n s t _ s u b m i s s i o n _ 0 1 "   F O R E I G N   K E Y   ( " i d _ b o o k " )   R E F E R E N C E S   " B o o k " ( " i d " )   O N   D E L E T E   N O   A C T I O N   O N   U P D A T E   N O   A C T I O N ; 
 
 
 
 