//Make sure to draw base sprite
draw_self();
//Draw hearts, taking into account player getting hit, etc.
draw_sprite( heart, 0, heart1_posx, heart1_posy );
draw_sprite( heart, 0, heart2_posx, heart2_posy ); 
draw_sprite( heart, 0, heart3_posx, heart3_posy );
//Draw headslot, with human head at first
//Then blob head when need be.
draw_sprite( headslot, 0, headslot_posx, headslot_posy );
//Draw fragments (obviously we'll need to have a check to see
//how many the player has currently retrieved.
draw_sprite( darkfragment, 0, darkfragment1_posx, darkfragment1_posy );
draw_sprite( darkfragment, 0, darkfragment2_posx, darkfragment2_posy );
draw_sprite( darkfragment, 0, darkfragment3_posx, darkfragment3_posy );
draw_sprite( darkfragment, 0, darkfragment4_posx, darkfragment4_posy );
draw_sprite( darkfragment, 0, darkfragment5_posx, darkfragment5_posy );
//Draw background for goobar, and then draw the bar's current fill
draw_sprite( goobar, 0, goobar_posx, goobar_posy );
