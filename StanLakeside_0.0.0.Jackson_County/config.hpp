class RPF_Config {
	// TAB by default https://community.bistudio.com/wiki/ListOfKeyCodes
	interactionKey = 15;
	
	
	handcuffs_item = "RPF_Items_Handcuffs";
	handcuffKeys_item = "RPF_Items_HandcuffKeys";
	
	tie_item = "SL_Items_Rope";
	
	// You can find more config optios that are mostly for modules to change in Functions\core\Init\fn_miscVariables.sqf
	// Use (missionConfigFile >> "RPF_Config" >> "something") call BIS_fnc_getCfgData to get data from here
	// Each module has its own configuration file called config.hpp which can house shop locations, marker locations or variables, make sure to configure those as well!
	// Shop locations for module ShopSystem is on the server side! There are configs on both server and client side for modules!
};
#include "Functions\modules\CONFIG\moduleConfigs.hpp"