class playerHUD
{
      idd=80085;
      movingEnable=0;
      fadein=1;
      duration = 999999;
      fadeout=1;
      name="playerHUD";
      onLoad="uiNamespace setVariable ['playerHUD',_this select 0]";
      objects[]={};


      class controls
      {

            class bleedingtext
            {
                  type=CT_STRUCTURED_TEXT;
                  idc=23570;
                  style=ST_LEFT;
                  x = 0.834 * safezoneW + safezoneX;
                  y = 0.463 * safezoneH + safezoneY;
                  w = 0.8;
                  h = 1;
                  sizeEx=0.03;
                  size=1;
                  font="PuristaLight";
                  colorBackground[]={0,0,0,0};
                  colorText[] = { 1 , 1 , 1 , 1 };
                  shadow=1;
                  text="";
            };

            class woundedtext
            {
                  type=CT_STRUCTURED_TEXT;
                  idc=23575;
                  style=ST_LEFT;
                  x = 0.834 * safezoneW + safezoneX;
                  y = 0.503 * safezoneH + safezoneY;
                  w = 0.8;
                  h = 1;
                  sizeEx=0.03;
                  size=1;
                  font="PuristaLight";
                  colorBackground[]={0,0,0,0};
                  colorText[] = { 1 , 1 , 1 , 1 };
                  shadow=1;
                  text="";
            };
            class fracturetext
            {
                  type=CT_STRUCTURED_TEXT;
                  idc=23580;
                  style=ST_LEFT;
                  x = 0.834 * safezoneW + safezoneX;
                  y = 0.543 * safezoneH + safezoneY;
                  w = 0.8;
                  h = 1;
                  sizeEx=0.03;
                  size=1;
                  font="PuristaLight";
                  colorBackground[]={0,0,0,0};
                  colorText[] = { 1 , 1 , 1 , 1 };
                  shadow=1;
                  text="";
            };

            class unconcioustext
            {
                  type=CT_STRUCTURED_TEXT;
                  idc=23585;
                  style=ST_LEFT;
                  x = 0.834 * safezoneW + safezoneX;
                  y = 0.583 * safezoneH + safezoneY;
                  w = 0.8;
                  h = 1;
                  sizeEx=0.03;
                  size=1;
                  font="PuristaLight";
                  colorBackground[]={0,0,0,0};
                  colorText[] = { 1 , 1 , 1 , 1 };
                  shadow=1;
                  text="";
            };


            class diseasetext
            {
                  type=CT_STRUCTURED_TEXT;
                  idc=23590;
                  style=ST_LEFT;
                  x = 0.834 * safezoneW + safezoneX;
                  y = 0.623 * safezoneH + safezoneY;
                  w = 0.8;
                  h = 1;
                  sizeEx=0.03;
                  size=1;
                  font="PuristaLight";
                  colorBackground[]={0,0,0,0};
                  colorText[] = { 1 , 1 , 1 , 1 };
                  shadow=1;
                  text="";
            };

            class severeinjurytext
            {
                  type=CT_STRUCTURED_TEXT;
                  idc=23595;
                  style=ST_LEFT;
                  x = 0.834 * safezoneW + safezoneX;
                  y = 0.663 * safezoneH + safezoneY;
                  w = 0.8;
                  h = 1;
                  sizeEx=0.03;
                  size=1;
                  font="PuristaLight";
                  colorBackground[]={0,0,0,0};
                  colorText[] = { 1 , 1 , 1 , 1 };
                  shadow=1;
                  text="";
            };
      };
};
