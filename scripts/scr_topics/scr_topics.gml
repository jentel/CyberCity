#macro Intro "Intro"
#macro Email "email"
#macro ViewEmail "view_email"
#macro InterEmail "interact_email"

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
	GOTO("wrong choice 1")
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
global.topics[$ "wrong choice 1"] = [

];