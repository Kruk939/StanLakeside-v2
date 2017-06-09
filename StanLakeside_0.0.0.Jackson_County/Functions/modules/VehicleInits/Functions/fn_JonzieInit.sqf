/*
	USAGE:
	Params:
	1: vehicle object
	2: array
		1. string: what color do you want on vehicle
		2. string: what material do you want on vehicle

	EXAMPLE:
	[_vehicle, ["black","metallic"]] call ClientModules_VehicleInits_fnc_JonzieInit;
*/
private ["_car", "_colorBody", "_colorBodyTexture", "_colorBodyMaterial"];
_car = param [0, objNull, [objNull]];
_colorBody = param [1, ["",""], [[],""]];

_colorBodyTexture = _colorBody select 0;
_colorBodyMaterial = _colorBody select 1;

_colorBodyTexture = getText(configfile >> "CfgIvoryTextures" >> _colorBodyTexture >> "texture");
_colorBodyMaterial = getText(configfile >> "CfgIvoryMaterials" >> _colorBodyMaterial >> "material");

_car setObjectTextureGlobal 	[0, _colorBodyTexture];
_car setObjectMaterialGlobal 	[0, _colorBodyMaterial];