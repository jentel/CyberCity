#macro Intro "Intro"
#macro Email "email"
#macro ViewEmail "view_email"
#macro InterEmail "interact_email"
#macro VirusPopup "virus_popup"

rhonda = "Rhonda";

global.topics = {};

#region ------------------------------------------------------ Introduction ---------------------------------------
global.topics[$ Intro] = [
	SPEAKER(rhonda, oldwoman_portrait, PORTRAIT_SIDE.LEFT),
		TEXT(Text("intro")),
		//TEXT(Text("intro_1")),
		TEXT(Text("intro_2")),
	SPEAKER(Text("game")),
		TEXT(Text("instruct")),
];

// Email Ding
global.topics[$ Email] = [
	SPEAKER(rhonda, oldwoman_portrait, PORTRAIT_SIDE.LEFT),
		TEXT(Text("email")),
];

// Email can wait TODO: verify where this goes
global.topics[$ InterEmail] = [
	SPEAKER(rhonda, oldwoman_portrait, PORTRAIT_SIDE.LEFT),
		TEXT(Text("need_2_wait")),
];
#endregion
#region ------------------------------------------------------ Section 1 ---------------------------------------
// Odd email
global.topics[$ ViewEmail] = [
	SPEAKER(rhonda, oldwoman_portrait, PORTRAIT_SIDE.LEFT),
		CHOICE(Text("email_2"),
			OPTION(Text("click_choice"), "follow link"),
			OPTION(Text("delete"), "delete email"),
			OPTION(Text("hint"), "hint 1"))
];

// Bad Choice
global.topics[$ "follow link"] = [
	TEXT(Text("extra_money")),
];

// Good Choice
global.topics[$ "delete email"] = [
	TEXT(Text("silly_scam")),
	END()
];

// Hint 1 - Odd email
global.topics[$ "hint 1"] = [
	SPEAKER(Text("game")),
		TEXT(Text("hint_1")),
		TEXT(Text("hint_1_2")),
		GOTO(ViewEmail)
];
#endregion
#region ------------------------------------------------------ Section 2 ---------------------------------------
global.topics[$ VirusPopup] = [
	SPEAKER(rhonda, oh_no, PORTRAIT_SIDE.LEFT),
		TEXT(Text("oh_no")),
			OPTION(Text("turn_off"), "turn off"),
			OPTION(Text("call"), "call number"),
			OPTION(Text("hint"), "hint_2")
];

// Bad Choice
global.topics[$ "call number"] = [
	TEXT(Text("call")),
	GOTO("wrong choice 3")
];

// Good Choice
global.topics[$ "turn off"] = [
	TEXT(Text("pc_off")),
	END()
];

// Hint 2 - computer problem
global.topics[$ "hint 2"] = [
	SPEAKER(Text("game")),
		TEXT(Text("hint_2")),
		GOTO("wrong choice 2")
];
#endregion
#region ------------------------------------------------------ Section 3 ---------------------------------------
global.topics[$ "wrong choice 3"] = [
	SPEAKER(rhonda, ring_1, PORTRAIT_SIDE.LEFT),
		TEXT(Text("ring")),
		
	SPEAKER(Text("tech_sup"), anonymous_portrait, PORTRAIT_SIDE.RIGHT),
		TEXT(Text("tech_1")),
	SPEAKER(rhonda, oldwoman_portrait, PORTRAIT_SIDE.LEFT),
		TEXT(Text("rhonda_1")),
	
	SPEAKER(Text("tech_sup"), anonymous_portrait, PORTRAIT_SIDE.RIGHT),
		TEXT(Text("tech_2")),
	SPEAKER(rhonda, oldwoman_portrait, PORTRAIT_SIDE.LEFT),
		TEXT(Text("rhonda_2")),
	
	SPEAKER(Text("tech_sup"), anonymous_portrait, PORTRAIT_SIDE.RIGHT),
		TEXT(Text("tech_3")),
	SPEAKER(rhonda, oldwoman_portrait, PORTRAIT_SIDE.LEFT),
		TEXT(Text("rhonda_3")),
	
	SPEAKER(Text("tech_sup"), anonymous_portrait, PORTRAIT_SIDE.RIGHT),
		TEXT(Text("tech_4")),
	SPEAKER(rhonda, oldwoman_portrait_mad, PORTRAIT_SIDE.LEFT),
		TEXT(Text("rhonda_4")),
		
	SPEAKER(Text("tech_sup"), anonymous_portrait, PORTRAIT_SIDE.RIGHT),
		TEXT(Text("tech_5")),
		
	SPEAKER(rhonda, oldwoman_portrait_mad, PORTRAIT_SIDE.LEFT),
			OPTION(Text("hangup"), "hang up"),
			OPTION(Text("proceed"), "proceed"),
			OPTION(Text("hint"), "hint 3")	
];

// Bad Choice
global.topics[$ "proceed"] = [
	SPEAKER(rhonda, oldwoman_portrait_mad, PORTRAIT_SIDE.LEFT),
		TEXT(Text("rhonda_5")),

	SPEAKER(Text("tech_sup"), anonymous_portrait, PORTRAIT_SIDE.RIGHT),
		TEXT(Text("tech_6")),
		TEXT(Text("tech_7")),
		
	SPEAKER(rhonda, oldwoman_portrait, PORTRAIT_SIDE.LEFT),
		TEXT(Text("rhonda_7")),
	// TODO: Need to create 
	END()
];

// Good Choice
global.topics[$ "hang up"] = [
	TEXT(Text("rhonda_quit")),
	END()
];

// Hint 3 - more problems
global.topics[$ "hint 3"] = [
	SPEAKER(Text("game")),
		TEXT(Text("hint_3")),
		GOTO("wrong choice 3")
];
#endregion