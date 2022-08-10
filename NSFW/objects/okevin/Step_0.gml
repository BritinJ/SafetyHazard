RightKey = keyboard_check(vk_right);
LeftKey = keyboard_check(vk_left);
UpKey = keyboard_check(vk_up);
DownKey = keyboard_check(vk_down);

xspd = (RightKey-LeftKey) * moveSpeed;
yspd = (DownKey-UpKey) * moveSpeed



//collsions

if place_meeting(x + xspd, y, oWall) == true
{ xspd = 0;}

if place_meeting(x, y+yspd, oWall) == true
{ yspd = 0; }

x  += xspd;
y += yspd;

