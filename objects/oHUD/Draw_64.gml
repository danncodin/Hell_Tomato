if global.life=5
{
draw_sprite(sSlotLife, 5, 35, 62)
}
if global.life=4
{
draw_sprite(sSlotLife, 4, 35, 62)
}
if global.life=3
{
draw_sprite(sSlotLife, 3, 35, 62)
}
if global.life=2
{
draw_sprite(sSlotLife, 2, 35, 62)
}
if global.life=1
{
draw_sprite(sSlotLife, 1, 35, 62)
}
if global.life=0
{
draw_sprite(sSlotLife, 0, 35, 62)
}

draw_set_halign(fa_right);
draw_text(display_get_gui_width()-6, 4, "Score: " + string(score));
draw_set_halign(fa_left);