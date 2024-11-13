// Script 
// @param text_id
function scr_game_text(_text_id) 
{
	switch (_text_id) 
	{
		case "npc 1":
		{
			scr_text("i'm npc 1");
			scr_text("do you like video games?");
			scr_option("Yes! I love them!", "npc 1 - yes");
			scr_option("Nah", "npc 1 - no");
			break;
		}
		case "npc 1 - yes":
		{
			scr_text("Whoo!");
			break;
		}
		case "npc 1 - no":
		{
			scr_text("WTF");
			break;
		}
	}
}