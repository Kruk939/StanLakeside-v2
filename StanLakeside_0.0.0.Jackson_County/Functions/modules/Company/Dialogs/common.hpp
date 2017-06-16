class Company_HideButton {
	style = 2;
      access = 0;
      type = CT_BUTTON;
	x = 0;
	y = 0;
	w = 0.095589;
	h = 0.039216;
	shadow = 2;
	font = "PuristaMedium";
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
      colorText[] = {0,0,0,0};
      colorDisabled[] = {0,0,0,0};
      colorBackground[] = {0,0,0,0};
      colorBackgroundActive[] = {0,0,0,0};
      colorBackgroundDisabled[] = {0,0,0,0};
	offsetX = 0;
	offsetY = 0;
	offsetPressedX = 0;
	offsetPressedY = 0;
	colorFocused[] = {0,0,0,0};
	colorShadow[] = {0,0,0,0};
	colorBorder[] = {0,0,0,0};
	borderSize = 0.0;
      soundEnter[] = {"\ca\ui\data\sound\onover",0.09,1};
      soundPush[] = {"\ca\ui\data\sound\new1",0,0};
      soundClick[] = {"\ca\ui\data\sound\onclick",0.07,1};
      soundEscape[] = {"\ca\ui\data\sound\onescape",0.09,1};
};
class Company_RscListBox {
	deletable = 0;
	fade = 0;
	colorText[] = { 0, 0, 0, 1 };
	colorDisabled[] = { 0, 0, 0, 0.5 };
	colorScrollbar[] = { 1, 0, 0, 0 };
	colorSelect[] = { 0, 0, 0, 1 };
	colorSelect2[] = { 0, 0, 0, 1 };
	colorSelectBackground[] = { 0, 0, 0, 0.3 };
	colorSelectBackground2[] = { 0, 0, 0, 0.3 };
	colorBackground[] = { 0, 0, 0, 0.3 };
	soundSelect[] = { "\A3\ui_f\data\sound\RscListbox\soundSelect", 0.09, 1 };
	colorPicture[] = { 1, 1, 1, 1 };
	colorPictureSelected[] = { 1, 1, 1, 1 };
	colorPictudeDisabled[] = { 1, 1, 1, 0.25 };
	tooltipColorText[] = { 1, 1, 1, 1 };
	tooltipColorBox[] = { 1, 1, 1, 1 };
	tooltipColorShade[] = { 0, 0, 0, 0.65 };
	class ListScrollBar {
		color[] = { 1, 1, 1, 1 };
		autoScrollEnabled = 1;
	};
	access = 0;
	type = 5;
	w = 0.4;
	h = 0.4;
	rowHeight = 0;
	autoScrollSpeed = -1;
	autoScrollDelay = 5;
	autoScrollRewind = 0;
	arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
	arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
	colorShadow[] = { 0, 0, 0, 0.5 };
	style = 16;
	font = "PuristaMedium";
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	shadow = 0;
	period = 1.2;
	maxHistoryDelay = 1;
	colorPictureDisabled[] = { 1, 1, 1, 1 };
};

class Company_RscEdit {
	deletable = 0;
	fade = 0;
	colorBackground[] = { 0, 0, 0, 0 };
	colorText[] = { 0, 0, 0, 1 };
	colorDisabled[] = { 1, 1, 1, 0.25 };
	colorSelection[] = { 0, 0, 0, 0.3 };
	access = 0;
	type = 2;
	x = 0;
	y = 0;
	h = 0.04;
	w = 0.2;
	autocomplete = "";
	text = "";
	size = 0.2;
	tooltipColorText[] = { 0, 0, 0, 0.3 };
	tooltipColorBox[] = { 0, 0, 0, 0.3 };
	tooltipColorShade[] = { 0, 0, 0, 0.3 };
	style = "0x00 + 0x40";
	font = "PuristaMedium";
	shadow = 2;
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	canModify = 1;
};
