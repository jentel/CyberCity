/// @description Deal with Sequences

// listen for broacast messages
switch (event_data[? "message"]) {
    case "sequenceStart": {
        // Set our state
        sequenceState = seqState.playing;
        // find out which sequence just broadcast this message and mark it
        if (layer_get_element_type(event_data[? "element_id"]) == layerelementtype_sequence) {
            curSeq = event_data[? "element_id"];
            show_debug_message("obj_control has heard that Sequence " + string(curSeq) + " is playing");
        }
        break;
    }
    case "sequenceEnd": {
        // set our state
        sequenceState = seqState.finished;
        show_debug_message("obj_control has heard that Sequence " + string(curSeq) + " has ended")
        break;
    }
}