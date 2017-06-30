if(isNil "company_VehicleInteraction_inited") then {
      company_VehicleInteraction_inited = false;
};
private["_menuItems","_level"];
_level = player getVariable["company_vehicle_interaction",0];
if(company_inited && _level > 0 && !company_VehicleInteraction_inited) exitWith {
      _menuItems = [
            [
                  ["player getVariable[""company_vehicle_interaction"",0] > 0", "cursorObject isKindOf 'Car'", "(player distance cursorObject) <= 5"],
                  [(localize 'STR_RPF_CORE_INTERACTION_PULLOUT'), "[cursorObject] call Client_fnc_pullOut",1]
            ]
      ];
      {
      	RPF_InteractionMenuItems pushBack _x;
      } forEach _menuItems;
      company_VehicleInteraction_inited = true;
};
