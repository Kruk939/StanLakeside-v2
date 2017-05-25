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
	class Misc {
		file = "RPF_Server\Functions\modules\Company\Functions\Garage";
		class companyGet {};
	};
};
