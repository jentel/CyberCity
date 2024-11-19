/// @description Draw Self
/// Draws the button on the GUI layer instead of the Instances layer

draw_self();
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(font_textbox);
draw_set_color(c_white);
draw_text(x - 25, y - 15, Text("enter"));