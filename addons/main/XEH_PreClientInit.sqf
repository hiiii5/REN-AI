//#define DEBUG_MODE_FULL
#include "script_component.hpp"
LOG(MSG_INIT);

["CBA_MISSION_START", {if ([configFile >> QUOTE(PREFIX) >> "version", "number", 0] call CBA_fnc_getConfigEntry < REN_AI_USERCFG_VERSION) then {player sideChat "WARNING: REN_AI USERCONFIG OUTDATED!"}}] call CBA_fnc_addEventHandler;
