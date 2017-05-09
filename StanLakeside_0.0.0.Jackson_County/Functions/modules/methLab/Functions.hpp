class MethLab_Module {
	tag = "ClientModules_methLab";
	
	class methLabInit
	{
		file = "Functions\modules\methLab";
		class initMethLab {};
	};
	class methLab
	{
		file = "Functions\modules\methLab\Functions";
		class doMethCooking {};
		class initMethCooking {};
		class removeMethCooking {};
		class setMethCooking {};
		class startMethCooking {};
	};
};