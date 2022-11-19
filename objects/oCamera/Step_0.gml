if not instance_exists(target_) exit;
x = lerp(x, target_.x, 0.09);
y = lerp(y, target_.y, 0.09);
camera_set_view_pos(view_camera[0], x-width_/2, y-height_/2);
