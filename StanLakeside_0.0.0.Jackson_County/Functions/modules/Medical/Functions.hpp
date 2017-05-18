class Medical_Module {
	tag = "ClientModules_Medical";
	class MedicalInit {
		file = "Functions\modules\Medical";
		class initMedical {};
		class recive {};
	};
	class Medical {
		file = "Functions\modules\Medical\Functions";
	};
	class Medical_heal {
		file = "Functions\modules\Medical\Functions\heal";
		class doHealth {};
		class update {};
		class openHealMenu {};
		class findPlayers {};
		class fixProblem {};
		class healtime {};
		class medicUpdater {};
	};
	class Medical_unconscious {
		file = "Functions\modules\Medical\Functions\unconscious";
		class revive {};
		class revived {};
		class handleKilled {};
		class startFresh {};
	};
	class Medical_handleDamage {
		file = "Functions\modules\Medical\Functions\handleDamage";
		class damageChance {};
		class blunthit {};
		class sharphit {};
		class tazed {};
		class bleed {};
		class handleDamage {};
	};
};
