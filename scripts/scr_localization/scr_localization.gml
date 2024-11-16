// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

enum LOCAL { EN, FR }

global.locale = LOCAL.EN;

InitTranslation();

function InitTranslation() {
	global.locData = load_csv("Resx.csv");
	
	var hh = ds_grid_height(global.locData);
	var translations = ds_map_create();
	
	for (var i = 0; i < hh; i++) {
		ds_map_add(translations, global.locData[# 0, i], i);
	}
	
	global.translations = translations;
}

function Text(key) {
	var text = "";
	
	if(global.translations[? key] != undefined) {
		text = global.locData[# 1 + global.locale, global.translations[? key]];
		var a = argument_count > 1 ? argument[1] : "";
		text = string_replace_all(text, "{a)", a);
	}
	else {
		text = key;
	}
	
	return text;
}