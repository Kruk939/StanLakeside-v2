params ["_ctrl", "_code", "_shift", "_ctrlKey", "_alt", ["_handled", false, [false]], "_veh", "_locked", "_interactionKey", "_mapKey", ["_interruptionKeys", [17,30,31,32]]];

switch (_code) do
{
	case 25:
	{
	    if(_shift && !_alt && !_ctrlKey) then
	    {    	
			if (!RPF_fadeSound) then 
			{
				1 fadeSound 0.1;
				["Poziom głośności został obniżony", false] spawn ClientModules_Notification_fnc_doMsg;
				RPF_fadeSound = true;
			}
			else
			{
				1 fadeSound 1;
				["Poziom głośności wrócił do normy", false] spawn ClientModules_Notification_fnc_doMsg;
				RPF_fadeSound = false;
			};
	        _handle = true;
	    };
	};
};