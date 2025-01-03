// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// Feather disable GM2017
// Feather disable GM1041
function scr_playSequence(_seqToPlay)
{
    // Create Sequence if appropriate
    if (_seqToPlay != noone) {

        // Set Sequence to centre of Camera view
		if(global.CamX == undefined && global.CamY == undefined)
		{
			global.CamX = camera_get_view_x(view_camera[0]) + floor(camera_get_view_width(view_camera[0]) * 0.5);
			global.CamY = camera_get_view_y(view_camera[0]) + floor(camera_get_view_height(view_camera[0]) * 0.5);
		}
		
		var _camX = global.CamX;
		var _camY = global.CamY;

        // Make sure our Sequence doesn't already exist
        if (instance_exists(obj_control) && !layer_sequence_exists(obj_control.curSeqLayer, _seqToPlay)) {
            if (layer_exists(obj_control.curSeqLayer)) {
                // Create (play) the Sequence
                layer_sequence_create(obj_control.curSeqLayer, _camX, _camY, _seqToPlay);
                // Make sure Cutscenes layer is above the action
                layer_depth(obj_control.curSeqLayer, -10000);
            }
        }
		
        //var _camX = camera_get_view_x(view_camera[0]) + floor(camera_get_view_width(view_camera[0]) * 0.5);
        //var _camY = camera_get_view_y(view_camera[0]) + floor(camera_get_view_height(view_camera[0]) * 0.5);

        //// Make sure our Sequence doesn't already exist
        //if (instance_exists(obj_control) && !layer_sequence_exists(obj_control.curSeqLayer, _seqToPlay)) {
        //    if (layer_exists(obj_control.curSeqLayer)) {
        //        // Create (play) the Sequence
        //        layer_sequence_create(obj_control.curSeqLayer, _camX, _camY, _seqToPlay);
        //        // Make sure Cutscenes layer is above the action
        //        layer_depth(obj_control.curSeqLayer, -10000);
        //    }
        //}
    }
}