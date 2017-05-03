	disableSerialization;
	_message = _this select 0;
	_sound = _this select 1;
	while{true} do {
		if(!doMsg_active_1) exitwith {
			if(_sound) then { player say "slideout"; };
			11 cutRsc ["RSC_DOMSG1","PLAIN"];
			_POPUPCLASS1 = uiNameSpace getVariable ["RSC_DOMSG1",displayNull];
			doMsg_active_1 = true;
			_POPUP = _POPUPCLASS1 displayCtrl 13371;
			_POPUP ctrlSetStructuredText parseText format["<t color='#FFFFFF'><t size='0.75'>Status</t><br/> %1",_message];
			sleep 8.5;
			_blah = 20;
			while{_blah > 0} do {
				_pos = ctrlPosition _POPUP;
				_POPUP ctrlSetPosition [(_pos select 0) - 0.1, _pos select 1, _pos select 2, _pos select 3];
				_POPUP ctrlCommit 0;
				uisleep 0.05;
				_blah = _blah - 1;
			};
			doMsg_active_1 = false;
		};

		if(!doMsg_active_2) exitwith {
			if(_sound) then { player say "slideout"; };
			12 cutRsc ["RSC_DOMSG2","PLAIN"];
			_POPUPCLASS2 = uiNameSpace getVariable ["RSC_DOMSG2",displayNull];
			doMsg_active_2 = true;
			_POPUP = _POPUPCLASS2 displayCtrl 13372;
			_POPUP ctrlSetStructuredText parseText format["<t color='#FFFFFF'><t size='0.75'>Status</t><br/> %1",_message];
			sleep 8.5;
			_blah = 20;
			while{_blah > 0} do {
				_pos = ctrlPosition _POPUP;
				_POPUP ctrlSetPosition [(_pos select 0) - 0.1, _pos select 1, _pos select 2, _pos select 3];
				_POPUP ctrlCommit 0;
				uisleep 0.05;
				_blah = _blah - 1;
			};
			doMsg_active_2 = false;
		};

		if(!doMsg_active_3) exitwith {
			if(_sound) then { player say "slideout"; };
			13 cutRsc ["RSC_DOMSG3","PLAIN"];
			_POPUPCLASS3 = uiNameSpace getVariable ["RSC_DOMSG3",displayNull];
			doMsg_active_3 = true;
			_POPUP = _POPUPCLASS3 displayCtrl 13373;
			_POPUP ctrlSetStructuredText parseText format["<t color='#FFFFFF'><t size='0.75'>Status</t><br/> %1",_message];
			sleep 8.5;
			_blah = 20;
			while{_blah > 0} do {
				_pos = ctrlPosition _POPUP;
				_POPUP ctrlSetPosition [(_pos select 0) - 0.1, _pos select 1, _pos select 2, _pos select 3];
				_POPUP ctrlCommit 0;
				uisleep 0.05;
				_blah = _blah - 1;
			};
			doMsg_active_3 = false;
		};	

		if(!doMsg_active_4) exitwith {
			if(_sound) then { player say "slideout"; };
			14 cutRsc ["RSC_DOMSG4","PLAIN"];
			_POPUPCLASS4 = uiNameSpace getVariable ["RSC_DOMSG4",displayNull];
			doMsg_active_4 = true;
			_POPUP = _POPUPCLASS4 displayCtrl 13374;
			_POPUP ctrlSetStructuredText parseText format["<t color='#FFFFFF'><t size='0.75'>Status</t><br/> %1",_message];
			sleep 8.5;
			_blah = 20;
			while{_blah > 0} do {
				_pos = ctrlPosition _POPUP;
				_POPUP ctrlSetPosition [(_pos select 0) - 0.1, _pos select 1, _pos select 2, _pos select 3];
				_POPUP ctrlCommit 0;
				uisleep 0.05;
				_blah = _blah - 1;
			};
			doMsg_active_4 = false;
		};	

		if(!doMsg_active_5) exitwith {
			if(_sound) then { player say "slideout"; };
			15 cutRsc ["RSC_DOMSG5","PLAIN"];
			_POPUPCLASS5 = uiNameSpace getVariable ["RSC_DOMSG5",displayNull];
			doMsg_active_5 = true;
			_POPUP = _POPUPCLASS5 displayCtrl 13375;
			_POPUP ctrlSetStructuredText parseText format["<t color='#FFFFFF'><t size='0.75'>Status</t><br/> %1",_message];
			sleep 8.5;
			_blah = 20;
			while{_blah > 0} do {
				_pos = ctrlPosition _POPUP;
				_POPUP ctrlSetPosition [(_pos select 0) - 0.1, _pos select 1, _pos select 2, _pos select 3];
				_POPUP ctrlCommit 0;
				uisleep 0.05;
				_blah = _blah - 1;
			};
			doMsg_active_5 = false;
		};	

		if(!doMsg_active_6) exitwith {
			if(_sound) then { player say "slideout"; };
			16 cutRsc ["RSC_DOMSG6","PLAIN"];
			_POPUPCLASS6 = uiNameSpace getVariable ["RSC_DOMSG6",displayNull];
			doMsg_active_6 = true;
			_POPUP = _POPUPCLASS6 displayCtrl 13376;
			_POPUP ctrlSetStructuredText parseText format["<t color='#FFFFFF'><t size='0.75'>Status</t><br/> %1",_message];
			sleep 8.5;
			_blah = 20;
			while{_blah > 0} do {
				_pos = ctrlPosition _POPUP;
				_POPUP ctrlSetPosition [(_pos select 0) - 0.1, _pos select 1, _pos select 2, _pos select 3];
				_POPUP ctrlCommit 0;
				uisleep 0.05;
				_blah = _blah - 1;
			};
			doMsg_active_6 = false;
		};
		
		sleep 0.05;
	};