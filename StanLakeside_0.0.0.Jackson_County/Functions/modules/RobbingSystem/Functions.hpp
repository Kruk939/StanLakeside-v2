class RobbingSystem_Module {
	tag = "ClientModules_RobbingSystem";

	class RobbingSystemInit
	{
		file = "Functions\modules\RobbingSystem";
		class initRobbingSystem {};
	};
	class RobbingSystemStore
	{
		file = "Functions\modules\RobbingSystem\Functions\Store";
		class startRobStore {};
	};
	class RobbingSystemBank
	{
		file = "Functions\modules\RobbingSystem\Functions\Bank";
		class crashVaultDoor {};
		class lockpickFirstDoor {};
		class lockpickSecondDoor {};
		class lockpickThirdDoor {};
		class repairDrill {};
		class startBankRob {};
		class takeCash {};
	};
};