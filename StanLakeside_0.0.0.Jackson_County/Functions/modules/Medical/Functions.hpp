class MethLab_Module {
	tag = "ClientModules_medical";

	class methLabInit
	{
		file = "Functions\modules\medical";
		class initMethLab {};
	};
	class medical
	{
		file = "Functions\modules\medical\Functions";
		class handleDamage {};
		class handleKilled {};
		class doHealth {};
		class damageChance {};

		class blunthit {};
		class sharphit {};
		class tazed {};

		class bleed {};
	};
};
