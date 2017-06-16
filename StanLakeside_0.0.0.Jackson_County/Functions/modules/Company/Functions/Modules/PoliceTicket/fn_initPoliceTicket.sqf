if(isNil "company_PoliceTicket_inited") then {
      company_PoliceTicket_inited = false;
};
private["_menuItems","_level"];
_level = player getVariable["company_police_ticket",0];
if(company_inited && _level > 0 && !company_PoliceTicket_inited) exitWith {
      _menuItems = [
            [
                  ["(( vehicle player != player ) || ((typeof cursorobject) IN [""Land_PoliceStation"",""cl3_policehq"",""Land_buildingsJailCellBlock1"",""cl3_policehq_range""])) && (player getVariable[""company_police_ticket"",0]) > 0"],
                  [(localize "STR_RPF_MODULES_COMPANY_POLICETICKET_OPEN"), "createdialog ""kruk_slpd_ticket_give"";" ,1]
            ]
      ];
      {
      	RPF_InteractionMenuItems pushBack _x;
      } forEach _menuItems;
      company_PoliceTicket_inited = true;
};
