	{
		_thebankcontainer = "plp_ct_HighSecMediumBlack" createvehicle [9794,978,0.0014];
    	_pos = getpos _x;
    	_thebankcontainer setdir(getdir _x) - 89;
    	_containerpos = _x getrelpos[-3, 0];
    	_thebankcontainer setpos _containerpos;
    	_newpos = _thebankcontainer getrelpos[-1.2, 0];
    	_thebankcontainer setpos[(_newpos select 0), (_newpos select 1), (_newpos select 2) + 4];
	}forEach banks;