/// @description read input

input_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
input_y = keyboard_check(ord("S")) - keyboard_check(ord("W"));

if (input_x != 0)
	input_y = 0;