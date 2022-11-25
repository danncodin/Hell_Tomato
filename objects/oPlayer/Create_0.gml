// Create the Variables
speed_=4; // max horizontal speed
hspeed_=0; //horizontal speed
vspeed_=0; //vertical speed
acc_=1;
friction_ = .3;
jumpHeight_=-10;
grv_=0.45; //gravity
global.bullets=50; //bullets Quantity
global.life=5; 

//Map the Keys
keyboard_set_map(ord("A"), vk_left); // Left Move: A / <=
keyboard_set_map(ord("D"), vk_right); // Right Move: D / =>
keyboard_set_map(ord("J"), ord("Z")); // Jump: J / Z
keyboard_set_map(ord("W"), ord("Z")); // Jump: W / Z
keyboard_set_map(vk_up, ord("Z")); // Jump: UP / Z
keyboard_set_map(vk_space, ord("Z")) // Jump: Space / Z
keyboard_set_map(ord("K"), ord("X")) // Shoot: K / X

// Scale Variables
x_scale_ = image_xscale*4;
y_scale_ = image_yscale;