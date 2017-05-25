class Company_Module {
	tag = "ClientModules_Company";
	class CompanyInit {
		file = "Functions\modules\Company";
		class initCompany {};
		class recive {};
	};
	class Company {
		file = "Functions\modules\Company\Functions";
	};
	class ATM {
		file = "Functions\modules\Company\Functions\ATM";
		class bank_open {};
		class bank_transfer {};
	};
	class Garage {
		file = "Functions\modules\Company\Functions\Garage";
		class garage_open {};
	};
	class Misc {
		file = "Functions\modules\Company\Functions\Misc";
		class job_start {};
		class job_stop {};
	};
};
