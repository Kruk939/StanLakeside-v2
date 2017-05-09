class Medical_Module {
	tag = "ServerModules_Medical";
	class MedicalInit {
		file = "RPF_Server\Functions\modules\Medical";
		class initMedical {};
	};
	class Medical {
		file = "RPF_Server\Functions\modules\Medical\Functions";
		class get {};
		class insert {};
		class update {};
	};
};
