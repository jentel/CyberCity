#macro LOCALIZE obj_control.localizedStrings

///@desc Returns a JSON string loaded from a JSON file, with (technically illegal) comments filtered out
///@arg  {string} jsonFilePath The path of the JSON file, i.e. "localization/stringsEN.json"
///@returns {string} The JSON string
function load_json_file_to_string(jsonFilePath) {
    var _jsonFile = file_text_open_read(jsonFilePath); //Open the text file
    var _jsonStr = "";
    var _stringLine = "";
    var _commentPosition = 0;
    if (_jsonFile != -1) { //If file opened successfully
        while (!file_text_eof(_jsonFile)) { //Run until end of file reached
            _stringLine = file_text_readln(_jsonFile); //Read the next line
            _stringLine = string_trim(_stringLine); //Trim white space from beginning and end of line
            _commentPosition = string_pos("//", _stringLine); //Check for comments
            if (_commentPosition > 0) { //Comment found
                _stringLine = string_copy(_stringLine, 1, _commentPosition-1); //Remove comment
            }
            _jsonStr += _stringLine; //Add line to the string
        }
        file_text_close(_jsonFile); //Close the text file
        return _jsonStr; //Return the text string
    }
    else {
        throw ("File "+jsonFilePath+" not found!"); //Error: File not found
    }
}

///@desc Sets the game's language
///@arg {real} [langId] Select ID number of the language to use, as determined by the list order in availableLanguages.json
function set_language(langId) {
    global.currentLanguage = langId;
    //Load the game's native language (In this case, English) localization first
    var _defaultJsonStr = load_json_file_to_string("localization/"+obj_control.availableLangsStruct.langs[0].stringsFile);
    obj_control.localizedStrings = json_parse(_defaultJsonStr);
    set_font_for_language(); //Remove or comment this out if you don't want the font to change automatically

    //Load other language to overwrite the native language.  This ensures that any missing string
    //in the chosen language will default to the game's native language rather than crash the game.
    if (global.currentLanguage > 0) {
        var _localizationJsonStr = load_json_file_to_string("localization/"+obj_control.availableLangsStruct.langs[global.currentLanguage].stringsFile);
        var _replacementStrings = json_parse(_localizationJsonStr);

        //Step through and replace strings
        var _sectionNames = variable_struct_get_names(_replacementStrings);
        for (var _j = array_length(_sectionNames)-1; _j >= 0; --_j) {
            var _sectionName = _sectionNames[_j];
            var _sectionData = _replacementStrings[$ _sectionName];
            var _sectionDataArr = variable_struct_get_names(_sectionData);
            for (var _k = array_length(_sectionDataArr)-1; _k >= 0; --_k) {
                var _locReference = _sectionDataArr[_k];
                var _locText = _replacementStrings[$ _sectionName][$ _locReference];
                obj_control.localizedStrings[$ _sectionName][$ _locReference] = _locText;
            }
        }
    }
}

///@desc Sets the font to the one specified in availableLanguages.json for the given language
///@arg {real} [forceLangId] Select the font for the given language ID.  Default is current language.
function set_font_for_language(forceLangId = global.currentLanguage){
    var _fontName = obj_control.availableLangsStruct.langs[forceLangId].font;
    var _fontIndex = asset_get_index(_fontName);
    draw_set_font(_fontIndex);
}