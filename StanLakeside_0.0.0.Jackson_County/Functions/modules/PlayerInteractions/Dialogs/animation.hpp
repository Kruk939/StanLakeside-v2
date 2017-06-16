class animation
{
	idd = 1103;
	class controls 
	{

		class RscPicture_1200: RscPicture
		{
			idc = 1200;
			text = "\SL_Client\Textures\Dialogs\BASIC\basic.paa";
			x = -1.23 * GUI_GRID_W + GUI_GRID_X;
			y = -3.27 * GUI_GRID_H + GUI_GRID_Y;
			w = 42.5 * GUI_GRID_W;
			h = 35 * GUI_GRID_H;
		};
		class RscListbox_1500: RscListbox
		{
			idc = 1500;
			x = 6 * GUI_GRID_W + GUI_GRID_X;
			y = 7 * GUI_GRID_H + GUI_GRID_Y;
			w = 28 * GUI_GRID_W;
			h = 11 * GUI_GRID_H;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			action = "[] spawn ClientModules_PI_fnc_doAnimation";
			text = "Do animation"; //--- ToDo: Localize;
			x = 6 * GUI_GRID_W + GUI_GRID_X;
			y = 20.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 7 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			action = "closeDialog 0;";
			text = "Close"; //--- ToDo: Localize;
			x = 27 * GUI_GRID_W + GUI_GRID_X;
			y = 20.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 7 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class RscText_1000: RscText
		{
			idc = 1000;
			text = "Animation list"; //--- ToDo: Localize;
			x = 15.5 * GUI_GRID_W + GUI_GRID_X;
			y = 5 * GUI_GRID_H + GUI_GRID_Y;
			w = 9.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
	};
};