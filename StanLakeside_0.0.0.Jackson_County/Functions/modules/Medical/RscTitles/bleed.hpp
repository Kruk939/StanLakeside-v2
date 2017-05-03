class HUDbleed
   	{
	idd=999;
	movingEnable=0;
  	fadein=1;
	duration = 1;
  	fadeout=1;
	name="HUDbleed";
	onLoad="uiNamespace setVariable ['HUDbleed',_this select 0]";
	objects[]={};
		
	class controls
	{
		class hud6
		{
			type = 0;
			style = 2096;			
			idc=42569;
			fadein=1;
		  	fadeout=1;
			x = 0.6 * safezoneW + safezoneX;
			y = 0.6 * safezoneH + safezoneY;
			w = 0.1;
			H = 0.1;
			sizeEx=0.01;
			size=0.01;
			font="PuristaLight";
			colorBackground[]={0,0,0,0};
			colorText[] = { 1 , 1 , 1 , 1 };
			shadow=0;
			text = "\kif_client\textures\icons\bleed.paa";
		};
	};
};