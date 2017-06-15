class phoneskinshop
{
	idd = 1103;
	class controls 
	{
		class RscPicture_1202: RscPicture
		{
			idc = 1202;
			text = "\SL_Client\Textures\Dialogs\BASIC\basic.paa";
			x = -3.5 * GUI_GRID_W + GUI_GRID_X;
			y = -7 * GUI_GRID_H + GUI_GRID_Y;
			w = 46.5 * GUI_GRID_W;
			h = 31.5 * GUI_GRID_H;
		};
		class RscPicture_1200: RscPicture
		{
			idc = 1201;

			text = "\SL_Client\Textures\Dialogs\Phone\Wallpapers\1.paa";
			x = 40 * GUI_GRID_W + GUI_GRID_X;
			y = 0 * GUI_GRID_H + GUI_GRID_Y;
			w = 28.5 * GUI_GRID_W;
			h = 22 * GUI_GRID_H;
		};
		class RscPicture_1201: RscPicture
		{
			idc = 1200;

			text = "\SL_Client\Textures\Dialogs\Phone\PhoneFrame\bg7.paa";
			x = 40.5 * GUI_GRID_W + GUI_GRID_X;
			y = 0 * GUI_GRID_H + GUI_GRID_Y;
			w = 27.5 * GUI_GRID_W;
			h = 22 * GUI_GRID_H;
		};
		class RscListbox_1500: RscListBox
		{
			idc = 1500;

			x = 5.5 * GUI_GRID_W + GUI_GRID_X;
			y = 2 * GUI_GRID_H + GUI_GRID_Y;
			w = 9 * GUI_GRID_W;
			h = 11 * GUI_GRID_H;
			onLBSelChanged = "[] call ClientModules_Phone_fnc_onShopLBChange;";
		};
		class RscListbox_1501: RscListBox
		{
			idc = 1501;

			x = 15.5 * GUI_GRID_W + GUI_GRID_X;
			y = 2 * GUI_GRID_H + GUI_GRID_Y;
			w = 9 * GUI_GRID_W;
			h = 11 * GUI_GRID_H;
			onLBSelChanged = "[] call ClientModules_Phone_fnc_onShopLBChange;";
		};
		class RscListBox_1502: RscListBox
		{
			idc = 1502;

			x = 25.5 * GUI_GRID_W + GUI_GRID_X;
			y = 2 * GUI_GRID_H + GUI_GRID_Y;
			w = 9 * GUI_GRID_W;
			h = 11 * GUI_GRID_H;
			onLBSelChanged = "[] call ClientModules_Phone_fnc_onShopLBChange;";
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			action = "closeDialog 0;";
			text = "$STR_RPF_MODULES_PHONE_CLOSE"; //--- ToDo: Localize;
			x = 30 * GUI_GRID_W + GUI_GRID_X;
			y = 14 * GUI_GRID_H + GUI_GRID_Y;
			w = 4 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			action = "[] call ClientModules_Phone_fnc_shopTryBuy;";
			text = "$STR_RPF_MODULES_PHONE_BUY"; //--- ToDo: Localize;
			x = 6 * GUI_GRID_W + GUI_GRID_X;
			y = 14 * GUI_GRID_H + GUI_GRID_Y;
			w = 4 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class RscText_1000: RscText
		{
			idc = 1000;

			text = "$STR_RPF_MODULES_PHONE_SKIN"; //--- ToDo: Localize;
			x = 5.5 * GUI_GRID_W + GUI_GRID_X;
			y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 4.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class RscText_1001: RscText
		{
			idc = 1001;

			text = "$STR_RPF_MODULES_PHONE_BACKGROUND"; //--- ToDo: Localize;
			x = 15 * GUI_GRID_W + GUI_GRID_X;
			y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class RscText_1002: RscText
		{
			idc = 1002;

			text = "$STR_RPF_MODULES_PHONE_PRICE"; //--- ToDo: Localize;
			x = 18.5 * GUI_GRID_W + GUI_GRID_X;
			y = 14 * GUI_GRID_H + GUI_GRID_Y;
			w = 5.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class RscText_1005: RscText
		{
			idc = 1001;

			text = "$STR_RPF_MODULES_PHONE_RINGTONE"; //--- ToDo: Localize;
			x = 25.5 * GUI_GRID_W + GUI_GRID_X;
			y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 4.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
	};
};