class carplatechange
{
	idd = 1103;
	class controls 
	{

		class RscPicture_1200: RscPicture
		{
			idc = 1200;
			text = "\SL_Client\Textures\Dialogs\BASIC\basic.paa";
			x = -3.38 * GUI_GRID_W + GUI_GRID_X;
			y = -3.41 * GUI_GRID_H + GUI_GRID_Y;
			w = 47 * GUI_GRID_W;
			h = 32 * GUI_GRID_H;
		};
		class RscEdit_1400: RscEdit
		{
			idc = 1400;
			x = 11.5 * GUI_GRID_W + GUI_GRID_X;
			y = 15 * GUI_GRID_H + GUI_GRID_Y;
			w = 17 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = "Zmień rejestrację"; //--- ToDo: Localize;
			action = "[] call ClientModules_Garage_fnc_tryChangePlate;";
			x = 4.5 * GUI_GRID_W + GUI_GRID_X;
			y = 18 * GUI_GRID_H + GUI_GRID_Y;
			w = 7 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			text = "Anuluj i zamknij"; //--- ToDo: Localize;
			x = 28.5 * GUI_GRID_W + GUI_GRID_X;
			y = 18 * GUI_GRID_H + GUI_GRID_Y;
			w = 7 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class RscText_1000: RscText
		{
			idc = 1000;
			text = "Wprowadź nową tablicę rejestracyjną dla twojego pojazdu:"; //--- ToDo: Localize;
			x = 5 * GUI_GRID_W + GUI_GRID_X;
			y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 27.8 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
	};
};