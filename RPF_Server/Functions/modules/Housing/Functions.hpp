class Housing_Module {
	tag = "ServerModules_Housing";
	class HousingInit
	{
		file = "RPF_Server\Functions\modules\Housing";
		class initHousing {};
	};
	class Housing
	{
		file = "RPF_Server\Functions\modules\Housing\Functions";
		class retreiveHouseCargo {};
		class storageHouseCargo {};
	};
};
