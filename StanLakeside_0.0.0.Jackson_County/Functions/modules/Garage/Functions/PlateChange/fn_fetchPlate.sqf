_str = lbData [1500, lbCurSel 1500];
_car = call compile _str;
plateOld = (_car select 3);
hint plateOld;

closeDialog 0;
createDialog "carplatechange";