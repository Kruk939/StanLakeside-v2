private["_Btn1","_Btn2","_Btn3","_Btn4","_Btn5","_Btn6","_Btn7","_Btn8","_Btn9","_Btn10","_Btn11","_damageAmount","_damageAmount2","_damageAmount3","_damageAmount4","_damageAmount5","_damageAmount6","_damageAmount7","_damageAmount8","_damageAmount9","_damageAmount10","_damageAmount11","_1DamageStates","_2DamageStates","_3DamageStates","_4DamageStates","_5DamageStates","_6DamageStates","_7DamageStates","_8DamageStates","_9DamageStates","_10DamageStates","_11DamageStates","_myInjuries", "_myInjuriesToUpdate", "_user","_display","_playerInjuries","_thisInjury"];
disableSerialization;
if(!dialog) then { createdialog "medical_medicHUD"; };
_myInjuries = player getVariable "medical_playerInjuries";
_myInjuriesToUpdate = player getVariable "medical_playerInjuriesToUpdate";

_user = _this select 0;
if(isNil "_user") then { _user = player; };
if(_user isEqualTo player) then {
      [true] spawn ClientModules_medical_fnc_update;
} else {
      [true] remoteExec ["ClientModules_medical_fnc_update",_user];
};
medical_selected_user = _user;
_playerInjuries = _user getVariable["medical_playerInjuries", [0,0,0,0,0,0,0,0,0,0,0]];
_display = findDisplay 100001;

_1DamageStates = ["Bez urazów","Rany cięte głowy (1x Bandaż)","Otarcia głowy (1x Bandaż)","Wstrząs (1x Apteczka)","Złamana czaszka (1x Apteczka)"];
_2DamageStates = ["Bez Urazów","Rany cięte szyi (1x Bandaż)","Zerwany mięsień szyjny (1x Bandaż)","Uszkodzony kręgosłup (1x Apteczka)","Uszkodzony rdzeń (1x Apteczka)"];
_3DamageStates = ["Bez Urazów","Okaleczona klatka (1x Bandaż)","Otarcia mostku (1x Bandaż)","Uszkodzone żebro (1x Apteczka)","Złamane żebra (1x Apteczka)"];
_4DamageStates = ["Bez Urazów","Okaleczone plecy (1x Bandaż)","Skurcze mięśni (1x Bandaż)","Rozerwany mięsień (1x Apteczka)","Uszkodzony kręgosłup (1x Apteczka)"];
_5DamageStates = ["Bez Urazów","Otarcie ramienia (1x Bandaż)","Otarcie ramienia (1x Bandaż)","Zwichnięte ramię (1x Apteczka)","Liczne złamania (1x Apteczka)"];
_6DamageStates = ["Bez Urazów","Otarcie dłoni (1x Bandaż)","Złamany palec (1x Bandaż)","Zwichnięty palec (1x Apteczka)","Złamana ręka (1x Apteczka)"];
_7DamageStates = ["Bez Urazów","Rany cięte biodra (1x Bandaż)","Otarte biodro (1x Bandaż)","Opuchnięte genitalia (1x Apteczka)","Złamane biodro (1x Apteczka)"];
_8DamageStates = ["Bez Urazów","Krwawienie z uszu (1x Bandaż)","Złamany nos (1x Bandaż)","Wybity ząb (1x Apteczka)","Złamana szczęka (1x Apteczka)"];
_9DamageStates = ["Bez Urazów","Otarcie nogi (1x Bandaż)","Zwichnięte kolano (1x Bandaż)","Zerwany mięsień (1x Apteczka)","Złamana kość udowa (1x Apteczka)"];
_10DamageStates = ["Bez Urazów","Wewnętrzne otarcia (1x Bandaż)","Uszkodzone nerki (1x Bandaż)","Galopujące serce (1x Apteczka)","Mało krwi (1x Apteczka)"];
_11DamageStates = ["Bez Urazów","Przeziębienie (Tran /Medic / Hospital)","Alergia (Medic / Hospital)","Infekcja (Medic / Hospital)","Nieznana choroba (Medic / Hospital)"];

_Btn1 = _display displayCtrl 6;
_damageAmount = _playerInjuries select 0;
_thisInjury = _1DamageStates select _damageAmount;
_Btn1 ctrlSetText format["%1",_thisInjury];
_Btn1 buttonSetAction "[0] spawn ClientModules_medical_fnc_fixProblem;";
if( _damageAmount != 0) then { _Btn1 ctrlEnable true; } else { _Btn1 ctrlEnable false; ctrlShow[105,false]; };

_Btn2 = _display displayCtrl 8;
_damageAmount2 = _playerInjuries select 1;
_thisInjury = _2DamageStates select _damageAmount2;
_Btn2 ctrlSetText format["%1",_thisInjury];
_Btn2 buttonSetAction "[1] spawn ClientModules_medical_fnc_fixProblem;";
if( _damageAmount2 != 0) then { _Btn2 ctrlEnable true; } else { _Btn2 ctrlEnable false; ctrlShow[107,false]; };

_Btn3 = _display displayCtrl 10;
_damageAmount3 = _playerInjuries select 2;
_thisInjury = _3DamageStates select _damageAmount3;
_Btn3 ctrlSetText format["%1",_thisInjury];
_Btn3 buttonSetAction "[2] spawn ClientModules_medical_fnc_fixProblem;";
if( _damageAmount3 != 0) then { _Btn3 ctrlEnable true; } else { _Btn3 ctrlEnable false; ctrlShow[106,false]; };

_Btn4 = _display displayCtrl 12;
_damageAmount4 = _playerInjuries select 3;
_thisInjury = _4DamageStates select _damageAmount4;
_Btn4 ctrlSetText format["%1",_thisInjury];
_Btn4 buttonSetAction "[3] spawn ClientModules_medical_fnc_fixProblem;";
if( _damageAmount4 != 0) then { _Btn4 ctrlEnable true; } else { _Btn4 ctrlEnable false; ctrlShow[108,false]; };

_Btn5 = _display displayCtrl 14;
_damageAmount5 = _playerInjuries select 4;
_thisInjury = _5DamageStates select _damageAmount5;
_Btn5 ctrlSetText format["%1",_thisInjury];
_Btn5 buttonSetAction "[4] spawn ClientModules_medical_fnc_fixProblem;";
if( _damageAmount5 != 0) then { _Btn5 ctrlEnable true; } else { _Btn5 ctrlEnable false; ctrlShow[109,false]; };

_Btn6 = _display displayCtrl 16;
_damageAmount6 = _playerInjuries select 5;
_thisInjury = _6DamageStates select _damageAmount6;
_Btn6 ctrlSetText format["%1",_thisInjury];
_Btn6 buttonSetAction "[5] spawn ClientModules_medical_fnc_fixProblem;";
if( _damageAmount6 != 0) then { _Btn6 ctrlEnable true; } else { _Btn6 ctrlEnable false; ctrlShow[112,false]; };

_Btn7 = _display displayCtrl 18;
_damageAmount7 = _playerInjuries select 6;
_thisInjury = _7DamageStates select _damageAmount7;
_Btn7 ctrlSetText format["%1",_thisInjury];
_Btn7 buttonSetAction "[6] spawn ClientModules_medical_fnc_fixProblem;";
if( _damageAmount7 != 0) then { _Btn7 ctrlEnable true; } else { _Btn7 ctrlEnable false; ctrlShow[110,false]; };

_Btn8 = _display displayCtrl 20;
_damageAmount8 = _playerInjuries select 7;
_thisInjury = _8DamageStates select _damageAmount8;
_Btn8 ctrlSetText format["%1",_thisInjury];
_Btn8 buttonSetAction "[7] spawn ClientModules_medical_fnc_fixProblem;";
if( _damageAmount8 != 0) then { _Btn8 ctrlEnable true; } else { _Btn8 ctrlEnable false; ctrlShow[111,false]; };

_Btn9 = _display displayCtrl 22;
_damageAmount9 = _playerInjuries select 8;
_thisInjury = _9DamageStates select _damageAmount9;
_Btn9 ctrlSetText format["%1",_thisInjury];
_Btn9 buttonSetAction "[8] spawn ClientModules_medical_fnc_fixProblem;";
if( _damageAmount9 != 0) then { _Btn9 ctrlEnable true; } else { _Btn9 ctrlEnable false; ctrlShow[113,false]; };

_Btn10 = _display displayCtrl 24;
_damageAmount10 = _playerInjuries select 9;
_thisInjury = _10DamageStates select _damageAmount10;
_Btn10 ctrlSetText format["%1",_thisInjury];
_Btn10 buttonSetAction "[9] spawn ClientModules_medical_fnc_fixProblem;";
if( _damageAmount10 != 0) then { _Btn10 ctrlEnable true; } else { _Btn10 ctrlEnable false; ctrlShow[114,false]; };

_Btn11 = _display displayCtrl 26;
_damageAmount11 = _playerInjuries select 10;
_thisInjury = _11DamageStates select _damageAmount11;
_Btn11 ctrlSetText format["%1",_thisInjury];
_Btn11 buttonSetAction "[10] spawn ClientModules_medical_fnc_fixProblem;";
if( _damageAmount11 != 0) then { _Btn11 ctrlEnable true; } else { _Btn11 ctrlEnable false; ctrlShow[115,false]; };
