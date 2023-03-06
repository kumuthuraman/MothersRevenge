/// @description Insert description here
// You can write your code in this editor

//lives
lives = 1;
for(var i = 0; i < lives; i++){
	draw_sprite(spr_lives, 0, (30 + 30 * i), 25);
}

//recycled trash collected, sprite is shown next to the amount of trash collected
draw_sprite(spr_coin, 0, 30, 60);

draw_set_color(c_black)
draw_set_font(fnt_mini);

if score < 10 {
	draw_text(70, 60, "00" + string(score));
} else if score < 100 {
	draw_text(70, 60, "0" + string(score));
} else{
	draw_text(70, 60, string(score));
}

//if checkpoint is equipped show checkpoint
if (global.checkpoint == 2) {
	layer_set_visible("checkpoint", true)
}

//timer
draw_sprite(spr_time, 0, 30, 90);
draw_text(70, 90, string(timer));