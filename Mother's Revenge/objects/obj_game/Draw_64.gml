/// @description Insert description here
// You can write your code in this editor

//lives
lives = 1;
for(var i = 0; i < lives; i++){
	draw_sprite(spr_lives, 0, (50 + 30 * i), 15);
}

//recycled trash collected, sprite is shown next to the amount of trash collected
trash = 0;
draw_sprite(spr_token, 0, 50, 75);

if trash < 10 {
	draw_text(100, 100, "00" + string(trash));
} else if trash < 100 {
	draw_text(100, 100, "0" + string(trash));
} else{
	draw_text(100, 100, string(trash));
}

//progress bar, based on checkpoints (for now)
totalCheckpoints = 20;
checkpoints = 1;
draw_rectangle(50,980,1880 / totalCheckpoints * checkpoints,1000,false);


//time limit