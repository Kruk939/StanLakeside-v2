class company_main {
	idd = 666011;
	name = "company_main";
	movingEnable = 0;
	enableSimulation = 1;
	onLoad = "";
	class controls {
		class list_box_companies: client_RscListBox {
			idc = 1101;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 40 * GUI_GRID_W;
			h = 21 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};
		class button_company_start: client_RscButtonMenu {
			idc = 1201;
			text = "Rozpocznij pracę"; //--- ToDo: Localize;
			x = 21 * GUI_GRID_W + GUI_GRID_X;
			y = 23.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 9.5 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class button_close: client_RscButtonMenu
		{
			idc = 1202;
			text = "Zamknij"; //--- ToDo: Localize;
			x = 30.5 * GUI_GRID_W + GUI_GRID_X;
			y = 23.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 9.5 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class text_title_companies: RscText {
			idc = -1;
			text = "Procownik w firmach:"; //--- ToDo: Localize;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 40 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};
		class text_title: RscText {
			idc = -1;
			text = "Przegladanie aktualnych firm"; //--- ToDo: Localize;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 0 * GUI_GRID_H + GUI_GRID_Y;
			w = 40 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};
	};
};
