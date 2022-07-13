/*
  # HEADER #
	Script: 		Common\Functions\Common_ScanSkyForPlanes.sqf
	Alias:			CTI_CO_FNC_ScanSkyForPlanes
	Description:	Scan the sky fpr planes and reveal the targets to the unit/team.
	Author: 		dukee
	Creation Date:	13-07-2022
	Revision Date:	13-07-2022
	
  # PARAMETERS #
	None
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	Call CTI_CO_FNC_ScanSkyForPlanes
	
  # DEPENDENCIES #
	None
	
  # EXAMPLE #
	Call CTI_CO_FNC_ScanSkyForPlanes
*/
Private ["_side","_logic","_defenses","_defense","_objects","_object","_height","_defense_cnt","_object_cnt"];

if (CTI_Log_Level >= CTI_Log_Debug) then {["VIOC_DEBUG", "FILE: Common\Functions\Common_ScanSkyForPlanes.sqf", "Start scanning the Area"] call CTI_CO_FNC_Log;};

{
	//get the defenses of the side
	_side = _x;		//for a better reading
	_logic= (_side) call CTI_CO_FNC_GetSideLogic;
	_defenses = _logic getVariable "cti_defences";
	_defense_cnt = count _defenses;
	if(_defense_cnt > 0) then {
		{
			//get the planes in range
			_defense = _x select 0;		//for a better reading
			//_objects nearTargets 2000	//??? maybe faster ???
			_objects = nearestObjects [_defense, ["Air"], CTI_BASE_DEFENSES_AIR_DETECTION_RANGE];
			//_objects = _defense nearObjects ["Air", CTI_BASE_DEFENSES_AIR_DETECTION_RANGE];
			_object_cnt = count _objects;
			if(_object_cnt > 0) then {
				{
					_object = _x;		//for a better reading
					//speed _object
					//velocity _object
					_height = (getPos _object) select 2;
					if(_height > CTI_BASE_DEFENSES_AIR_DETECTION_HEIGHT) then {
						_defense reveal _object;
					};
				} forEach _objects;
			};
		} forEach _defenses;
	};
} forEach [east,west];

if (CTI_Log_Level >= CTI_Log_Debug) then {["VIOC_DEBUG", "FILE: Common\Functions\Common_ScanSkyForPlanes.sqf", format["End scanning the Area <%1> <%2>", _object_cnt, _defense_cnt]] call CTI_CO_FNC_Log;};
