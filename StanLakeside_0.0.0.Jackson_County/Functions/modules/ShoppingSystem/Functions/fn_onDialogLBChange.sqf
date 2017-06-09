_index = lbCurSel (1500);
_status = lbData[1500, _index];
_data = call compile format["%1", _status];

ctrlSetText[1002,format[localize ("STR_RPF_MODULES_SHOPPINGSYSTEM_PRICE"),(_data select 1)]];
ctrlSetText[1003,format[localize ("STR_RPF_MODULES_SHOPPINGSYSTEM_AMOUNT"),(_data select 2)]];

if (RPF_shopType isEqualTo "clothingmen" || RPF_ShopType isEqualTo "clothingwomen") then {
	ShoppingMan forceAddUniform (_data select 0);
};
