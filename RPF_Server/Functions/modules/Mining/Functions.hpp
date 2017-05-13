class Mining_Module {
	tag = "ServerModules_Mining";
	class MiningInit
	{
		file = "RPF_Server\Functions\modules\Mining";
		class initMines {};
		class initMining {};
	};
	class Mining
	{
		file = "RPF_Server\Functions\modules\Mining\Functions";
		class miningLoop {};
	};
};