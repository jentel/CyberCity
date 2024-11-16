/// @description Insert description here
// You can write your code in this editor

view_width=1920/6;
view_height=1080/6;

//gme1 code for aspect ratio
//aspect_ratio=display_get_width()/display_get_height();
//view_width=round(ideal_width / aspect_ratio);
//if(view_width & 1)
//	view_width++
//for(var i=1; i<=room_last; i++)
//{
//	if(room_exists(i))
//	{
//		room_set_view(i,0,true,0,0,view_width,view_height,0,0,view_width,view_height,0,0,0,0,-1
//		room_set_view_enabled(i,true);
//	}
//}


window_scale=3;

window_set_size(view_width*window_scale,view_height*window_scale);
alarm[0]=1;

surface_resize(application_surface,view_width*window_scale,view_height*window_scale);
