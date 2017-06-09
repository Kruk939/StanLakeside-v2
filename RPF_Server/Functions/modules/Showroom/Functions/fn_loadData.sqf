params ["_type","_player"];
switch (_type) do {
	case "car": {[RPF_Showroom_prices_car] remoteExec ["ClientModules_Showroom_fnc_loadData", _player];};
	case "ship": {[RPF_Showroom_prices_ship] remoteExec ["ClientModules_Showroom_fnc_loadData", _player];};
	case "air": {[RPF_Showroom_prices_air] remoteExec ["ClientModules_Showroom_fnc_loadData", _player];};
};