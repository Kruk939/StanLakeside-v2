class phoneskinshop
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
			x = 40 * GUI_GRID_W + GUI_GRID_X;
			y = 0 * GUI_GRID_H + GUI_GRID_Y;
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
			x = 40.5 * GUI_GRID_W + GUI_GRID_X;
			y = 0 * GUI_GRID_H + GUI_GRID_Y;
			w = 27.5 * GUI_GRID_W;
			h = 22 * GUI_GRID_H;
		};
		
		
		class RscListbox_1500: RscListbox
		{
			idc = 1500;
			x = 10 * GUI_GRID_W + GUI_GRID_X;
			y = 2 * GUI_GRID_H + GUI_GRID_Y;
			w = 9 * GUI_GRID_W;
			h = 11 * GUI_GRID_H;
		};
		class RscListbox_1501: RscListbox
		{
			idc = 1501;
			x = 20 * GUI_GRID_W + GUI_GRID_X;
			y = 2 * GUI_GRID_H + GUI_GRID_Y;
			w = 9 * GUI_GRID_W;
			h = 11 * GUI_GRID_H;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = "Zamknij"; //--- ToDo: Localize;
			x = 25 * GUI_GRID_W + GUI_GRID_X;
			y = 14 * GUI_GRID_H + GUI_GRID_Y;
			w = 4 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			text = "Kup"; //--- ToDo: Localize;
			x = 10 * GUI_GRID_W + GUI_GRID_X;
			y = 14 * GUI_GRID_H + GUI_GRID_Y;
			w = 4 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class RscText_1000: RscText
		{
			idc = 1000;
			text = "Telefon"; //--- ToDo: Localize;
			x = 10 * GUI_GRID_W + GUI_GRID_X;
			y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 4.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class RscText_1001: RscText
		{
			idc = 1001;
			text = "Tapeta"; //--- ToDo: Localize;
			x = 20 * GUI_GRID_W + GUI_GRID_X;
			y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 4.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class RscText_1002: RscText
		{
			idc = 1002;
			text = "Cena : 1500$"; //--- ToDo: Localize;
			x = 17 * GUI_GRID_W + GUI_GRID_X;
			y = 14 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
	};
};