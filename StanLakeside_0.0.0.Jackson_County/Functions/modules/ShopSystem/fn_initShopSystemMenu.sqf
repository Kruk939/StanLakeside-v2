private["_menuItems"];
_menuItems = [
	[
		["typeof CurrentCursorTarget IN [""Land_Coffee_DED_Coffee_02_F"",""Land_fs_roof_F"",""Land_Coffee_DED_Coffee_01_F"",""Land_Shop_DED_Shop_01_F"",""Land_Shop_DED_Shop_02_F""]"],
		["Wielobranżowy", "closedialog 0; createdialog ""GeneralStore_Menu""; [""general""] spawn ClientModules_ShopSystem_fnc_LoadStore;",3]
	],

	[
		["typeof CurrentCursorTarget isEqualTo ""land_cg_dexters"""],
		["Pizzeria", "closedialog 0; createdialog ""food_menu""; [""pizza""] spawn ClientModules_ShopSystem_fnc_LoadStore;",3]
	],

	[
		["typeof CurrentCursorTarget isEqualTo ""Land_Market_DED_Market_01_F"""],
		["Mc Dildos", "closedialog 0; createdialog ""food_menu""; [""mcdonalds""] spawn ClientModules_ShopSystem_fnc_LoadStore;",3]
	],

	[
		["str penis find ""carrito"" > -1 || str penis find ""modelos6ki"" > -1"],
		["Fast Food", "closedialog 0; createdialog ""food_menu""; [""hotdogs""] spawn ClientModules_ShopSystem_fnc_LoadStore;",3]
	],

	[
		["typeof CurrentCursorTarget isEqualTo ""Land_buildingBar1"""],
		["Bar", "closedialog 0; createdialog ""food_menu""; [""bar""] spawn ClientModules_ShopSystem_fnc_LoadStore;",3]
	],

	[
		["typeof CurrentCursorTarget IN [""Land_Coffee_DED_Coffee_02_F"",""Land_Coffee_DED_Coffee_01_F""]"],
		["Sklep z ubraniami", "closedialog 0; createdialog ""Clothing_Menu""; [""clothing""] spawn ClientModules_ShopSystem_fnc_LoadStore;",3]
	],

	[
		["typeof CurrentCursorTarget isEqualTo ""Land_buildingGunStore1"""],
		["Sklep z bronią", "closedialog 0; createdialog ""gun_menu""; [""gunstore""] spawn ClientModules_ShopSystem_fnc_LoadStore;",3]
	],

	[
		["typeof CurrentCursorTarget isEqualTo ""land_cg_dunkinbronuts"""],
		["Cukiernia", "closedialog 0; createdialog ""food_menu""; [""donuts""] spawn ClientModules_ShopSystem_fnc_LoadStore;",3]
	],

	[
		["typeof CurrentCursorTarget isEqualTo ""land_cg_dunkinbronuts""", "RPF_currentJob isEqualTo ""Doughnuts"""],
		["Pączkowe ubranka", "closedialog 0; createdialog ""Clothing_Menu""; [""doughnuts_general""] spawn ClientModules_ShopSystem_fnc_LoadStore;",3]
	],

	[
		["typeof CurrentCursorTarget isEqualTo ""land_cg_dunkinbronuts""", "RPF_currentJob isEqualTo ""Doughnuts"""],
		["Pączkowe bronie", "closedialog 0; createdialog ""gun_menu""; [""doughnuts_gun""] spawn ClientModules_ShopSystem_fnc_LoadStore;",3]
	],

	[
		["currentcursortarget isEqualTo fishTrader"],
		["Skup rzadkich ryb", "closedialog 0; createdialog ""RareFish_Menu""; [""rarefish""] spawn ClientModules_ShopSystem_fnc_LoadStore;",3]
	],

	[
		["typeof CurrentCursorTarget isEqualTo ""Land_buildingBarbers1"""],
		["Fryzjer", "closedialog 0; createdialog ""HairDresser_Menu""; [""Glasses""] spawn ClientModules_ShopSystem_fnc_LoadStore;",3]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;
