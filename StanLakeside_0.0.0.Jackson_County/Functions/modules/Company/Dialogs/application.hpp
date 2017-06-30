class company_application {
	idd = 666015;
	name = "company_application";
	movingEnable = 0;
	enableSimulation = 1;
	onLoad = "";
	class controlsBackground {
		class background_image: RscPicture {
			idc = 1200;
                  text = "\openrp_client\images\company\application.paa";
			x = -4.5 * GUI_GRID_W + GUI_GRID_X;
			y = -13 * GUI_GRID_H + GUI_GRID_Y;
			w = 50 * GUI_GRID_W;
			h = 50 * GUI_GRID_H;
		};
	};
	class controls {
            class listbox_companies: Company_RscListBox {
            	idc = 1500;
            	x = -2.5 * GUI_GRID_W + GUI_GRID_X;
            	y = 10.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 13.5 * GUI_GRID_W;
            	h = 13 * GUI_GRID_H;
            };
            class edit_information: Company_RscEdit {
            	idc = 1400;
			style = ST_MULTI;
            	x = 20.5 * GUI_GRID_W + GUI_GRID_X;
            	y = 12 * GUI_GRID_H + GUI_GRID_Y;
            	w = 21 * GUI_GRID_W;
            	h = 7 * GUI_GRID_H;
            };
            class text_name: Company_RscText {
            	idc = 1000;
                  text = "TEST";
            	x = 20.5 * GUI_GRID_W + GUI_GRID_X;
            	y = 10.33 * GUI_GRID_H + GUI_GRID_Y;
            	w = 21 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            };
            class button_discard: Company_HideButton {
            	idc = 1600;
			action = " [] spawn { closeDialog 0; uiSleep 0.2; [] spawn ClientModules_Company_fnc_start_open; }; ";
            	x = 36 * GUI_GRID_W + GUI_GRID_X;
            	y = 19.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 5.5 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            };
            class button_submit: Company_HideButton {
            	idc = 1601;
			action = " [""send""] spawn ClientModules_Company_fnc_application_action; ";
            	x = 29.75 * GUI_GRID_W + GUI_GRID_X;
            	y = 19.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 5.5 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            };
            class button_home: Company_Button_Home {};
            class button_register: Company_Button_Register {};
            class button_managment: Company_Button_Managment {};
            class button_permission: Company_Button_Permission {};
            class button_fleet: Company_Button_Fleet {};
            class button_close: Company_Button_Close {};
      };
};
