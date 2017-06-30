disableSerialization;
private["_display","_listbox_companies","_edit_information"];
if(!dialog) exitWith {};
params[["_type",""]];
_display = findDisplay 666015;
_listbox_companies = _display displayCtrl 1500;
_edit_information = _display displayCtrl 1000;
if(_type == "send") exitWith {
      private["_data","_index","_id","_description"];
      _description = ctrlText 1400;
      _index = lbCurSel 1500;
      if(_index == -1) exitWith {};
      _data = call compile(lbData [1500, _index]);
      _id = _data select 0;
      closeDialog 0;
      ["applicant",[_id,_description,getPlayerUID player]] remoteExec ["ServerModules_Company_fnc_employeesInsert", 2];
};
