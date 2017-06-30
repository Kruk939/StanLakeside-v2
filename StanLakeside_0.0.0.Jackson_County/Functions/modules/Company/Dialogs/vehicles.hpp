class company_vehicles {
	idd = 666017;
	name = "company_vehicles";
	movingEnable = 0;
	enableSimulation = 1;
	onLoad = "";
	class controlsBackground {
		class background_image: RscPicture {
			idc = 1200;
                  text = "\openrp_client\images\company\vehicles.paa";
			x = -4.5 * GUI_GRID_W + GUI_GRID_X;
			y = -13 * GUI_GRID_H + GUI_GRID_Y;
			w = 50 * GUI_GRID_W;
			h = 50 * GUI_GRID_H;
		};
	};
	class controls {
            class edit_access_level: Company_RscEdit {
                  idc = 1400;
                  x = 32 * GUI_GRID_W + GUI_GRID_X;
                  y = 18.1 * GUI_GRID_H + GUI_GRID_Y;
                  w = 8 * GUI_GRID_W;
                  h = 1.445 * GUI_GRID_H;
            };
            class lisbox_vehicles: Company_RscListBox {
            	idc = 1500;
			onLBSelChanged = " [""vehiclesLBselect""] spawn ClientModules_Company_fnc_vehicles_action; ";
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
            	w = 19 * GUI_GRID_W;
            	h = 8.5 * GUI_GRID_H;
            };
            class button_save: Company_HideButton {
            	idc = 1600;
			action = " [""send""] spawn ClientModules_Company_fnc_vehicles_action; ";
            	x = 20 * GUI_GRID_W + GUI_GRID_X;
            	y = 20 * GUI_GRID_H + GUI_GRID_Y;
            	w = 20 * GUI_GRID_W;
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
