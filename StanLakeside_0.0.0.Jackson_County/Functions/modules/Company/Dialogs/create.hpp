class company_create {
	idd = 666012;
	name = "company_create";
	movingEnable = 0;
	enableSimulation = 1;
	onLoad = "";
	class controlsBackground {
		class background_image: RscPicture {
			idc = 1200;
	        text = "\openrp_client\images\company\register.paa";
			x = -4.5 * GUI_GRID_W + GUI_GRID_X;
			y = -13 * GUI_GRID_H + GUI_GRID_Y;
			w = 50 * GUI_GRID_W;
			h = 50 * GUI_GRID_H;
		};
	};
      class edit_shortucut: Company_RscEdit
      {
      	idc = 1400;
      	x = 14.5 * GUI_GRID_W + GUI_GRID_X;
      	y = 8.5 * GUI_GRID_H + GUI_GRID_Y;
      	w = 28 * GUI_GRID_W;
      	h = 2 * GUI_GRID_H;
      	colorBackground[] = {0,0,0,0.5};
      };
      class edit_full_name: Company_RscEdit
      {
      	idc = 1401;
      	x = 14.5 * GUI_GRID_W + GUI_GRID_X;
      	y = 11.5 * GUI_GRID_H + GUI_GRID_Y;
      	w = 28 * GUI_GRID_W;
      	h = 6 * GUI_GRID_H;
      	colorBackground[] = {0,0,0,0.5};
      };
      class button_close: Company_HideButton {
            idc = 1240;
            action = "closeDialog 0;";
            text = ""; //--- ToDo: Localize;
            x = 41 * GUI_GRID_W + GUI_GRID_X;
            y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 3.5 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
      };
      class button_create: Company_HideButton
      {
      	idc = 1201;
      	text = "Utwďż˝rz"; //--- ToDo: Localize;
      	x = 28 * GUI_GRID_W + GUI_GRID_X;
      	y = 21 * GUI_GRID_H + GUI_GRID_Y;
      	w = 14.5 * GUI_GRID_W;
      	h = 2 * GUI_GRID_H;
      };
      class button_home: Company_HideButton {
            idc = 1231;
            action = "";
            x = 3.5 * GUI_GRID_W + GUI_GRID_X;
            y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 3.5 * GUI_GRID_W;
            h = 1.5 * GUI_GRID_H;
      };
      class button_register: Company_HideButton {
            idc = 1232;
            action = "";
            x = 9.5 * GUI_GRID_W + GUI_GRID_X;
            y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 3.5 * GUI_GRID_W;
            h = 1.5 * GUI_GRID_H;
      };
      class button_managment: Company_HideButton {
            idc = 1233;
            action = "";
            x = 15 * GUI_GRID_W + GUI_GRID_X;
            y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 5 * GUI_GRID_W;
            h = 1.5 * GUI_GRID_H;
      };
      class text_price: RscText
      {
      	idc = 1003;
      	text = "Cena: $50000"; //--- ToDo: Localize;
      	x = 14.5 * GUI_GRID_W + GUI_GRID_X;
      	y = 18.5 * GUI_GRID_H + GUI_GRID_Y;
      	w = 28 * GUI_GRID_W;
      	h = 2 * GUI_GRID_H;
      	colorBackground[] = {0,0,0,1};
      };
};
