class Mining_Module {
	tag = "ClientModules_Mining";
	
	class MiningInit
	{
		file = "Functions\modules\Mining";
		class initMining {};
	};
	class Mining
	{
		file = "Functions\modules\Mining\Functions";
		class equipGrinder {};
		class mineStone {};
		class openProcessMinerals {};
		class processMineral {};
	};
};