class company_atm {
	idd = 666014;
	name = "company_atm";
	movingEnable = 0;
	enableSimulation = 1;
	onLoad = "";
	class controls {
		class edit_cash: Client_RscEdit {
			idc = 1001;
			text = "";
			autocomplete = "";
			x = 27 * GUI_GRID_W + GUI_GRID_X;
			y = 6 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};
		class listbox_players: client_RscListBox {
			idc = 1101;
			x = 13.5 * GUI_GRID_W + GUI_GRID_X;
			y = 6 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 4.5 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};
		class listbox_employees: client_RscListBox {
			idc = 1102;
			x = 13.5 * GUI_GRID_W + GUI_GRID_X;
			y = 12 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 4.5 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};
		class listbox_companies: client_RscListBox {
			idc = 1103;
			x = 13.5 * GUI_GRID_W + GUI_GRID_X;
			y = 18 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 4.5 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};
		class list_box_last_operations: client_RscListBox {
			idc = 1104;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 6 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 16.5 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};
		class button_withdraw: client_RscButtonMenu {
			idc = 1201;
			action = "[""withDraw""] spawn ClientModules_Company_fnc_bank_transfer;";
			text = "Wypłać"; //--- ToDo: Localize;
			x = 27 * GUI_GRID_W + GUI_GRID_X;
			y = 8 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class button_payin: client_RscButtonMenu {
			idc = 1202;
			action = "[""payIN""] spawn ClientModules_Company_fnc_bank_transfer;";
			text = "Wpłać"; //--- ToDo: Localize;
			x = 27 * GUI_GRID_W + GUI_GRID_X;
			y = 9.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class button_pay_player: client_RscButtonMenu {
			idc = 1203;
			action = "[""wire_person""] spawn ClientModules_Company_fnc_bank_transfer;";
			text = "Przelej (osoba)"; //--- ToDo: Localize;
			x = 27 * GUI_GRID_W + GUI_GRID_X;
			y = 11 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class button_pay_employee: client_RscButtonMenu {
			idc = 1204;
			action = "[""wire_employee""] spawn ClientModules_Company_fnc_bank_transfer;";
			text = "Przelej (pracownik)"; //--- ToDo: Localize;
			x = 27 * GUI_GRID_W + GUI_GRID_X;
			y = 12.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class button_pay_company: client_RscButtonMenu {
			idc = 1205;
			action = "[""wire_company""] spawn ClientModules_Company_fnc_bank_transfer;";
			text = "Przelej (firma)"; //--- ToDo: Localize;
			x = 27 * GUI_GRID_W + GUI_GRID_X;
			y = 14 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class button_close: client_RscButtonMenu {
			idc = 1206;
			text = "Zamknij"; //--- ToDo: Localize;
			action = "closeDialog 0; company_var_active_bank = 0;";
			x = 27 * GUI_GRID_W + GUI_GRID_X;
			y = 23 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
		class text_balance: RscText {
			idc = 1301;
			text = "Stan konta: $5000000"; //--- ToDo: Localize;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 2 * GUI_GRID_H + GUI_GRID_Y;
			w = 40 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};
		class text_title: RscText {
			idc = 1302;
			text = "Nazwa firmy: "; //--- ToDo: Localize;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 0 * GUI_GRID_H + GUI_GRID_Y;
			w = 40 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};
		class text_actions: RscText {
			idc = -1;
			text = "Akcje"; //--- ToDo: Localize;
			x = 27 * GUI_GRID_W + GUI_GRID_X;
			y = 5 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};
		class text_last_operations: RscText {
			idc = -1;
			text = "Ostatnie operacje"; //--- ToDo: Localize;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 5 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};
		class text_players: RscText {
			idc = -1;
			text = "Osoby"; //--- ToDo: Localize;
			x = 13.5 * GUI_GRID_W + GUI_GRID_X;
			y = 5 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};
		class text_companies: RscText {
			idc = -1;
			text = "Firmy"; //--- ToDo: Localize;
			x = 13.5 * GUI_GRID_W + GUI_GRID_X;
			y = 17 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};
		class text_employees: RscText {
			idc = -1;
			text = "Pracownicy"; //--- ToDo: Localize;
			x = 13.5 * GUI_GRID_W + GUI_GRID_X;
			y = 11 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};
	};
};
