class ServerModules_Company {
	class CompanyInit {
		file = "RPF_Server\Functions\modules\Company";
		class initCompany {};
	};
	class Functions {
		file = "RPF_Server\Functions\modules\Company\Functions";
		class startInit {};
	};
	class Garage {
		file = "RPF_Server\Functions\modules\Company\Functions\Garage";
		class garageDelete {};
		class garageGet {};
		class garageInsert {};
		class garageUpdate {};
	};
	class Employees {
		file = "RPF_Server\Functions\modules\Company\Functions\Employees";
		class employeesDelete {};
		class employeesGet {};
		class employeesInsert {};
		class employeesUpdate {};
	};
	class Misc {
		file = "RPF_Server\Functions\modules\Company\Functions\Misc";
		class miscGet {};
		class companyCreate {};
	};
	class ATM {
		file = "RPF_Server\Functions\modules\Company\Functions\ATM";
		class balanceGet {};
		class balanceUpdate {};
		class transferMoney {};
	};
};
