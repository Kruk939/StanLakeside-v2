_idc = ctrlIDC (_this select 0);          
_selectedIndex = _this select 1;         
_unit = player;
_item = lbData [_idc, _selectedIndex];

_current = {_x isEqualTo _item} count magazines player;
if(_current isEqualTo 0) exitwith {};

if (_item isEqualTo "NP_GrowingPlot") then { hint "hello i'm work"; closeDialog 0; };

false
