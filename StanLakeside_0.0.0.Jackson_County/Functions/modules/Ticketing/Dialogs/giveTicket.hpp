class giveTicket
{	
	idd = 1011;
	class controls 
	{
		class RscFrame_1800: RscText
		{
			idc = 1800;
			x = 0.40375 * safezoneW + safezoneX;
			y = 0.335064 * safezoneH + safezoneY;
			w = 0.1925 * safezoneW;
			h = 0.30788 * safezoneH;
			colorBackground[] = {0,0,0,0.8};
		};
		class RscText_1000: RscText
		{
			idc = 1000;
			text = "Ticket Amount"; //--- ToDo: Localize;
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.34606 * safezoneH + safezoneY;
			w = 0.09625 * safezoneW;
			h = 0.0329871 * safezoneH;
		};
		class RscText_1001: RscText
		{
			idc = 1001;
			text = "Ticket Reason"; //--- ToDo: Localize;
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.434026 * safezoneH + safezoneY;
			w = 0.09625 * safezoneW;
			h = 0.0329871 * safezoneH;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = "Submit"; //--- ToDo: Localize;
			x = 0.534375 * safezoneW + safezoneX;
			y = 0.57697 * safezoneH + safezoneY;
			w = 0.055 * safezoneW;
			h = 0.0549786 * safezoneH;
			action = [RPF_TicketTarget, player]call ClientModules_Ticketing_fnc_ticketSubmit;
		};
		class RscEdit_1400: RscEdit
		{
			idc = 1400;
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.467013 * safezoneH + safezoneY;
			w = 0.165 * safezoneW;
			h = 0.0879657 * safezoneH;
		};
		class RscEdit_1401: RscEdit
		{
			idc = 1401;
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.390043 * safezoneH + safezoneY;
			w = 0.165 * safezoneW;
			h = 0.0329871 * safezoneH;
		};
	};
};