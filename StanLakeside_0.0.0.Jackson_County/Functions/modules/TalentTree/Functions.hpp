class Maverick_TalentTreeModular {
	tag = "mav_ttm";

	class master {
		file = "Functions\modules\TalentTree";
		class initGUI { preInit = 1; };
		class init { preInit = 1; };
		class setPerks {};
		class generateBasePerks {};
		class hasPerk {};
		class addExp {};

		// -- Database related
		class tinyIntConverter {};
		class boolScalar {};
		class updateDatabaseEntry {};
		class clientSendUpdateToServer {};
		class loadFromDatabase {};
		class clientReceiveData {};
	};
};