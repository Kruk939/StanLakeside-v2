class shopclothing
{
	idd = 1103;
    onload = "[] spawn ClientModules_ShoppingSystem_fnc_loadPreview;";
    onunload = "RPF_shoppingDialog = false; deletevehicle ShoppingMan; RPF_camera cameraEffect [""TERMINATE"",""BACK""]; camDestroy RPF_camera;";
	class controls 
	{

		class RscPicture_1200: RscPicture
		{
			idc = 1200;
			text = "\SL_Client\Textures\Dialogs\BASIC\basic.paa";
			x = -34.5 * GUI_GRID_W + GUI_GRID_X;
	        y = -4.5 * GUI_GRID_H + GUI_GRID_Y;
	        w = 44.5 * GUI_GRID_W;
	        h = 31.5 * GUI_GRID_H;
		};
		class RscListbox_1500: RscListbox
		{
			idc = 1500;
			x = -27.5 * GUI_GRID_W + GUI_GRID_X;
	        y = 3.5 * GUI_GRID_H + GUI_GRID_Y;
	        w = 25 * GUI_GRID_W;
	        h = 12 * GUI_GRID_H;
            onLBSelChanged = "[] call ClientModules_ShoppingSystem_fnc_onDialogLBChange;";
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = "$STR_RPF_MODULES_SHOPPINGSYSTEM_BUY"; //--- ToDo: Localize;
            action = "[] call ClientModules_ShoppingSystem_fnc_tryPurchase;";
			x = -27.5 * GUI_GRID_W + GUI_GRID_X;
	        y = 17 * GUI_GRID_H + GUI_GRID_Y;
	        w = 3.5 * GUI_GRID_W;
	        h = 1 * GUI_GRID_H;
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			text = "$STR_RPF_MODULES_SHOPPINGSYSTEM_CLOSE"; //--- ToDo: Localize;
			action = "closeDialog 0;";
			x = -6 * GUI_GRID_W + GUI_GRID_X;
	        y = 17 * GUI_GRID_H + GUI_GRID_Y;
	        w = 3.5 * GUI_GRID_W;
	        h = 1 * GUI_GRID_H;
		};
		class RscText_1000: RscText
		{
			idc = 1000;
			text = "$STR_RPF_MODULES_SHOPPINGSYSTEM_CLOTHINGSTORE"; //--- ToDo: Localize;
			x = -18.5 * GUI_GRID_W + GUI_GRID_X;
	        y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
	        w = 8 * GUI_GRID_W;
	        h = 1 * GUI_GRID_H;
		};
		class RscText_1002: RscText
		{
			idc = 1002;
			text = "$STR_RPF_MODULES_SHOPPINGSYSTEM_PRICE"; //--- ToDo: Localize;
			x = -23 * GUI_GRID_W + GUI_GRID_X;
	        y = 17 * GUI_GRID_H + GUI_GRID_Y;
	        w = 6.5 * GUI_GRID_W;
	        h = 1 * GUI_GRID_H;
		};
		class RscText_1003: RscText
		{
			idc = 1003;
			text = "$STR_RPF_MODULES_SHOPPINGSYSTEM_AMOUNT"; //--- ToDo: Localize;
			x = -14.5 * GUI_GRID_W + GUI_GRID_X;
	        y = 17 * GUI_GRID_H + GUI_GRID_Y;
	        w = 8.5 * GUI_GRID_W;
	        h = 1 * GUI_GRID_H;
		};
        class RscButton_1606: RscButton
        {
	        idc = 1601;
	        text = "Men"; //--- ToDo: Localize;
            action = "[""clothingmen""] call ClientModules_ShoppingSystem_fnc_loadData;";
	        x = -1.5 * GUI_GRID_W + GUI_GRID_X;
	        y = 3 * GUI_GRID_H + GUI_GRID_Y;
	        w = 4.5 * GUI_GRID_W;
	        h = 1 * GUI_GRID_H;
        };
        class RscButton_1605: RscButton
        {
	        idc = -1;
	        text = "Women"; //--- ToDo: Localize;
            action = "[""clothingwomen""] call ClientModules_ShoppingSystem_fnc_loadData;";
	        x = -1.5 * GUI_GRID_W + GUI_GRID_X;
	        y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
	        w = 4.5 * GUI_GRID_W;
	        h = 1 * GUI_GRID_H;
        };
        class RscButton_1602: RscButton
        {
	        idc = -1;
	        action = "";
	        text = "Backpack's"; //--- ToDo: Localize;
	        x = -1.5 * GUI_GRID_W + GUI_GRID_X;
	        y = 6 * GUI_GRID_H + GUI_GRID_Y;
	        w = 4.5 * GUI_GRID_W;
	        h = 1 * GUI_GRID_H;
        };
        class RscButton_1603: RscButton
        {
	        idc = -1;
	        action = "";
	        text = "Hat's"; //--- ToDo: Localize;
	        x = -1.5 * GUI_GRID_W + GUI_GRID_X;
	        y = 7.5 * GUI_GRID_H + GUI_GRID_Y;
	        w = 4.5 * GUI_GRID_W;
	        h = 1 * GUI_GRID_H;
        };
        class RscButton_1604: RscButton
        {
	        idc = -1;
	        action = "";
	        text = "Glasses"; //--- ToDo: Localize;
	        x = -1.5 * GUI_GRID_W + GUI_GRID_X;
	        y = 9 * GUI_GRID_H + GUI_GRID_Y;
	        w = 4.5 * GUI_GRID_W;
	        h = 1 * GUI_GRID_H;
        };
	};
};