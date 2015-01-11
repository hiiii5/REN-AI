#define true 1
#define false 0

class CfgPatches {
	class ren_ai_main {
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.01;
		requiredAddons[] = {CBA_MAIN};
		versionDesc = "REN AI";
		versionAct = "";
		version = 0.0.00.01;
		versionAr[] = {0, 0, 00, 01};
	};
};

class Extended_PreInit_EventHandlers {
	class ren_ai_main {
		init = "call ('\x\ren_ai\addons\main\XEH_preInit.sqf' call SLX_XEH_COMPILE)";
		clientInit = "call ('\x\ren_ai\addons\main\XEH_preClientInit.sqf' call SLX_XEH_COMPILE)";
	};
};
