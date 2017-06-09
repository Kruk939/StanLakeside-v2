class phonecontacts
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
		
		class RscListbox_1500: RscListbox
		{
			idc = 1500;
			sizeEx = 0.030;
			font = "PuristaMedium";
			x = 14 * GUI_GRID_W + GUI_GRID_X;
			y = 3 * GUI_GRID_H + GUI_GRID_Y;
			w = 10.5 * GUI_GRID_W;
			h = 9 * GUI_GRID_H;
		};
////////////////////////////////////////////////////////
// plus icon picture
////////////////////////////////////////////////////////
		class RscPicture_1203: RscPicture
		{
			idc = 1203;
			text = "SL_Client\Textures\Dialogs\Phone\Icons\plus.paa";
			x = 21.5 * GUI_GRID_W + GUI_GRID_X;
			y = 14 * GUI_GRID_H + GUI_GRID_Y;
			w = 2.5 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
		class RscButton_1601: RscButtonInv
		{
			idc = 1601;
			//text = "Add contact"; //--- ToDo: Localize;
			tooltip = "Add contact"; //--- ToDo: Localize;
			action = "[] call ClientModules_Phone_fnc_openContactsAdd;";
			x = 21.5 * GUI_GRID_W + GUI_GRID_X;
			y = 14 * GUI_GRID_H + GUI_GRID_Y;
			w = 2.5 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
		class RscPicture_1204: RscPicture
		{
			idc = 1203;
			text = "SL_Client\Textures\Dialogs\Phone\Icons\phonegreen.paa";
			x = 14.5 * GUI_GRID_W + GUI_GRID_X;
			y = 14 * GUI_GRID_H + GUI_GRID_Y;
			w = 2.5 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
		class RscButton_1602: RscButtonInv
		{
			idc = 1602;
			action = "[] call ClientModules_Phone_fnc_trySendCall;";
			x = 14.5 * GUI_GRID_W + GUI_GRID_X;
			y = 14 * GUI_GRID_H + GUI_GRID_Y;
			w = 2.5 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
			tooltip = "Call selected contact"; //--- ToDo: Localize;
		};
	};
};