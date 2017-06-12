if(isNil "company_EMSMedical_inited") then {
      company_EMSMedical_inited = false;
};
private["_menuItems","_level"];
_level = player getVariable["company_ems_medical",0];
if(company_inited && _level > 0 && !company_EMSMedical_inited) exitWith {
      _menuItems = [
            [
                  ["isPlayer cursorTarget && (CurrentCursorTarget getVariable[""medical_deadPlayer"",FALSE]) && !(CurrentCursorTarget getVariable[""EMS_markedDead"",FALSE]) && (player getVariable[""company_ems_medical"",0]) > 0"],
                  [(localize "STR_RPF_MODULES_COMPANY_EMSMEDICAL_REVIVE"), "[] spawn ClientModules_Medical_fnc_revive;" ,1]
            ],
            [
                  ["isPlayer cursorTarget && (CurrentCursorTarget getVariable[""medical_deadPlayer"",FALSE]) && !(CurrentCursorTarget getVariable[""EMS_markedDead"",FALSE]) && (player getVariable[""company_ems_medical"",0]) > 0"],
                  [(localize "STR_RPF_MODULES_COMPANY_EMSMEDICAL_MARKASDEAD"),"[] spawn ClientModules_CompanyModules_fnc_markAsDead;", 1]
            ],
            [
                  ["isPlayer cursorTarget && (player getVariable[""company_ems_medical"",0]) > 0"],
                  [(localize "STR_RPF_MODULES_COMPANY_EMSMEDICAL_HEAL"),"[] spawn ClientModules_Medical_fnc_openHealMenu;", 1]
            ]
      ];
      {
      	RPF_InteractionMenuItems pushBack _x;
      } forEach _menuItems;
      company_EMSMedical_inited = true;
};
