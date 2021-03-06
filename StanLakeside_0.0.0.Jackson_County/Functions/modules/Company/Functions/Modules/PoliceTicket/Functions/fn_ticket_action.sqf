/*
		Author: Kajetan "Kruk" Mruk
		Date: 15.03.2017
		Params:
		Description: Reads personal data and display it on computer screen.
		Return: none
*/
params["_type"];
private["_data","_officer","_uid_officer","_uid_player","_name","_amount","_points","_reason","_check"];
_data = kruk_slpd_ticket_data select 0;
_officer = kruk_slpd_ticket_data select 1;
_uid_officer = getPlayerUID _officer;
_uid_player = getPlayerUID player;
_name = name player;
_amount = _data select 0;
_points = _data select 1;
_reason = _data select 2;
kruk_slpd_ticket_data = nil;

_check = [2, _amount] call Client_fnc_checkMoney;
if(!_check) exitWith { [format[(localize "STR_RPF_MODULES_COMPANYMODULES_TICKET_NOMONEY"), _name]] remoteExec ["domsg", _officer]; };

if(_type == "accept") then {
	[_amount] call Client_fnc_removeBank;
	[format[(localize "STR_RPF_MODULES_COMPANYMODULES_TICKET_PAID"), _name, _amount]] remoteExec ["domsg", _officer];
	[_uid_player, _uid_officer, _amount, _reason, _points] remoteExec ["ServerModules_SLPD_fnc_slpdTicketAdd", 2];
	player playmove "vvv_anim_ticket";
} else {
	[format[(localize "STR_RPF_MODULES_COMPANYMODULES_TICKET_REFUSED"), _name]] remoteExec ["domsg", _officer];
};
closeDialog 0;
