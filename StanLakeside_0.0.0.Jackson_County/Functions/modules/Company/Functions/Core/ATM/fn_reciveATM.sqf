/*
		Author: Kajetan "Kruk" Mruk
		Date: 09.06.2017
		Params: none
		Description: Opens dialog and send request to the server for data
		Return: nothing
*/
params[["_balance",[]],["_employees",[]],["_companies",[]],["_logs",[]]];
private["_ATM","_company_id","_display","_edit_cash","_listbox_players","_listbox_employees","_listbox_companies","_list_box_last_operations","_button_withdraw","_button_payin","_button_pay_player","_button_pay_employee","_button_pay_company","_button_close","_text_balance","_text_title"];
if(!dialog) exitWith {};
if((count _balance) == 0) exitWith {closeDialog 0};
if((count company_var_active_data) == 0) exitWith {closeDialog 0};
disableSerialization;

_display = findDisplay 666014;
_edit_cash = _display displayCtrl 1001;
_listbox_players = _display displayCtrl 1101;
_listbox_employees = _display displayCtrl 1102;
_listbox_companies = _display displayCtrl 1103;
_list_box_last_operations = _display displayCtrl 1104;
_button_withdraw = _display displayCtrl 1201;
_button_payin = _display displayCtrl 1202;
_button_pay_player = _display displayCtrl 1203;
_button_pay_employee = _display displayCtrl 1204;
_button_pay_company = _display displayCtrl 1205;
_button_close = _display displayCtrl 1206;
_text_balance = _display displayCtrl 1301;
_text_title = _display displayCtrl 1302;

hint format["%1",_balance];
company_var_active_bank = _balance select 1;
_text_balance ctrlSetText format["%1 $%2",(localize "STR_RPF_MODULES_COMPANY_ATM_BALANCE"),_balance select 1];
_text_title ctrlSetText format["%1 %2", (localize "STR_RPF_MODULES_COMPANY_ATM_TITLE"), company_var_active_data select 2];
{
      if(isPlayer _x) then {
            lbAdd [1101, name _x];
            _listbox_players lbSetData [(lbSize _listbox_players) - 1, str([_x, getPlayerUID _x])];
      };
} forEach playableUnits;
{
      lbAdd [1102, format["%1",_x select 1]];
      _listbox_employees lbSetData [(lbSize _listbox_employees) - 1, str(_x)];
} forEach _employees;
{
      lbAdd [1103, format["[%1] - %2",_x select 1, _x select 2]];
      _listbox_companies lbSetData [(lbSize _listbox_companies) - 1, str(_x)];
} forEach _companies;
{
      lbAdd [1104, _x select 1];
      _list_box_last_operations lbSetData [(lbSize _list_box_last_operations) - 1, str(_x)];
} forEach _logs;
