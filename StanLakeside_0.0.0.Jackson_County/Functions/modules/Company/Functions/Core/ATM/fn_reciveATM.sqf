/*
		Author: Kajetan "Kruk" Mruk
		Date: 09.06.2017
		Params: none
		Description: Opens dialog and send request to the server for data
		Return: nothing
*/
params[["_data",[]]];
private["_balance","_company_id","_display","_edit_cash","_listbox_players","_listbox_employees","_listbox_companies","_list_box_last_operations","_button_withdraw","_button_payin","_button_pay_player","_button_pay_employee","_button_pay_company","_button_close","_text_balance","_text_title"];
if(!dialog) exitWith {};if((count _data) == 0) exitWith {closeDialog 0};
if((count company_var_active_data) == 0) exitWith {closeDialog 0};

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

_balance = _data select 0;
_text_balance ctrlSetText format["%1 $%2",(localize "STR_RPF_MODULES_COMPANY_ATM_BALANCE"),_balance select 1];
_text_title ctrlSetText format["%1 %2", (localize "STR_RPF_MODULES_COMPANY_ATM_TITLE"), company_var_active_data select 2];
