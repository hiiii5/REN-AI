//#define DEBUG_MODE_FULL
#include "script_component.hpp"

/* ----------------------------------------------------------------------------
Description:
Determines if a unit has a shoulder fired launcher.

Parameters:
Array - The unit to check for a launcher.

Returns:
BOOL - If the unit has a launcher or not.

Examples:
[_unit] call REN_fnc_hasLauncher;

Author:
Roden

Date:
01/11/2015

See: https://community.bistudio.com/wiki/secondaryWeapon
---------------------------------------------------------------------------- */

private["_unit", "_hasLauncher", "_secondaryWeapon"];

PARAMS_1(_unit);

_secondaryWeapon = secondaryWeapon _unit;

// Checks for if the launcher is based off of the parent config Launcher
_hasLauncher = if(_secondaryWeapon isKindOf (configFile >> "CfgWeapons" >> "Launcher")) then { true } else { false };

_hasLauncher
