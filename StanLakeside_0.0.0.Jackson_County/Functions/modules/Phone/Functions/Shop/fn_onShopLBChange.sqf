_price = 0;

_index = lbCurSel (1500);
_status = lbData[1500, _index];
_data = call compile format["%1", _status];
ctrlSetText[1201,format["\SL_Client\Textures\Dialogs\Phone\PhoneFrame\bg%1.paa",(_data select 0)]];

_price = (_data select 1);

_index = lbCurSel (1501);
_status = lbData[1501, _index];
_data = call compile format["%1", _status];
ctrlSetText[1200,format["\SL_Client\Textures\Dialogs\Phone\Wallpapers\%1.paa",(_data select 0)]];

_price = _price + (_data select 1);

_index = lbCurSel (1502);
_status = lbData[1502, _index];
_data = call compile format["%1", _status];

_price = _price + (_data select 1);

ctrlSetText[1002,format[localize ("STR_RPF_MODULES_PHONE_PRICE"),_price]];