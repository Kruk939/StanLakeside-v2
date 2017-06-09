class CfgPatches
{
	class rpf_server
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 1.0;
		requiredAddons[] = {};
	};
};

class CfgFunctions
{
	class Server
	{
		class Save
		{
			file = "rpf_server\Functions\core\Save";
			class handleDisconnect {};
	        class initStats {};
	        class statSave {};
	        class statSaveLoop {};
			class bankAccountNumber {};
			class updateConnection {};
			class invSave {};
		};
		class Money
		{
			file = "rpf_server\Functions\core\Money";
			class replicateMoney {};
		};
		class Logs {
            file = "rpf_server\Functions\core\Logs";
            class actionLog {};
            class moneyLog {};
            class vehicleLog {};
            class copLog {};
            class deathLog {};
            class economyLog {};
            class adminLog {};
            class craftLog {};
            class jobLog {};
            class connectionLog {};
        };
	};
	class ExternalS
	{
		class ExtDB
		{
			file = "rpf_server\External\ExtDB";
			class ExtDBasync {};
            class ExtDBinit {};
			class ExtDBstrip {};
			class ExtDBquery {};
		};
	};
	class ServerModules
	{
		class Config
		{
			file = "rpf_server\Functions\modules\CONFIG";
			class initModules {};
			class firstLogin {};
		};
	};
	#include "Functions\modules\CONFIG\moduleFunctions.hpp"
};
