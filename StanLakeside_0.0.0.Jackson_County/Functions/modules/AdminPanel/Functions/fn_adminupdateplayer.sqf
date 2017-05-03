if(isNil "kacfocus") then { kacfocus = player; };
_player = call compile format["%1",(lbData[1500,(lbCurSel 1500)])];
kacfocus = _player;
camDestroy RPF_kacCamera;                       
RPF_kacCamera  = "CAMERA" camCreate (getPos _player);  
showCinemaBorder true;   
RPF_kacCamera cameraEffect ["EXTERNAL", "BACK"];                              
RPF_kacCamera camSetFOV 1.5;  

while { true } do { if( kacfocus != _player ) exitwith {}; RPF_kacCamera camSetTarget _player; RPF_kacCamera camSetRelPos [0,2,2]; RPF_kacCamera camCommit 1; uisleep 0.5; };