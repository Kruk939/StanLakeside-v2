if (count attachedObjects player > 0 && RPF_attachedVehicle) exitWith {
	{
		detach _x;
	} foreach attachedobjects player;
	RPF_attachedVehicle = false;
};