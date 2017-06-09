class phoneplayerinfo
{
	idd = 1103;
	class controls 
	{
////////////////////////////////////////////////////////
// Wallpaper
////////////////////////////////////////////////////////
		class RscPicture_1200: RscPicture
		{
			idc = 1201;
			text = "\SL_Client\Textures\Dialogs\Phone\Wallpapers\1.paa";
			x = 5 * GUI_GRID_W + GUI_GRID_X;
			y = -1 * GUI_GRID_H + GUI_GRID_Y;
			w = 28.5 * GUI_GRID_W;
			h = 22 * GUI_GRID_H;
		};
////////////////////////////////////////////////////////
// Phone frame
////////////////////////////////////////////////////////
		class RscPicture_1201: RscPicture
		{
			idc = 1200;
			text = "\SL_Client\Textures\Dialogs\Phone\PhoneFrame\bg1.paa";
			x = 5.5 * GUI_GRID_W + GUI_GRID_X;
			y = -1 * GUI_GRID_H + GUI_GRID_Y;
			w = 27.5 * GUI_GRID_W;
			h = 22 * GUI_GRID_H;
		};
////////////////////////////////////////////////////////
// Home picture
////////////////////////////////////////////////////////
		class RscPicture_1202: RscPicture
		{
			idc = 1202;
			text = "SL_Client\Textures\Dialogs\Phone\Icons\home.paa";
			x = 18.5 * GUI_GRID_W + GUI_GRID_X;
			y = 17 * GUI_GRID_H + GUI_GRID_Y;
			w = 2 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class RscButton_1612: RscButtonInv
		{
			idc = 1612;
			//text = "Home"; //--- ToDo: Localize;
			tooltip = "Home button"; //--- ToDo: Localize;
			action = "[] call ClientModules_Phone_fnc_openPhone;";
			x = 18.5 * GUI_GRID_W + GUI_GRID_X;
			y = 17 * GUI_GRID_H + GUI_GRID_Y;
			w = 2 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		
		class RscText_1001: RscText
		{
			idc = 1001;
			text = "$STR_RPF_MODULES_PHONE_NUMBER"; //--- ToDo: Localize;
			font = "PuristaMedium";
			x = 14.5 * GUI_GRID_W + GUI_GRID_X;
			y = 3.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 7 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class RscText_1002: RscText
		{
			idc = 1002;
			text = "123456789"; //--- ToDo: Localize;
			font = "PuristaMedium";
			x = 14.5 * GUI_GRID_W + GUI_GRID_X;
			y = 5 * GUI_GRID_H + GUI_GRID_Y;
			w = 7.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class RscText_1003: RscText
		{
			idc = 1003;
			text = "$STR_RPF_MODULES_PHONE_BALANCE"; //--- ToDo: Localize;
			font = "PuristaMedium";
			x = 14.5 * GUI_GRID_W + GUI_GRID_X;
			y = 6.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 8 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class RscText_1004: RscText
		{
			idc = 1004;
			text = "123456789"; //--- ToDo: Localize;
			font = "PuristaMedium";
			x = 14.5 * GUI_GRID_W + GUI_GRID_X;
			y = 8 * GUI_GRID_H + GUI_GRID_Y;
			w = 9 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class RscText_1005: RscText
		{
			idc = 1005;
			text = "$STR_RPF_MODULES_PHONE_BANKACCOUNT"; //--- ToDo: Localize;
			font = "PuristaMedium";
			x = 14.5 * GUI_GRID_W + GUI_GRID_X;
			y = 9.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 8 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class RscText_1006: RscText
		{
			idc = 1006;
			text = "123456789"; //--- ToDo: Localize;
			font = "PuristaMedium";
			x = 14.5 * GUI_GRID_W + GUI_GRID_X;
			y = 11 * GUI_GRID_H + GUI_GRID_Y;
			w = 9 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		
	};
};