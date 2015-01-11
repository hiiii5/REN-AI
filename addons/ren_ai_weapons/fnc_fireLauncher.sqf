//#define DEBUG_MODE_FULL
#include "script_component.hpp"

/* ----------------------------------------------------------------------------
Description:
Fires the AI's launcher at the given target.

Parameters:
Array - The unit, the target, dispersion amount.

Returns:
nil

Examples:
[_unit, _target] call REN_fnc_fireLauncher;

Author:
Roden

Date:
01/11/2015

See: https://community.bistudio.com/wiki/secondaryWeapon
---------------------------------------------------------------------------- */

private ["_unit", "_target"];

PARAMS_2(_unit, _target);

if( [_unit] call REN_fnc_hasLauncher ) then
{
	_unit doWatch _target;
	_unit doTarget _target;

	_unit action ["useWeapon", _target, _target, 1];
};

nil
