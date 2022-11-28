// Create the Variables
speed_=3.3; // max horizontal speed
hspeed_=0; //horizontal speed
vspeed_=0; //vertical speed
hspeedPush_ = 0;
vspeedPush_ = 0;
acc_=1;
friction_ = .3;
jumpHeight_=-9.5;
grv_=0.45; //gravity
global.life=5; 


//Map the Keys
keyboard_set_map(ord("A"), vk_left); // Left Move: A / <=
keyboard_set_map(ord("D"), vk_right); // Right Move: D / =>
keyboard_set_map(ord("J"), ord("Z")); // Jump: J / Z
keyboard_set_map(vk_space, ord("W")); // Jump: W / Z
keyboard_set_map(vk_up, ord("W")) // Jump: Space / Z