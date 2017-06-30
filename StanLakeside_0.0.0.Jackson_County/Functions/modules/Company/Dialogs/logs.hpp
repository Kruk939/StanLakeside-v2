class company_logs {
	idd = 666016;
	name = "company_logs";
	movingEnable = 0;
	enableSimulation = 1;
	onLoad = "";
	class controlsBackground {
		class background_image: RscPicture {
			idc = 1200;
                  text = "\openrp_client\images\company\logs.paa";
			x = -4.5 * GUI_GRID_W + GUI_GRID_X;
			y = -13 * GUI_GRID_H + GUI_GRID_Y;
			w = 50 * GUI_GRID_W;
			h = 50 * GUI_GRID_H;
		};
	};
	class controls {
            class list_box_logs: Company_RscListBox {
            	idc = 1500;
            	x = -1.5 * GUI_GRID_W + GUI_GRID_X;
            	y = 8.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 20.5 * GUI_GRID_W;
            	h = 12.5 * GUI_GRID_H;
            };
            class text_information: Company_RscText {
            	idc = 1000;
			style = ST_MULTI;
            	x = 20 * GUI_GRID_W + GUI_GRID_X;
            	y = 8.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 19.5 * GUI_GRID_W;
            	h = 12 * GUI_GRID_H;
            };
            class button_return: Company_HideButton {
            	idc = 1600;
            	x = 33.5 * GUI_GRID_W + GUI_GRID_X;
            	y = 21.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 6.5 * GUI_GRID_W;
            	h = 1.5 * GUI_GRID_H;
            };
            class button_home: Company_Button_Home {};
            class button_register: Company_Button_Register {};
            class button_managment: Company_Button_Managment {};
            class button_permission: Company_Button_Permission {};
            class button_fleet: Company_Button_Fleet {};
            class button_close: Company_Button_Close {};
      };
};
