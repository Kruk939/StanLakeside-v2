class Company_Module {
	tag = "ClientModules_Company";
	class CompanyInit {
		file = "Functions\modules\Company";
		class initCompany {};
		class recive {};
		class initCompanyMenu {};
	};
	class Company {
		file = "Functions\modules\Company\Functions\Core";
	};
	class ATM {
		file = "Functions\modules\Company\Functions\Core\ATM";
		class bank_transfer {};
		class openATM {};
		class reciveATM {};
	};
	class Garage {
		file = "Functions\modules\Company\Functions\Core\Garage";
		class fetchCar {};
		class openGarage {};
		class receiveGarage {};
	};
	class Misc {
		file = "Functions\modules\Company\Functions\Core\Misc";
		class job_start {};
		class job_stop {};
		class inCompanyCheck {};
		class companyGetData {};
	};
	class Dialogs {
		file = "Functions\modules\Company\Functions\Core\Dialogs";
		class application_action {};
		class application_open {};
		class application_recieve {};
		class company_create_open {};
		class company_create {};
		class company_create_check {};
		class employee_open {};
		class employee_recieve {};
		class employee_update {};
		class main_open {};
		class main_recieve {};
		class main_action {};
		class start_action {};
		class start_open {};
		class vehicles_action {};
		class vehicles_open {};
		class vehicles_recieve {};
	};
};
#include "Functions\Modules\Functions.hpp"
