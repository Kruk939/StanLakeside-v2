if(isNil "company_PoliceComputer_inited") then {
      company_PoliceComputer_inited = false;
};
private["_menuItems","_level"];
_level = player getVariable["company_police_computer",0];
if(company_inited && _level > 0 && !company_PoliceComputer_inited) exitWith {
      _menuItems = [
            [
                  ["(( vehicle player != player ) || ((typeof cursorobject) IN [""Land_PoliceStation"",""cl3_policehq"",""Land_buildingsJailCellBlock1"",""cl3_policehq_range""])) && (player getVariable[""company_police_computer"",0]) > 0"],
                  [(localize "STR_RPF_MODULES_COMPANY_POLICECOMPUTER_OPEN"), "createdialog ""kruk_slpd_computer"";" ,1]
            ]
      ];
      {
      	RPF_InteractionMenuItems pushBack _x;
      } forEach _menuItems;
      company_PoliceComputer_inited = true;
};
