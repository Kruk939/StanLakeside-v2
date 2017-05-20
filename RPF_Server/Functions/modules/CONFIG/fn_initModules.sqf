/*
Author: Kerkkoh
First Edit: 16.4.2015

Additional Information:
Adding modules, creating modules -> Check README.md
Module init function adding syntax: ServerModule_fnc_initYourModule
Check out RPFramework's README.md or module's Readme file for info on module installation.
*/
_sModules = [
	"ServerModules_Example_fnc_initExample",
	"ServerModules_Fishing_fnc_initFishing",
	"ServerModules_ShopSystem_fnc_initShopSystem",
	"ServerModules_ATM_fnc_initATM",
	"ServerModules_methLab_fnc_initMethLab",
	"ServerModules_Delivery_fnc_initDeliverySystem",
	"ServerModules_Jail_fnc_initJail",
	"ServerModules_Phone_fnc_initPhone",
	"ServerModules_Housing_fnc_initHousing",
	"ServerModules_Garage_fnc_initGarage",
	"ServerModules_Mining_fnc_initMining",
	"ServerModules_SLPD_fnc_initSLPD",
	"ServerModules_ATM_Mafia_fnc_initATMMafia",
	"ServerModules_Mayor_fnc_initMayor",
	"ServerModules_Medical_fnc_initMedical",
	"ServerModules_RobbingSystem_fnc_initRobbingSystem"
];

{
	[] call (call compile _x);
}forEach _sModules;
