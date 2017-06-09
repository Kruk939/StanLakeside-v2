class garage
{
	idd = 1013;
	class controls 
	{
		class RscListbox_1500: RscListbox
		{
			idc = 1500;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 0 * GUI_GRID_H + GUI_GRID_Y;
			w = 40 * GUI_GRID_W;
			h = 23 * GUI_GRID_H;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = "Wyciągnij"; //--- ToDo: Localize;
			action = "[] call ClientModules_Garage_fnc_fetchCar;";
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 24 * GUI_GRID_H + GUI_GRID_Y;
			w = 7 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			text = "Zamknij"; //--- ToDo: Localize;
			action = "closeDialog 0";
			x = 33 * GUI_GRID_W + GUI_GRID_X;
			y = 24 * GUI_GRID_H + GUI_GRID_Y;
			w = 7 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
		class RscFrame_1800: RscFrame
		{
			idc = 1800;
			x = -0.67 * GUI_GRID_W + GUI_GRID_X;
			y = -0.34 * GUI_GRID_H + GUI_GRID_Y;
			w = 41 * GUI_GRID_W;
			h = 27 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.8};
		};
	};
};