	class RSC_DOTASK
	{    
		idd = -1;
		fadein=1;
	  	fadeout=1;
		duration = 100;
		name="RSC_DOTASK";
		onLoad="uiNamespace setVariable ['RSC_DOTASK',_this select 0]";
		objects[]={};
		class controls
		{
			class cg_popup_text_basic7
			{
				type=13;
				style=0x0c+0x02;
				idc=9119;
				x = 0.4 * safezoneW + safezoneX;
				y = 0.700 * safezoneH + safezoneY;
				w = 0.2;
				h = 0.15;
				sizeEx=0.035;
				size=0.035;
				font="PuristaMedium";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=0;
				text="";
			};
		};	
	};