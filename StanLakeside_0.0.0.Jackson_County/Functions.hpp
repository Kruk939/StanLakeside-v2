class CfgFunctions
{
	class Client
	{
	#include "Functions\core\CONFIG\coreFunctions.hpp"
	};
	class ClientModules
	{
		class Config
		{
			file = "Functions\modules\CONFIG";
			class initModules {};
		};
	};
	#include "Functions\modules\CONFIG\moduleFunctions.hpp"
};