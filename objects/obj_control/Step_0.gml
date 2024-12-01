/// @description Deal with sequences by state

/// @description Conditionally moves the arrow and select keys
// when a textbox appears
if(instance_exists(obj_textbox_di))
{
	// Parent first
	obj_virtual_key.visible = false;
	obj_virtual_button.visible = true;
	obj_virtual_key_mini.visible = true;
	
	
	
}
else if (global.isSeqActive)
{
	obj_virtual_key.visible = 0;
	obj_virtual_button.visible = 0
	obj_virtual_key_mini.visible = 0;
	
	with(global.ButtonCoords) {
		
		virtual_key_delete(button_id);
	}
}
//else if (room == rm_gameover)
//{
//	obj_virtual_key.visible = 0;
//}
else {
	// Parent first
	obj_virtual_key.visible = true;
	obj_virtual_key_mini.visible = false;
	
	
	if(global.ButtonCoords != {}) {
		virtual_key_delete(global.ButtonCoords[$ MINIENTER_K].buttonId);
		virtual_key_delete(global.ButtonCoords[$ MINIDOWN].buttonId);
		virtual_key_delete(global.ButtonCoords[$ MINIUP].buttonId);
	}
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