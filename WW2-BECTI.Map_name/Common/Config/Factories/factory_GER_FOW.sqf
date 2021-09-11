private ["_side", "_c", "_sid", "_priorUnits", "_ai"];
_side = _this;
_ai = -1;

if(_side == west) then {
	_sid = "VIOC_B_";
	_ai = CTI_WEST_AI;
} 
else {
	if(_side == east) then {
		_sid = "VIOC_O_";
		_ai = CTI_EAST_AI;
	} 
	else {
		_sid = "VIOC_I_";
	};
};
if(CTI_VIO_ADDON == 0) then {_sid = "";};

//CTI_CAMO_ACTIVATION = 0 only normal camo | 1 adds winter camo | 2 adds desert camo | 3 adds winter and desert camo

if (CTI_Log_Level >= CTI_Log_Debug) then { ["VIOC_DEBUG", "FILE: common\config\factories\factory_GER.sqf", format["setting up factory units for side %1", _side]] call CTI_CO_FNC_Log;};

//check if the CTI SIDE base units are set. If not or this side is set as AI, setup the variable.
_priorUnits = missionNamespace getVariable format ["CTI_%1_Commander", _side, CTI_BARRACKS];
if (isNil "_priorUnits" || _ai == 4) then { 
	//We setup the standard units before the camo check to get secure
	missionNamespace setVariable [format["CTI_%1_Commander", _side], format["%1fow_s_ger_heer_tl_stg", _sid]];
	missionNamespace setVariable [format["CTI_%1_Worker", _side], format["%1fow_s_ger_heer_tankcrew_01_shutz", _sid]];

	missionNamespace setVariable [format["CTI_%1_Diver", _side], format["%1fow_s_ger_heer_tankcrew_02_shutz", _sid]];
	missionNamespace setVariable [format["CTI_%1_Soldier", _side], format["%1fow_s_ger_heer_rifleman", _sid]];
	missionNamespace setVariable [format["CTI_%1_Crew", _side], format["%1fow_s_ger_heer_tankcrew_01_gefreiter", _sid]];
	missionNamespace setVariable [format["CTI_%1_Pilot", _side], format["%1fow_s_ger_heer_tl_mp40", _sid]];
	missionNamespace setVariable [format["CTI_%1_Static", _side], format["%1fow_s_ger_heer_tankcrew_01_obergefreiter", _sid]];

	//Set starting vehicles
	missionNamespace setVariable [format["CTI_%1_Vehicles_Startup", _side], [ 
		[format["%1fow_v_kubelwagen_ger_heer", _sid], []], 
		[format["%1fow_v_kubelwagen_ger_heer", _sid], []]
	]];
};

if (CTI_Log_Level >= CTI_Log_Debug) then { ["VIOC_DEBUG", "FILE: common\config\factories\factory_GER_FOW.sqf", format["starting vehicles for side %1 declared", _side]] call CTI_CO_FNC_Log; };

//***************************************************************************************************************************************
//														Barracks Factory																*
//***************************************************************************************************************************************
//--- Below is classnames for Units and AI avaiable to puchase from Barracks Factory.
_c = [];
//Level start
if(CTI_ECONOMY_LEVEL_INFANTRY >= 0) then {
	//if(CTI_CAMO_ACTIVATION == 1 || CTI_CAMO_ACTIVATION == 3) then {		//Winter camo active
	//};
	//if(CTI_CAMO_ACTIVATION == 2 || CTI_CAMO_ACTIVATION == 3) then {		//Desert camo active
	//};
	
	_c pushBack format["%1fow_s_ger_heer_tankcrew_01_shutz", _sid];
	_c pushBack format["%1fow_s_ger_heer_tankcrew_01_gefreiter", _sid];
	_c pushBack format["%1fow_s_ger_heer_tankcrew_01_obergefreiter", _sid];
	_c pushBack format["%1fow_s_ger_heer_tankcrew_02_shutz", _sid];
	_c pushBack format["%1fow_s_ger_heer_tankcrew_02_gefreiter", _sid];
	_c pushBack format["%1fow_s_ger_heer_tankcrew_02_obergefreiter", _sid];
	_c pushBack format["%1fow_s_ger_heer_rifleman", _sid];
	_c pushBack format["%1fow_s_ger_heer_mg42_asst", _sid];
	_c pushBack format["%1fow_s_ger_heer_mg42_sparebarrel", _sid];
	_c pushBack format["%1fow_s_ger_heer_tl_mp40", _sid];
	_c pushBack format["%1fow_s_ger_heer_medic", _sid];
	_c pushBack format["%1fow_s_ger_heer_radio_operator", _sid];
	_c pushBack format["%1fow_s_ger_heer_rifleman_mp40_pzf", _sid];
	_c pushBack format["%1fow_s_ger_heer_rifleman_mp40", _sid];
};
//Level 1
if(CTI_ECONOMY_LEVEL_INFANTRY >= 1) then {
	//if(CTI_CAMO_ACTIVATION == 1 || CTI_CAMO_ACTIVATION == 3) then {		//Winter camo active
	//};
	//if(CTI_CAMO_ACTIVATION == 2 || CTI_CAMO_ACTIVATION == 3) then {		//Desert camo active
	//};
	
	_c pushBack format["%1fow_s_ger_heer_tankcrew_01_unteroffizier", _sid];
	_c pushBack format["%1fow_s_ger_heer_tankcrew_02_unteroffizier", _sid];
	_c pushBack format["%1fow_s_ger_heer_rifleman_g43", _sid];
	_c pushBack format["%1fow_s_ger_heer_tl_asst", _sid];
	_c pushBack format["%1fow_s_ger_heer_mg34_gunner", _sid];
	_c pushBack format["%1fow_s_ger_heer_nco_mp40", _sid];
};
//Level 2
if(CTI_ECONOMY_LEVEL_INFANTRY >= 2) then {
	//if(CTI_CAMO_ACTIVATION == 1 || CTI_CAMO_ACTIVATION == 3) then {		//Winter camo active
	//};
	//if(CTI_CAMO_ACTIVATION == 2 || CTI_CAMO_ACTIVATION == 3) then {		//Desert camo active
	//};
	
	_c pushBack format["%1fow_s_ger_heer_tankcrew_01_2nd_leutnant", _sid];
	_c pushBack format["%1fow_s_ger_heer_tankcrew_02_2nd_leutnant", _sid];
	_c pushBack format["%1fow_s_ger_heer_tl_stg", _sid];
	_c pushBack format["%1fow_s_ger_heer_mg42_gunner", _sid];
};

_priorUnits = missionNamespace getVariable format ["CTI_%1_%2Units", _side, CTI_BARRACKS];
if (isNil "_priorUnits") then { 
	_priorUnits = []; 
} else {
	_c append _priorUnits; 
};
if (CTI_Log_Level >= CTI_Log_Debug) then {["VIOC_DEBUG", "FILE: common\config\factories\factory_GER_FOW.sqf", format["units in factory %1: [%2] ", CTI_BARRACKS, count _c]] call CTI_CO_FNC_Log;};
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_BARRACKS], _c];


//***************************************************************************************************************************************
//														Light Factory																	*
//***************************************************************************************************************************************
//--- Below is classnames for Units and AI avaiable to puchase from Light Factory.
_c = [];
//Level start
if(CTI_ECONOMY_LEVEL_WHEELED >= 0) then {
	//if(CTI_CAMO_ACTIVATION == 1 || CTI_CAMO_ACTIVATION == 3) then {		//Winter camo active
	//};
	//if(CTI_CAMO_ACTIVATION == 2 || CTI_CAMO_ACTIVATION == 3) then {		//Desert camo active
	//};
	
	_c pushBack format["%1fow_v_truppenfahrrad_ger_heer", _sid];
	_c pushBack format["%1fow_v_kubelwagen_ger_heer", _sid];
	_c pushBack format["%1fow_v_kubelwagen_camo_ger_heer", _sid];
	_c pushBack format["%1fow_v_sdkfz_250_camo_ger_heer", _sid];
	_c pushBack format["%1fow_v_sdkfz_250_camo_foliage_ger_heer", _sid];
	_c pushBack format["%1fow_v_sdkfz_250_ger_heer", _sid];
};
//Level 1
if(CTI_ECONOMY_LEVEL_WHEELED >= 1) then {
	//if(CTI_CAMO_ACTIVATION == 1 || CTI_CAMO_ACTIVATION == 3) then {		//Winter camo active
	//};
	//if(CTI_CAMO_ACTIVATION == 2 || CTI_CAMO_ACTIVATION == 3) then {		//Desert camo active
	//};
	
	_c pushBack format["%1fow_v_kubelwagen_mg34_ger_heer", _sid];
	_c pushBack format["%1fow_v_sdkfz_250_9_ger_heer", _sid];
	_c pushBack format["%1fow_v_sdkfz_250_9_camo_foliage_ger_heer", _sid];
	_c pushBack format["%1fow_v_sdkfz_250_9_camo_ger_heer", _sid];
};
//Level 2
if(CTI_ECONOMY_LEVEL_WHEELED >= 2) then {
	//if(CTI_CAMO_ACTIVATION == 1 || CTI_CAMO_ACTIVATION == 3) then {		//Winter camo active
	//};
	//if(CTI_CAMO_ACTIVATION == 2 || CTI_CAMO_ACTIVATION == 3) then {		//Desert camo active
	//};
	
	_c pushBack format["%1fow_v_sdkfz_251_camo_ger_heer", _sid];
	_c pushBack format["%1fow_v_sdkfz_251_camo_foliage_ger_heer", _sid];
};
//Level 3
if(CTI_ECONOMY_LEVEL_WHEELED >= 3) then {
	//if(CTI_CAMO_ACTIVATION == 1 || CTI_CAMO_ACTIVATION == 3) then {		//Winter camo active
	//};
	//if(CTI_CAMO_ACTIVATION == 2 || CTI_CAMO_ACTIVATION == 3) then {		//Desert camo active
	//};
	
	_c pushBack format["%1fow_v_sdkfz_222_ger_heer", _sid];
	_c pushBack format["%1fow_v_sdkfz_222_foliage_ger_heer", _sid];
	_c pushBack format["%1fow_v_sdkfz_222_camo_ger_heer", _sid];
	_c pushBack format["%1fow_v_sdkfz_222_ger_ss", _sid];
	_c pushBack format["%1fow_v_sdkfz_222_foliage_ger_ss", _sid];
	_c pushBack format["%1fow_v_sdkfz_222_camo_ger_ss", _sid];
	_c pushBack format["%1fow_v_sdkfz_222_camo_foliage_ger_ss", _sid];
};
//Level 4
if(CTI_ECONOMY_LEVEL_WHEELED >= 4) then {
	//if(CTI_CAMO_ACTIVATION == 1 || CTI_CAMO_ACTIVATION == 3) then {		//Winter camo active
	//};
	//if(CTI_CAMO_ACTIVATION == 2 || CTI_CAMO_ACTIVATION == 3) then {		//Desert camo active
	//};
	
	_c pushBack format["%1fow_v_sdkfz_234_1", _sid];
};

	_c pushBack format["%1", _sid];
_priorUnits = missionNamespace getVariable format ["CTI_%1_%2Units", _side, CTI_LIGHT];
if (isNil "_priorUnits") then { 
	_priorUnits = []; 
} else {
	_c append _priorUnits; 
};

if (CTI_Log_Level >= CTI_Log_Debug) then {["VIOC_DEBUG", "FILE: common\config\factories\factory_GER_FOW.sqf", format["units in factory %1: [%2] ", CTI_LIGHT, count _c]] call CTI_CO_FNC_Log;};
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_LIGHT], _c];


//***************************************************************************************************************************************
//														Heavy Factory																	*
//***************************************************************************************************************************************
//--- Below is classnames for Units and AI avaiable to puchase from Heavy Factory.
_c = [];
//Level 0
_level = 0;
/*if(CTI_ECONOMY_LEVEL_TRACKED >= _level) then {
	if(CTI_CAMO_ACTIVATION == 1 || CTI_CAMO_ACTIVATION == 3) then {		//Winter camo active
		_c pushBack format["%1", _sid];
	};
	if(CTI_CAMO_ACTIVATION == 2 || CTI_CAMO_ACTIVATION == 3) then {		//Desert camo active
		_c pushBack format["%1", _sid];
	};
	_c pushBack format["%1", _sid];
	_level = _level + 1;
};*/

//Level 4
if(CTI_IFA3_NEW >= 0) then {_level = 4} else {_level = 0};
if(CTI_ECONOMY_LEVEL_TRACKED >= _level) then {
	
	_c pushBack format["%1fow_v_panther_ger_heer", _sid];
	_c pushBack format["%1fow_v_panther_camo_foliage_ger_heer", _sid];
	_c pushBack format["%1fow_v_panther_camo_ger_heer", _sid];
	_level = _level + 1;
};
_priorUnits = missionNamespace getVariable format ["CTI_%1_%2Units", _side, CTI_HEAVY];
if (isNil "_priorUnits") then { 
	_priorUnits = []; 
} else {
	_c append _priorUnits; 
};

if (CTI_Log_Level >= CTI_Log_Debug) then {["VIOC_DEBUG", "FILE: common\config\factories\factory_GER_FOW.sqf", format["units in factory %1: [%2] ", CTI_HEAVY, count _c]] call CTI_CO_FNC_Log;};
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_HEAVY], _c];


//***************************************************************************************************************************************
//														Air Factory																		*
//***************************************************************************************************************************************
//--- Below is classnames for Units and AI avaiable to puchase from Air Factory.
/*_c = [];
_level = 0;
if(CTI_ECONOMY_LEVEL_AIR >= _level) then {
	if(CTI_CAMO_ACTIVATION == 1 || CTI_CAMO_ACTIVATION == 3) then {		//Winter camo active
		_c pushBack format["%1", _sid];
	};
	if(CTI_CAMO_ACTIVATION == 2 || CTI_CAMO_ACTIVATION == 3) then {		//Desert camo active
		_c pushBack format["%1", _sid];
	};
	_c pushBack format["%1", _sid];
	_level = _level + 1;
};

_priorUnits = missionNamespace getVariable format ["CTI_%1_%2Units", _side, CTI_AIR];
if (isNil "_priorUnits") then { 
	_priorUnits = []; 
} else {
	_c append _priorUnits; 
};

if (CTI_Log_Level >= CTI_Log_Debug) then {["VIOC_DEBUG", "FILE: common\config\factories\factory_GER_FOW.sqf", format["units in factory %1: [%2] ", CTI_AIR, count _c]] call CTI_CO_FNC_Log;};
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_AIR], _c];
*/

//***************************************************************************************************************************************
//														Repair Factory																	*
//***************************************************************************************************************************************
//--- Below is classnames for Units and AI avaiable to puchase from Repair Factory.
/*_c = [];
if(CTI_ECONOMY_LEVEL_WHEELED >= 1) then {
	if(CTI_CAMO_ACTIVATION == 1 || CTI_CAMO_ACTIVATION == 3) then {		//Winter camo active
		_c pushBack format["%1", _sid];
	};
	if(CTI_CAMO_ACTIVATION == 2 || CTI_CAMO_ACTIVATION == 3) then {		//Desert camo active
		_c pushBack format["%1", _sid];
	};
	_c pushBack format["%1", _sid];
};
_priorUnits = missionNamespace getVariable format ["CTI_%1_%2Units", _side, CTI_REPAIR];
if (isNil "_priorUnits") then { 
	_priorUnits = []; 
} else {
	_c append _priorUnits; 
};

if (CTI_Log_Level >= CTI_Log_Debug) then {["VIOC_DEBUG", "FILE: common\config\factories\factory_GER_FOW.sqf", format["units in factory %1: [%2] ", CTI_REPAIR, count _c]] call CTI_CO_FNC_Log;};
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_REPAIR], _c];
*/
//***************************************************************************************************************************************
//														Ammo Factory																	*
//***************************************************************************************************************************************
//--- Below is classnames for Units and AI avaiable to puchase from Ammo Factory.
/*_c = [];
if(CTI_ECONOMY_LEVEL_WHEELED >= 1) then {
	if(CTI_CAMO_ACTIVATION == 1 || CTI_CAMO_ACTIVATION == 3) then {		//Winter camo active
		_c pushBack format["%1", _sid];
	};
	if(CTI_CAMO_ACTIVATION == 2 || CTI_CAMO_ACTIVATION == 3) then {		//Desert camo active
		_c pushBack format["%1", _sid];
	};
	_c pushBack format["%1", _sid];
};
_priorUnits = missionNamespace getVariable format ["CTI_%1_%2Units", _side, CTI_AMMO];
if (isNil "_priorUnits") then { 
	_priorUnits = []; 
} else {
	_c append _priorUnits; 
};

if (CTI_Log_Level >= CTI_Log_Debug) then {["VIOC_DEBUG", "FILE: common\config\factories\factory_GER_FOW.sqf", format["units in factory %1: [%2] ", CTI_AMMO, count _c]] call CTI_CO_FNC_Log;};
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_AMMO], _c];
*/

//***************************************************************************************************************************************
//														Town Depot																		*
//***************************************************************************************************************************************
//--- Below is classnames for Units and AI avaiable to puchase from Town Depot.
/*_c = [];
if ((missionNamespace getVariable "CTI_UNITS_TOWN_PURCHASE") > 0) then {
	if(CTI_ECONOMY_LEVEL_INFANTRY >= 0) then {
	if(CTI_CAMO_ACTIVATION == 1 || CTI_CAMO_ACTIVATION == 3) then {		//Winter camo active
		_c pushBack format["%1", _sid];
	};
	if(CTI_CAMO_ACTIVATION == 2 || CTI_CAMO_ACTIVATION == 3) then {		//Desert camo active
		_c pushBack format["%1", _sid];
	};
	_c pushBack format["%1", _sid];
	};
};
if(CTI_ECONOMY_LEVEL_WHEELED >= 0) then {
	if(CTI_CAMO_ACTIVATION == 1 || CTI_CAMO_ACTIVATION == 3) then {		//Winter camo active
		_c pushBack format["%1", _sid];
	};
	if(CTI_CAMO_ACTIVATION == 2 || CTI_CAMO_ACTIVATION == 3) then {		//Desert camo active
		_c pushBack format["%1", _sid];
	};
	_c pushBack format["%1", _sid];
};
_priorUnits = missionNamespace getVariable format ["CTI_%1_%2Units", _side, CTI_DEPOT];
if (isNil "_priorUnits") then { 
	_priorUnits = []; 
} else {
	_c append _priorUnits; 
};

if (CTI_Log_Level >= CTI_Log_Debug) then {["VIOC_DEBUG", "FILE: common\config\factories\factory_GER_FOW.sqf", format["units in factory %1: [%2] ", CTI_DEPOT, count _c]] call CTI_CO_FNC_Log;};
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_DEPOT], _c];
*/
//***************************************************************************************************************************************
//														Naval Factory																	*
//***************************************************************************************************************************************
//--- Below is classnames for Units and AI avaiable to puchase from Naval Factory.
/*_c = [];

_priorUnits = missionNamespace getVariable format ["CTI_%1_%2Units", _side, CTI_NAVAL];
if (isNil "_priorUnits") then { 
	_priorUnits = []; 
} else {
	_c append _priorUnits; 
};

if (CTI_Log_Level >= CTI_Log_Debug) then {["VIOC_DEBUG", "FILE: common\config\factories\factory_GER_FOW.sqf", format["units in factory %1: [%2] ", CTI_NAVAL, count _c]] call CTI_CO_FNC_Log;};
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_NAVAL], _c];
*/