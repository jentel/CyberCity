global.topics = {};


global.topics[$ "Example"] = [
	TEXT("hello world"),
	TEXT("I sure hope this dialogue system works on first try!"),
	TEXT("We should test having a page with lots of words in it, to make sure that the line break feature is working properly.")
];

global.topics[$ "Good Morning"] = [
	SPEAKER("Old Lady", oldwoman_portrait, PORTRAIT_SIDE.LEFT),
	TEXT("Good morning! How are you today!"),
	SPEAKER("an ini mouse", anonymous_portrait, PORTRAIT_SIDE.RIGHT),
	TEXT("I'm doing very well! And you?"),
	SPEAKER("Old Lady", oldwoman_portrait, PORTRAIT_SIDE.LEFT),
	TEXT("I can't complain, except for one thing..."),
	SPEAKER("Old Lady", oldwoman_portrait_mad),
	TEXT("The supermarket was out of prune juice today.")
];

global.topics[$ "Breakfast"] = [
	SPEAKER("Rhonda", oldwoman_portrait, PORTRAIT_SIDE.LEFT),
	CHOICE("What do you want for breakfast?",
			OPTION("Eggs", "Chose Eggs"),
			OPTION("Pancakes", "Chose Pancakes"))
];

global.topics[$ "Chose Eggs"] = [
	TEXT("That's a healthy way to start the day!"),
	GOTO("End of Breakfast")
];

global.topics[$ "Chose Pancakes"] = [
	TEXT("Ooh, yummy!"),
	GOTO("End of Breakfast")
];

global.topics[$ "End of Breakfast"] = [
	TEXT("Goodbye, now!")
];