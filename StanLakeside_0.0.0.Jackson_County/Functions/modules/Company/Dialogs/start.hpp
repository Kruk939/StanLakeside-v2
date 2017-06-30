class company_start {
	idd = 666019;
	name = "company_start";
	movingEnable = 0;
	enableSimulation = 1;
	onLoad = "";
	class controlsBackground {
		class background_image: RscPicture {
			idc = 1200;
                  text = "\openrp_client\images\company\start.paa";
			x = -4.5 * GUI_GRID_W + GUI_GRID_X;
			y = -13 * GUI_GRID_H + GUI_GRID_Y;
			w = 50 * GUI_GRID_W;
			h = 50 * GUI_GRID_H;
		};
	};
	class controls {
		class listbox_companies: Company_RscListBox {
			idc = 1500;
                  onLBSelChanged = " [""companiesLBselect""] spawn ClientModules_Company_fnc_start_action; ";
            	x = -2.5 * GUI_GRID_W + GUI_GRID_X;
            	y = 10.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 13.5 * GUI_GRID_W;
            	h = 10.5 * GUI_GRID_H;
		};
            class text_information: Company_RscText {
            	idc = 1000;
			style = ST_MULTI;
            	x = 12.5 * GUI_GRID_W + GUI_GRID_X;
            	y = 10.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 29 * GUI_GRID_W;
            	h = 8 * GUI_GRID_H;
            };
            class button_start: Company_HideButton {
            	idc = 1600;
                  action = " [""start""] spawn ClientModules_Company_fnc_start_action; ";
                  x = 12.5 * GUI_GRID_W + GUI_GRID_X;
            	y = 19.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 29 * GUI_GRID_W;
            	h = 1.5 * GUI_GRID_H;
            };
            class button_lookforcompany: Company_HideButton {
            	idc = 1601;
			action = " [] spawn { closeDialog 0; uiSleep 0.2; [] spawn ClientModules_Company_fnc_application_open; }; ";
            	x = -2.5 * GUI_GRID_W + GUI_GRID_X;
            	y = 21.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 13.5 * GUI_GRID_W;
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
