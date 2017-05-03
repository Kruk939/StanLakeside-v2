private["_storeList","_addedprice"];
disableSerialization;
_condition = _this select 0;
_storeList = [];
if(_condition == "gunstore") then {
	{
		_storeList pushback _x;
	} foreach RPF_Store_gunStore;
};

if(_condition == "rarefish") then {
	{
		_storeList pushback _x;
	} foreach RPF_Store_rarefish;
};

if(_condition == "clothing") then {
	{
		_storeList pushback _x;
	} foreach RPF_Store_cloting;
};

if(_condition == "backpack") then {
	{
		_storeList pushback _x;
	} foreach RPF_Store_backpack;
};

if(_condition == "veststore") then {
	{
		_storeList pushback _x;
	} foreach RPF_Store_vest;
};

if(_condition == "mcdonalds") then {
	{
		_storeList pushback _x;
	} foreach RPF_Store_mcdonalds;
};

if(_condition == "hotdogs") then {
	{
		_storeList pushback _x;
	} foreach RPF_Store_hotdogs;
};

if(_condition == "general") then {
	{
		_storeList pushback _x;
	} foreach RPF_Store_general;
};

if(_condition == "donuts") then {
	{
		_storeList pushback _x;
	} foreach RPF_store_donuts;
};

if(_condition == "pizza") then {
	{
		_storeList pushback _x;
	} foreach RPF_Store_pizza;
};

if(_condition IN ["general","hotdogs","donuts","pizza","mcdonalds","drinks"]) then {
	{
		_storeList pushback _x;
	} foreach RPF_Store_drinks;
};

if(_condition IN ["bar"]) then {
	{
		_storeList pushback _x;
	} foreach RPF_Store_bar;
};

if(_condition == "head") then {
	{
		_storeList pushback _x;
	} foreach RPF_Store_head;
};

if(_condition == "doughnuts_general") then {
	_doughnuts = player getVariable ["doughnutsLevel", 0];
	//Doughnuts
	if(_doughnuts > 0) then {
		{
			_storeList pushback _x;
		} foreach RPF_Store_DD_general_1;
	};
	if(_doughnuts > 1) then {
		{
			_storeList pushback _x;
		} foreach RPF_Store_DD_general_2;
	};
	if(_doughnuts > 2) then {
		{
			_storeList pushback _x;
		} foreach RPF_Store_DD_general_3;
	};
	if(_doughnuts > 3) then {
		{
			_storeList pushback _x;
		} foreach RPF_Store_DD_general_4;
	};
	if(_doughnuts > 4) then {
		{
			_storeList pushback _x;
		} foreach RPF_Store_DD_general_5;
	};
};
if(_condition == "doughnuts_gun") then {
	_doughnuts = player getVariable ["doughnutsLevel", 0];
	//Doughnuts
	if(_doughnuts > 0) then {
		{
			_storeList pushback _x;
		} foreach RPF_Store_DD_gun_1;
	};
	if(_doughnuts > 1) then {
		{
			_storeList pushback _x;
		} foreach RPF_Store_DD_gun_2;
	};
	if(_doughnuts > 2) then {
		{
			_storeList pushback _x;
		} foreach RPF_Store_DD_gun_3;
	};
	if(_doughnuts > 3) then {
		{
			_storeList pushback _x;
		} foreach RPF_Store_DD_gun_4;
	};
	if(_doughnuts > 4) then {
		{
			_storeList pushback _x;
		} foreach RPF_Store_DD_gun_5;
	};
};


if(_condition == "glasses") then {

	{
		_storeList pushback _x;
	} foreach RPF_Store_glasses;

};

_display = findDisplay 9999;
_list = _display displayCtrl 9001;

lbClear _list;

{

	_class = _x select 0;
	_item = [_class] call client_fnc_fetchItemType;
	_price = _x select 2;
	_type = _x select 3;
	_classtype = _x select 4;
	_doughnuts = player getVariable ["doughnutsLevel", 0];
	if(_doughnuts == 3) then { _price = _price * (1 - 0.05); };
	if(_doughnuts == 4) then { _price = _price * (1 - 0.10); };
	if(_doughnuts == 5) then { _price = _price * (1 - 0.15); };
	if(isNil "_classtype") then { _classType = 0; };

	if(_condition == "rarefish") then {
		_list lbAdd format["%2: %1", _item select 1, _price];
	} else {
		_addedprice = (_price / 100) * RPF_Tax;
		_addedprice = round (_addedprice);
		_price = _addedprice + _price;
		_list lbAdd format["$%2 (Tax %%3): %1", _item select 1, _price,RPF_Tax];
	};

	_list lbSetdata [(lbSize _list)-1, str([_class,_item select 1, _price,_type,_classtype,_addedprice])];
	_list lbSetPicture [(lbSize _list)-1,_item select 2];

	if(_condition == "gunstore" || _condition == "doughnuts_gun") then {
		if(_type == 1) then {
			_magPrice = 50;
			_addedprice = (_price / 100) * RPF_Tax;
			_addedprice = round (_addedprice);
			_price = _addedprice + _price;
			_magazines = getArray (configFile / "CfgWeapons" / _class / "magazines");
			_magazine = _magazines select 0;
			_item = [_magazine] call client_fnc_fetchItemType;
			_list lbAdd format["$%2 (Tax %%3): %1",_item select 1, _magPrice,RPF_Tax];
			_list lbSetdata [(lbSize _list)-1, str([_magazine,_item select 1, _magPrice,2,0,_addedprice])];
			_list lbSetPicture [(lbSize _list)-1,_item select 2];
		};
	};
} foreach _storeList;



lbSetCurSel [9001, 0];