class Company_Module {
	tag = "ClientModules_Company";
	class CompanyInit {
		file = "Functions\modules\Company";
		class initCompany {};
		class recive {};
	};
	class Company {
		file = "Functions\modules\Company\Core\Functions";
	};
	class ATM {
		file = "Functions\modules\Company\Core\Functions\ATM";
		class bank_open {};
		class bank_transfer {};
	};
	class Garage {
		file = "Functions\modules\Company\Functions\Core\Garage";
		class garage_open {};
	};
	class Misc {
		file = "Functions\modules\Company\Functions\Core\Misc";
		class job_start {};
		class job_stop {};
	};
};
#include "Modules\Functions.hpp"
