/*
		Author: Kajetan "Kruk" Mruk
		Date: 19.04.2017
		Params:
			0 - Array, case data
		Description: Reads data from avialable company garage
		Return: none
*/
// withDraw, payIN, wire_company, wire_worker, wire_person
params[["_type",""]];
if((count company_var_active_data) == 0) exitWith { closeDialog 0; };
private["_account","_data","_amount","_company_id","_display","_edit_cash","_listbox_players","_listbox_employees","_listbox_companies","_list_box_last_operations","_button_withdraw","_button_payin","_button_pay_player","_button_pay_employee","_button_pay_company","_button_close","_text_balance","_text_title"];
if(!dialog) exitWith {};
if((count company_var_active_data) == 0) exitWith { closeDialog 0; };
if(company_var_active_bank <= 0) exitWith { closeDialog 0; };
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



_amount = parseNumber(ctrlText 1001);
if(_amount <= 0) exitWith {
      hint (localize "STR_RPF_MODULES_ATM_INVALIDAMOUNT");
};

if(_type == "withDraw") exitWith {
      if(company_var_active_bank > _amount) then {
            ["remove_id",[(company_var_active_data select 0),_amount], "", player] remoteExec ["ServerModules_Company_fnc_balanceUpdate",2];
            [_amount] call Client_fnc_addCash;
            company_var_active_bank = 0;
            closeDialog 0;
      } else {

      };
};
if(_type == "payIN") exitWith {
      if([1, _amount] call Client_fnc_checkMoney) then {
            ["add_id",[(company_var_active_data select 0),_amount], "", player] remoteExec ["ServerModules_Company_fnc_balanceUpdate",2];
            [_amount] call Client_fnc_removeCash;
            company_var_active_bank = 0;
            closeDialog 0;
      } else {

      };
};
if(_type == "wire_person") exitWith {
      if(lbCurSel 1101 == -1) exitWith {};
      if(company_var_active_bank > _amount) then {
            ["remove_id",[(company_var_active_data select 0),_amount], "", player] remoteExec ["ServerModules_Company_fnc_balanceUpdate",2];
            _data = call compile(lbData [1101, lbCurSel 1101]);
            diag_log format ["%1", _data];
            _account = (_data select 0) getVariable "bankAccount";
            [_account, _amount, player] remoteExec ["ServerModules_Company_fnc_transferMoney", 2];
            company_var_active_bank = 0;
            closeDialog 0;
      } else {

      };
};
if(_type == "wire_employee") exitWith {
      if(lbCurSel 1102 == -1) exitWith {};
      if(company_var_active_bank > _amount) then {
            ["remove_id",[(company_var_active_data select 0),_amount], "", player] remoteExec ["ServerModules_Company_fnc_balanceUpdate",2];
            _data = call compile(lbData [1102, lbCurSel 1102]);
            _account = _data select 2;
            diag_log format ["%1", _data];
            [_account, _amount, player] remoteExec ["ServerModules_Company_fnc_transferMoney", 2];
            company_var_active_bank = 0;
            closeDialog 0;
      } else {

      };
};
if(_type == "wire_company") exitWith {
      if(lbCurSel 1103 == -1) exitWith {};
      if(company_var_active_bank > _amount) then {
            ["remove_id",[(company_var_active_data select 0),_amount], "", player] remoteExec ["ServerModules_Company_fnc_balanceUpdate",2];
            _data = call compile(lbData [1103, lbCurSel 1103]);
            _account = _data select 0;
            ["add_id",[_account,_amount], "", player] remoteExec ["ServerModules_Company_fnc_balanceUpdate",2];
            company_var_active_bank = 0;
            closeDialog 0;
      } else {

      };
};
