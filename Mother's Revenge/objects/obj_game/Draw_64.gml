/// @description Insert description here
// You can write your code in this editor

//lives
lives = 1;
for(var i = 0; i < lives; i++){
	draw_sprite(spr_lives, 0, (30 + 30 * i), 25);
}

//recycled trash collected, sprite is shown next to the amount of trash collected
draw_sprite(spr_coin, 0, 30, 60);

draw_set_font(fnt_mini);

if score < 10 {
	draw_text(70, 60, "00" + string(score));
} else if score < 100 {
	draw_text(70, 60, "0" + string(score));
} else{
	draw_text(70, 60, string(score));
}

//progress bar, based on checkpoints (for now)
//totalCheckpoints = 20;
//checkpoints = 1;
//draw_rectangle(50,980,1880 / totalCheckpoints * checkpoints,1000,false);


//time limit