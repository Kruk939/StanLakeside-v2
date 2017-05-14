class HUDGoPro
   	{
	idd=490;
	movingEnable=0;
  	fadein=1;
	duration = 999999999;
  	fadeout=1;
	name="HUDGoPro";
	onLoad="uiNamespace setVariable ['HUDGoPro',_this select 0]";
	objects[]={};
		
	class controls
	{
		class hud7
		{
			type = 0;
			//style = 0x30 + 0x800;
			style = 0x30;
			idc=119870;
			fadein=1;
		  	fadeout=1;
			x = 0.967 * safezoneW + safezoneX;
			y = 0.35 * safezoneH + safezoneY;
			w = 0.075; 
			h = 0.1;
			sizeEx=0.01;
			size=0.01;
			font="PuristaLight";
			colorBackground[]={0,0,0,0};
			colorText[] = { 1 , 1 , 1 , 1 };
			shadow=0;
			//text = "<img size='2' image='sl_client\textures\icons\record.paa'/>"
			text = "\sl_client\textures\icons\record.paa";
		};
	};
};

class HUDNos
   	{
	idd=491;
	movingEnable=0;
  	fadein=1;
	duration = 999999999;
  	fadeout=1;
	name="HUDNos";
	onLoad="uiNamespace setVariable ['HUDNos',_this select 0]";
	objects[]={};
		
	class controls
	{
		class hud8
		{
			type = 0;
			style = 0x30;
			idc=119871;
			fadein=1;
		  	fadeout=1;
			x = 0.967 * safezoneW + safezoneX;
			y = 0.41 * safezoneH + safezoneY;
			w = 0.075; 
			h = 0.1;
			sizeEx=0.01;
			size=0.01;
			font="PuristaLight";
			colorBackground[]={0,0,0,0};
			colorText[] = { 1 , 1 , 1 , 1 };
			shadow=0;
			//text = "<img size='2' image='sl_client\textures\icons\nos.paa'/>"
			text = "\sl_client\textures\icons\nos.paa";
		};
	};
};

class HUDNothing
   	{
	idd=492;
	movingEnable=0;
  	fadein=1;
	duration = 999999999;
  	fadeout=1;
	name="HUDNothing";
	onLoad="uiNamespace setVariable ['HUDNothing',_this select 0]";
	objects[]={};
		
	class controls
	{
		class hud9
		{
			type = 0;
			style = 2096;			
			idc=119872;
			fadein=1;
		  	fadeout=1;
			x = 0.967 * safezoneW + safezoneX;
			y = 0.45 * safezoneH + safezoneY;
			w = 0.075; 
			h = 0.1;
			sizeEx=0.01;
			size=0.01;
			font="PuristaLight";
			colorBackground[]={0,0,0,0};
			colorText[] = { 1 , 1 , 1 , 1 };
			shadow=0;
			text = "\np_dialogs1\icons\np_work.paa";
		};
	};
};