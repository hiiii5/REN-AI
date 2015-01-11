//#define DEBUG_MODE_FULL
#include "script_component.hpp"

/* ----------------------------------------------------------------------------
Description:
Determines if a unit has a grenade launcher.

Parameters:
Array - The unit to check for a grenade launcher.

Returns:
BOOL - If the unit has a launcher or not.

Examples:
[_unit] call REN_fnc_isGrenadier;

Author:
Roden

Date:
01/11/2015

https://community.bistudio.com/wiki/primaryWeaponMagazine
---------------------------------------------------------------------------- */

private["_unit", "_hasLauncher"];

PARAMS_1(_unit);

if(vehicle _unit == _unit ) exitWith {}; // Unit is within a vehicle

_hasLauncher = if(count primaryWeaponMagazine > 1) then {true} else {false};

_hasLauncher
