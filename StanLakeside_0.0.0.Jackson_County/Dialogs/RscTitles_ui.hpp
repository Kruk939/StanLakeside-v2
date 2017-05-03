class HUDLoading
   	{
	idd=400;
	movingEnable=0;
  	fadein=1;
	duration = 999999999;
  	fadeout=1;
	name="HUDLoading";
	onLoad="uiNamespace setVariable ['HUDLoading',_this select 0]";
	objects[]={};
		
	class controls
	{
		class hud11
		{
			shadow = 0;
			type = 0;
			style = 2096;
			sizeEx = 1;
	        idc = 119873;
			fadein=1;
		  	fadeout=1;
			x = -0.25;
			y = -0.25;
			w = 1.5;
			h = 1.5;
			font="PuristaLight";
			colorBackground[]={0,0,0,0};
			colorText[] = { 1 , 1 , 1 , 1 };
			text = "\kif_client\textures\scripts\Loading\background.paa";
		};
	};
};