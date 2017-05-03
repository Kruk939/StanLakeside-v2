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
		class methAbort {};
		class methAddItem {};
		class methCheck {};
		class methDoneCooking {};
		class methFailCooking {};
		class methRemoveItem {};
		class methSmoke {};
		class methStartCooking {};
		class methTake {};
		class openMethLab {};
		class receiveMethLabCheck {};
	};
};