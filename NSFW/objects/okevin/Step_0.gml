RightKey = keyboard_check(vk_right);
LeftKey = keyboard_check(vk_left);
UpKey = keyboard_check(vk_up);
DownKey = keyboard_check(vk_down);

xspd = (RightKey-LeftKey) * moveSpeed;
yspd = (DownKey-UpKey) * moveSpeed;



//collsions

if place_meeting(x + xspd, y, oWall) == true
{ xspd = 0;}

if place_meeting(x, y+yspd, oWall) == true
{ yspd = 0; }

x  += xspd;
y += yspd;

// set sprite
mask_index = sprite[RIGHT];

		if xspd > 0  {face = RIGHT}
		if xspd < 0  {face = LEFT}	
			
		if (xspd == 0 )
		{
			if (face == RIGHT){ face = 5; }
				
			if (face == LEFT){ face = 4;  }
		};
		
		if (face == 5 && yspd != 0) {face = RIGHT; }
		if (face == 4 && yspd != 0) {face = LEFT; }


sprite_index = sprite[face];
