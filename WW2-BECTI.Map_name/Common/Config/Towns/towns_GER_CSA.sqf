_side = _this;
_sid = "";
_tag = "";

if(_side == west) then {
	_sid = "VIOC_B_";
	_tag = "WEST_";
} 
else {
	if(_side == east) then {
		_sid = "VIOC_O_";
		_tag = "EAST_";
	} 
	else {
		_sid = "VIOC_I_";
		_tag = "GUER_";
	};
};
if(CTI_VIO_ADDON == 0) then {_sid = "";};

if (CTI_Log_Level >= CTI_Log_Debug) then {
	["VIOC_DEBUG", "FILE: common\config\Towns_GER_CSA.sqf", format["Town Squad preparation - sid: <%1> tag: <%2> ", _sid, _tag]] call CTI_CO_FNC_Log;
};
(_tag) call compile preprocessFileLineNumbers "Common\Config\Towns\towns_SetTownFlag.sqf";

//***************************************************************************************************************************************
//														Town infantry setup																*
//***************************************************************************************************************************************
INFANTRY = [];
INFANTRY_MG = [];
INFANTRY_AT = [];

switch (CTI_ECONOMY_LEVEL_INFANTRY) do {
	case 1: {
		INFANTRY = [[format["%1CSA38_WH7", _sid],1],[format["%1CSA38_WH13", _sid],1],[format["%1CSA38_WH4", _sid],1],[format["%1CSA38_WH22Ii", _sid],1],[format["%1CSA38_WH22", _sid],1],[format["%1CSA38_WH22", _sid],1]];
		INFANTRY_MG = [[format["%1CSA38_WH8", _sid],1],[format["%1CSA38_WH13", _sid],1],[format["%1CSA38_WH4", _sid],1],[format["%1CSA38_WH5as2", _sid],1],[format["%1CSA38_WH5", _sid],1],[format["%1CSA38_WH5", _sid],1]];
		INFANTRY_AT = [[format["%1CSA38_WH9", _sid],1],[format["%1CSA38_WH13", _sid],1],[format["%1CSA38_WH4", _sid],1],[format["%1CSA38_WH5", _sid],1],[format["%1CSA38_WH22i", _sid],1],[format["%1CSA38_WH1", _sid],1]];
		};
	case 2: {
		INFANTRY = [[format["%1CSA38_WH18", _sid],1],[format["%1CSA38_WH13", _sid],1],[format["%1CSA38_WH4", _sid],1],[format["%1CSA38_WH22Ii", _sid],1],[format["%1CSA38_WH1S", _sid],1],[format["%1CSA38_WH1S", _sid],1]];
		INFANTRY_MG = [[format["%1CSA38_WH19", _sid],1],[format["%1CSA38_WH13", _sid],1],[format["%1CSA38_WH4", _sid],1],[format["%1CSA38_WH5as2", _sid],1],[format["%1CSA38_WH5", _sid],1],[format["%1CSA38_WH5", _sid],1]];
		INFANTRY_AT = [[format["%1CSA38_WH20", _sid],1],[format["%1CSA38_WH13", _sid],1],[format["%1CSA38_WH4", _sid],1],[format["%1CSA38_WH5", _sid],1],[format["%1CSA38_WH2", _sid],1],[format["%1CSA38_WH1", _sid],1]];
		};
	default {
		INFANTRY = [[format["%1CSA38_WH4B", _sid],1],[format["%1CSA38_WH13", _sid],1],[format["%1CSA38_WH4", _sid],1],[format["%1CSA38_WH2Bi", _sid],1],[format["%1CSA38_WH2B", _sid],1],[format["%1CSA38_WH2B", _sid],1]];
		INFANTRY_MG = [[format["%1CSA38_WH4B", _sid],1],[format["%1CSA38_WH13", _sid],1],[format["%1CSA38_WH4", _sid],1],[format["%1CSA38_WH2Bi", _sid],1],[format["%1CSA38_WH1B", _sid],1],[format["%1CSA38_WH22Ii", _sid],1]];
		INFANTRY_AT = [[format["%1CSA38_WH4B", _sid],1],[format["%1CSA38_WH13", _sid],1],[format["%1CSA38_WH4", _sid],1],[format["%1CSA38_WH2Bi", _sid],1],[format["%1CSA38_WH1B", _sid],1],[format["%1CSA38_WH3", _sid],1]];
	};
};

if (isNil {missionNamespace getVariable format["%1INFANTRY_SQ_LIGHT", _tag]}) then {
	missionNamespace setVariable [format["%1INFANTRY_SQ_LIGHT", _tag], INFANTRY];
	missionNamespace setVariable [format["%1INFANTRY_SQ_MG", _tag], INFANTRY_MG];
	missionNamespace setVariable [format["%1INFANTRY_SQ_AT", _tag], INFANTRY_AT];
} else {
	missionNamespace setVariable [format["%1INFANTRY_SQ_LIGHT", _tag], (missionNamespace getVariable format["%1INFANTRY_SQ_LIGHT", _tag]) + INFANTRY];
	missionNamespace setVariable [format["%1INFANTRY_SQ_MG", _tag], (missionNamespace getVariable format["%1INFANTRY_SQ_MG", _tag]) + INFANTRY_MG];
	missionNamespace setVariable [format["%1INFANTRY_SQ_AT", _tag], (missionNamespace getVariable format["%1INFANTRY_SQ_AT", _tag]) + INFANTRY_AT];
};
if (CTI_Log_Level >= CTI_Log_Debug) then {
	["VIOC_DEBUG", "FILE: common\config\Towns_GER_CSA.sqf", format["Town Squad <%1> with units <%2> ", format["%1INFANTRY_SQ_LIGHT", _tag], missionNamespace getVariable format["%1INFANTRY_SQ_LIGHT", _tag]]] call CTI_CO_FNC_Log;
	["VIOC_DEBUG", "FILE: common\config\Towns_GER_CSA.sqf", format["Town Squad <%1> with units <%2> ", format["%1INFANTRY_SQ_MG", _tag], missionNamespace getVariable format["%1INFANTRY_SQ_MG", _tag]]] call CTI_CO_FNC_Log;
	["VIOC_DEBUG", "FILE: common\config\Towns_GER_CSA.sqf", format["Town Squad <%1> with units <%2> ", format["%1INFANTRY_SQ_AT", _tag], missionNamespace getVariable format["%1INFANTRY_SQ_AT", _tag]]] call CTI_CO_FNC_Log;
};

//***************************************************************************************************************************************
//														Town Wheeled setup																*
//***************************************************************************************************************************************
WHEELED_LIGHT = [];
WHEELED_HEAVY = [];

switch (CTI_ECONOMY_LEVEL_WHEELED) do {
	case 3;
	case 4: {
		WHEELED_LIGHT = [[format["%1CSA38_8rad", _sid],1],[format["%1CSA38_8radPL", _sid],1],[format["%1CSA38_8radFR", _sid],1]];
		WHEELED_HEAVY = [[format["%1CSA38_8rad2", _sid],1],[format["%1CSA38_8rad2PL", _sid],1],[format["%1CSA38_8rad2FR", _sid],1]];
		if(CTI_CAMO_ACTIVATION == 1 || CTI_CAMO_ACTIVATION == 3) then {		//Winter camo active
			WHEELED_LIGHT = [[format["%1CSA38_8radW", _sid],1]];
			WHEELED_HEAVY = [[format["%1CSA38_8rad2W", _sid],1]];
		};
		if(CTI_CAMO_ACTIVATION == 2 || CTI_CAMO_ACTIVATION == 3) then {		//Desert camo active
			WHEELED_LIGHT = [[format["%1CSA38_8radDE", _sid],1]];
			WHEELED_HEAVY = [[format["%1CSA38_8rad2DE", _sid],1]];
		};
		WHEELED_LIGHT append [[format["%1CSA38_8radLATE", _sid],1],[format["%1CSA38_8radLATE2", _sid],1]];
		WHEELED_HEAVY append [[format["%1CSA38_8rad2LATE", _sid],1],[format["%1CSA38_8rad2LATE2", _sid],1]];
	};
	default {
	};
};

if (isNil {missionNamespace getVariable format["%1WHEELED_SQ_LIGHT", _tag]}) then {
	missionNamespace setVariable [format["%1WHEELED_SQ_LIGHT", _tag], WHEELED_LIGHT];
	missionNamespace setVariable [format["%1WHEELED_SQ_HEAVY", _tag], WHEELED_HEAVY];
} else {
	missionNamespace setVariable [format["%1WHEELED_SQ_LIGHT", _tag], (missionNamespace getVariable format["%1WHEELED_SQ_LIGHT", _tag]) + WHEELED_LIGHT];
	missionNamespace setVariable [format["%1WHEELED_SQ_HEAVY", _tag], (missionNamespace getVariable format["%1WHEELED_SQ_HEAVY", _tag]) + WHEELED_HEAVY];
};
if (CTI_Log_Level >= CTI_Log_Debug) then {
	["VIOC_DEBUG", "FILE: common\config\Towns_GER_CSA.sqf", format["Town Squad <%1> with units <%2> ", format["%1WHEELED_SQ_LIGHT", _tag], missionNamespace getVariable format["%1WHEELED_SQ_LIGHT", _tag]]] call CTI_CO_FNC_Log;
	["VIOC_DEBUG", "FILE: common\config\Towns_GER_CSA.sqf", format["Town Squad <%1> with units <%2> ", format["%1WHEELED_SQ_HEAVY", _tag], missionNamespace getVariable format["%1WHEELED_SQ_HEAVY", _tag]]] call CTI_CO_FNC_Log;
};

//***************************************************************************************************************************************
//														Town Tracked setup																*
//***************************************************************************************************************************************
TRACKED_LIGHT = [];
TRACKED_MEDIUM = [];
TRACKED_HEAVY = [];

switch (CTI_ECONOMY_LEVEL_TRACKED) do {
	case 0: {
		switch (CTI_ECONOMY_LEVEL_TRACKED) do {
			case 1: {	//Winter camo active
				TRACKED_LIGHT = [[format["%1CSA38_pzbfwI_W", _sid],1]];
				TRACKED_MEDIUM = [[format["%1CSA38_ltm35_W", _sid],1],[format["%1CSA38_pzkpfwI_W", _sid],1]];
				TRACKED_HEAVY = [[format["%1CSA38_pzII_W", _sid],1]];
			};
			case 2: {	//Desert camo active
				TRACKED_LIGHT = [[format["%1CSA38_pzbfwI_DE", _sid],1]];
				TRACKED_MEDIUM = [[format["%1CSA38_pzkpfwI_DE", _sid],1]];
				TRACKED_HEAVY = [[format["%1CSA38_pzII_DE", _sid],1]];
			};
			default {
				TRACKED_LIGHT = [[format["%1CSA38_pzbfwI", _sid],1]];
				TRACKED_MEDIUM = [[format["%1CSA38_ltm35_1", _sid],1],[format["%1CSA38_pzkpfwI", _sid],1]];
				TRACKED_HEAVY = [[format["%1CSA38_pzII", _sid],1]];
			};
		};
		
	};
	case 1: {
		switch (CTI_ECONOMY_LEVEL_TRACKED) do {
			case 1: {	//Winter camo active
				TRACKED_LIGHT = [[format["%1CSA38_pzbfwI_W", _sid],1],[format["%1CSA38_pzkpfwI_W", _sid],1]];
				TRACKED_MEDIUM = [[format["%1CSA38_ltm35_W", _sid],1],[format["%1CSA38_ltm38_W", _sid],1]];
				TRACKED_HEAVY = [[format["%1CSA38_pzII_W", _sid],1],[format["%1CSA38_pzIIIB_W", _sid],1]];
			};
			default {
				TRACKED_LIGHT = [[format["%1CSA38_pzbfwI", _sid],1],[format["%1CSA38_pzkpfwI", _sid],1]];
				TRACKED_MEDIUM = [[format["%1CSA38_ltm35_1", _sid],1],[format["%1CSA38_ltm38", _sid],1],[format["%1CSA38_pzII", _sid],1]];
				TRACKED_HEAVY = [[format["%1CSA38_pzIIIB", _sid],1],[format["%1CSA38_StugIII", _sid],1]];
			};
		};
		
	};
	case 2: {
		switch (CTI_ECONOMY_LEVEL_TRACKED) do {
			case 1: {	//Winter camo active
				TRACKED_LIGHT = [[format["%1CSA38_pzbfwI_W", _sid],1],[format["%1CSA38_pzkpfwI_W", _sid],1]];
				TRACKED_MEDIUM = [[format["%1CSA38_ltm35_W", _sid],1],[format["%1CSA38_ltm38_W", _sid],1],[format["%1CSA38_pzII_W", _sid],1]];
				TRACKED_HEAVY = [[format["%1CSA38_pzIIIB_W", _sid],1],[format["%1CSA38_pzIV_W", _sid],1]];
			};
			default {
				TRACKED_LIGHT = [[format["%1CSA38_pzbfwI", _sid],1],[format["%1CSA38_pzkpfwI", _sid],1]];
				TRACKED_MEDIUM = [[format["%1CSA38_ltm35_1", _sid],1],[format["%1CSA38_ltm38", _sid],1],[format["%1CSA38_pzII", _sid],1]];
				TRACKED_HEAVY = [[format["%1CSA38_pzIIIB", _sid],1],[format["%1CSA38_StugIII", _sid],1],[format["%1CSA38_pzIV", _sid],1]];
			};
		};
		
	};
	case 3: {
		switch (CTI_ECONOMY_LEVEL_TRACKED) do {
			case 1: {	//Winter camo active
				TRACKED_LIGHT = [[format["%1CSA38_pzbfwI_W", _sid],1],[format["%1CSA38_pzkpfwI_W", _sid],1]];
				TRACKED_MEDIUM = [[format["%1CSA38_ltm35_W", _sid],1],[format["%1CSA38_ltm38_W", _sid],1],[format["%1CSA38_pzII_W", _sid],1]];
				TRACKED_HEAVY = [[format["%1CSA38_pzIIIB_W", _sid],1],[format["%1CSA38_pzIV_W", _sid],1],[format["%1csa38_valentineMkII7", _sid],1]];
			};
			default {
				TRACKED_LIGHT = [[format["%1CSA38_pzbfwI", _sid],1],[format["%1CSA38_pzkpfwI", _sid],1]];
				TRACKED_MEDIUM = [[format["%1CSA38_ltm35_1", _sid],1],[format["%1CSA38_ltm38", _sid],1],[format["%1CSA38_pzII", _sid],1]];
				TRACKED_HEAVY = [[format["%1CSA38_pzIIIB", _sid],1],[format["%1CSA38_StugIII", _sid],1],[format["%1CSA38_pzIV", _sid],1],[format["%1csa38_valentineMkII7", _sid],1]];
			};
		};
		
	};
	default {
	};
};

if (isNil {missionNamespace getVariable format["%1TRACKED_SQ_LIGHT", _tag]}) then {
	missionNamespace setVariable [format["%1TRACKED_SQ_LIGHT", _tag], TRACKED_LIGHT];
	missionNamespace setVariable [format["%1TRACKED_SQ_MEDIUM", _tag], TRACKED_MEDIUM];
	missionNamespace setVariable [format["%1TRACKED_SQ_HEAVY", _tag], TRACKED_HEAVY];
} else {
	missionNamespace setVariable [format["%1TRACKED_SQ_LIGHT", _tag], (missionNamespace getVariable format["%1TRACKED_SQ_LIGHT", _tag]) + TRACKED_LIGHT];
	missionNamespace setVariable [format["%1TRACKED_SQ_MEDIUM", _tag], (missionNamespace getVariable format["%1TRACKED_SQ_MEDIUM", _tag]) + TRACKED_MEDIUM];
	missionNamespace setVariable [format["%1TRACKED_SQ_HEAVY", _tag], (missionNamespace getVariable format["%1TRACKED_SQ_HEAVY", _tag]) + TRACKED_HEAVY];
};
if (CTI_Log_Level >= CTI_Log_Debug) then {
	["VIOC_DEBUG", "FILE: common\config\Towns_GER_CSA.sqf", format["Town Squad <%1> with units <%2> ", format["%1TRACKED_SQ_LIGHT", _tag], missionNamespace getVariable format["%1TRACKED_SQ_LIGHT", _tag]]] call CTI_CO_FNC_Log;
	["VIOC_DEBUG", "FILE: common\config\Towns_GER_CSA.sqf", format["Town Squad <%1> with units <%2> ", format["%1TRACKED_SQ_MEDIUM", _tag], missionNamespace getVariable format["%1TRACKED_SQ_MEDIUM", _tag]]] call CTI_CO_FNC_Log;
	["VIOC_DEBUG", "FILE: common\config\Towns_GER_CSA.sqf", format["Town Squad <%1> with units <%2> ", format["%1TRACKED_SQ_HEAVY", _tag], missionNamespace getVariable format["%1TRACKED_SQ_HEAVY", _tag]]] call CTI_CO_FNC_Log;
};

//***************************************************************************************************************************************
//														Town Air setup																	*
//***************************************************************************************************************************************
AIR_FIGHTER = [];
AIR_BOMBER = [];
//switch (CTI_ECONOMY_LEVEL_AIR) do {
//	default {
//	};
//};
if (isNil {missionNamespace getVariable format["%1AIR_SQ_FIGHTER", _tag]}) then {
	missionNamespace setVariable [format["%1AIR_SQ_FIGHTER", _tag], AIR_FIGHTER];
	missionNamespace setVariable [format["%1AIR_SQ_BOMBER", _tag], AIR_BOMBER];
} else {
	missionNamespace setVariable [format["%1AIR_SQ_FIGHTER", _tag], (missionNamespace getVariable format["%1AIR_SQ_FIGHTER", _tag]) + AIR_FIGHTER];
	missionNamespace setVariable [format["%1AIR_SQ_BOMBER", _tag], (missionNamespace getVariable format["%1AIR_SQ_BOMBER", _tag]) + AIR_BOMBER];
};
if (CTI_Log_Level >= CTI_Log_Debug) then {
	["VIOC_DEBUG", "FILE: common\config\Towns_GER_CSA.sqf", format["Town Squad <%1> with units <%2> ", format["%1AIR_SQ_FIGHTER", _tag], missionNamespace getVariable format["%1AIR_SQ_FIGHTER", _tag]]] call CTI_CO_FNC_Log;
	["VIOC_DEBUG", "FILE: common\config\Towns_GER_CSA.sqf", format["Town Squad <%1> with units <%2> ", format["%1AIR_SQ_BOMBER", _tag], missionNamespace getVariable format["%1AIR_SQ_BOMBER", _tag]]] call CTI_CO_FNC_Log;
};

//***************************************************************************************************************************************
//														Town Anti-Air setup																*
//***************************************************************************************************************************************
ANTI_AIR = [];
//switch (CTI_ECONOMY_LEVEL_AIR) do {
//	default {
//	};
//};
if (isNil {missionNamespace getVariable format["%1SQ_ANTI_AIR", _tag]}) then {
	missionNamespace setVariable [format["%1SQ_ANTI_AIR", _tag], ANTI_AIR];
} else {
	missionNamespace setVariable [format["%1SQ_ANTI_AIR", _tag], (missionNamespace getVariable format["%1SQ_ANTI_AIR", _tag]) + ANTI_AIR];
};
if (CTI_Log_Level >= CTI_Log_Debug) then {
	["VIOC_DEBUG", "FILE: common\config\Towns_GER_CSA.sqf", format["Town Squad <%1> with units <%2> ", format["%1SQ_ANTI_AIR", _tag], missionNamespace getVariable format["%1SQ_ANTI_AIR", _tag]]] call CTI_CO_FNC_Log;
};
