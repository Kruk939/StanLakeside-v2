class Medical_Module {
	tag = "ClientModules_Medical";
	class MedicalInit {
		file = "Functions\modules\Medical";
		class initMedical {};
	};
	class Medical {
		file = "Functions\modules\Medical\Functions";
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
