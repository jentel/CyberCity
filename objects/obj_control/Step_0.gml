/// @description Deal with sequences by state

// when a textbox appears
if(instance_exists(obj_textbox_di))
{
	var diLayer = layer_get_id("Di_UI_Layer");
	layer_set_visible(diLayer, true);
	
	var mainLayer = layer_get_id("Main_UI_Layer");
	layer_set_visible(mainLayer, false);
	//instance_deactivate_object(obj_virtual_button);
	//instance_deactivate_object(obj_virtual_key);
	
	//instance_destroy(obj_virtual_button);
	instance_destroy(obj_virtual_key);
	with(obj_virtual_button)
	{
		instance_destroy();
	}
	//virtual_key_delete();
}
else if (global.isSeqActive)
{
	var diLayer = layer_get_id("Di_UI_Layer");
	layer_set_visible(diLayer, false);
	
	var mainLayer = layer_get_id("Main_UI_Layer");
	layer_set_visible(mainLayer, false);
}
else if room == rm_gameover
{
	//obj_virtual_key.visible = 0;
}
else {
	var diLayer = layer_get_id("Di_UI_Layer");
	layer_set_visible(diLayer, false);
	
	var mainLayer = layer_get_id("Main_UI_Layer");
	layer_set_visible(mainLayer, true);
}


//Control sequences
switch (sequenceState) {
    case seqState.playing: {
        global.playerControl = false;
        break;
    }
    case seqState.finished: {
        //Remove Sequence
        if (layer_sequence_exists(curSeqLayer, curSeq)) {
            layer_sequence_destroy(curSeq);
        }
        //Restore control to player, reset
        global.playerControl = true;
        sequenceState = seqState.notPlaying;
        curSeq = noone;

        // Check if NPCs are "done"
        if (global.gameOver == false) {
            if (instance_exists(obj_npc_baker) && instance_exists(obj_npc_teacher) && instance_exists(obj_npc_grocier)) {
                if (obj_npc_baker.myState == npcState.done && obj_npc_teacher.myState == npcState.done && obj_npc_grocier.myState == npcState.done) {
                    // Queue up "game over" sequence
                    global.playerControl = false;
                    alarm[0] = 60;
                    // Mark game as won
                    global.gameover = true;
                }
            }
        }
        break;
    }
}