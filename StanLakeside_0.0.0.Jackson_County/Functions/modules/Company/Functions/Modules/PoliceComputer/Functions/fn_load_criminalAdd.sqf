/*
		Author: Kajetan "Kruk" Mruk
		Date: 15.03.2017
		Params: none
		Description: Reads personal data and display it on computer screen.
		Return: none
*/
disableSerialization;
private["_name","_display","_text","_ctrl"];
_name = "";
if(isNull (kruk_slpd_computer_data select 1)) then { _name = kruk_slpd_computer_data select 2; } else {
	_name = name(kruk_slpd_computer_data select 1);
};
_text = format[(localize "STR_RPF_MODULES_COMPANY_POLICECOMPUTER_NAMESURNAME"), _name];
_display = findDisplay 666005;
_ctrl = _display displayCtrl 1301;
_ctrl ctrlSetText _text;
