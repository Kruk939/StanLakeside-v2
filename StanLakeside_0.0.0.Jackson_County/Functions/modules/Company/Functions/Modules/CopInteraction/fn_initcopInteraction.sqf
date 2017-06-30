if(isNil "company_copInteraction_inited") then {
      company_copInteraction_inited = false;
};
private["_menuItems","_level"];
_level = player getVariable["company_cop_interaction",0];
if(company_inited && _level > 0 && !company_copInteraction_inited) exitWith {
      _menuItems = [
            [
                  ["(player distance cursorObject) <= 5","(player getVariable[""company_cop_interaction"",0]) > 0","cursorTarget isKindOf ""Car"""],
                  [(localize 'STR_RPF_CORE_INTERACTION_IMPOUND_CAR'), "[cursorObject] spawn Client_fnc_impound",1]
            ]
      ];
      {
      	RPF_InteractionMenuItems pushBack _x;
      } forEach _menuItems;
      company_copInteraction_inited = true;
};
