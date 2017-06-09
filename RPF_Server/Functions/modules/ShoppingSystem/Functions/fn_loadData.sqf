params["_player","_type"];
switch (_type) do {
	case "general": {[RPF_Shopping_General] remoteExecCall ["ClientModules_ShoppingSystem_fnc_fetchData", _player];};
	case "pizza": {[RPF_Shopping_Pizza] remoteExecCall ["ClientModules_ShoppingSystem_fnc_fetchData", _player];};
	case "fastfood": {[RPF_Shopping_Fastfood] remoteExecCall ["ClientModules_ShoppingSystem_fnc_fetchData", _player];};
	case "bar": {[RPF_Shopping_Bar] remoteExecCall ["ClientModules_ShoppingSystem_fnc_fetchData", _player];};
	case "clothingmen": {[RPF_Shopping_ClothingMen] remoteExecCall ["ClientModules_ShoppingSystem_fnc_fetchData", _player];};
	case "clothingwomen": {[RPF_Shopping_ClothingWomen] remoteExecCall ["ClientModules_ShoppingSystem_fnc_fetchData", _player];};
	case "donuts": {[RPF_Shopping_Donuts] remoteExecCall ["ClientModules_ShoppingSystem_fnc_fetchData", _player];};
	case "glasses": {[RPF_Shopping_Glasses] remoteExecCall ["ClientModules_ShoppingSystem_fnc_fetchData", _player];};
	case "gun": {[RPF_Shopping_Gun] remoteExecCall ["ClientModules_ShoppingSystem_fnc_fetchData", _player];};
};