_side = _this;
_sid = "";
_level = -1;

if(_side == west) then {
	_sid = "VIOC_B_";
} 
else {
	if(_side == east) then {
		_sid = "VIOC_O_";
	} 
	else {
		_sid = "VIOC_I_";
	};
};
if !(("O_NORTH_SOV_W_41_Medic") call CTI_CO_FNC_IsSidePatchLoaded) then {_sid = ""};

_v = [];
_t = [];
_p = [];
_f = [];
_m = [];
_c = [];
_s = [];

//--- Commander will assign those orders based on the force and the probability [type, strenght, {probability}, {Max per side}]
missionNamespace setVariable [format["CTI_SQUADS_%1_CATEGORY_INFANTRY", _side], [["Infantry", 2, 40]]];
missionNamespace setVariable [format["CTI_SQUADS_%1_CATEGORY_LIGHT", _side], [["Motorized", 2, 60]]];
missionNamespace setVariable [format["CTI_SQUADS_%1_CATEGORY_HEAVY", _side], [["AntiAir", 1, 20], ["Armored", 2, 80]]];
missionNamespace setVariable [format["CTI_SQUADS_%1_CATEGORY_AIR", _side], [["Air", 1, 40]]];

missionNamespace setVariable [format["CTI_SQUADS_%1_TOWN_DEFENSE", _side], ["Infantry", "Motorized"]];

//***************************************************************************************************************************************
//														Infantry Troops																	*
//***************************************************************************************************************************************
//Infantry setup for the AI groups
units_infantry = [];
inf_to_add = [];
infantry_auto = [];
kind_infantry = [];
_matrix_full = [_side, CTI_UPGRADE_BARRACKS] call CTI_CO_FNC_GetTechmatrix;
_matrix_nation = [_side, CTI_UPGRADE_BARRACKS, CTI_SOV_ID, CTI_NF_ID] call CTI_CO_FNC_GetTechmatrix;

_matrix_cnt = [0, _matrix_full, _matrix_nation] call CTI_CO_FNC_CheckCountUp;
if(_matrix_cnt >= 0) then {_level = _matrix_cnt; _matrix_cnt = _matrix_cnt + 1;};
if(CTI_ECONOMY_LEVEL_INFANTRY >= _level) then {
	switch (CTI_CAMO_ACTIVATION) do {
		case 1: {
			inf_to_add = [[format["%1O_NORTH_SOV_W_41_Medic", _sid], 1, 60]];
			inf_to_add pushBack [format["%1O_NORTH_SOV_W_41_Rifleman", _sid], 1, 20];
			inf_to_add pushBack [format["%1O_NORTH_SOV_W_41_Rifleman_1CL", _sid], 1, 20];
			inf_to_add pushBack [format["%1O_NORTH_SOV_W_41_Rifleman_CPL", _sid], 1, 20];
			inf_to_add pushBack [format["%1O_NORTH_SOV_W_41_Rifleman_SGT", _sid], 1, 20];
			inf_to_add pushBack [format["%1O_NORTH_SOV_W_41_Rifleman_SSGT", _sid], 1, 20];
			inf_to_add pushBack [format["%1O_NORTH_SOV_W_41_Rifleman_SGTMAJ", _sid], 1, 20];
			inf_to_add pushBack [format["%1O_NORTH_SOV_W_41_Engineer", _sid], 1, 20];
		};
		case 2: {
			inf_to_add = [[format["%1O_NORTH_SOV_41_Rifleman", _sid], 1, 60]];
			inf_to_add pushBack [format["%1O_NORTH_SOV_41_Rifleman_1CL", _sid], 1, 20];
			inf_to_add pushBack [format["%1O_NORTH_SOV_41_Rifleman_CPL", _sid], 1, 20];
			inf_to_add pushBack [format["%1O_NORTH_SOV_41_Rifleman_SGT", _sid], 1, 20];
			inf_to_add pushBack [format["%1O_NORTH_SOV_41_Rifleman_SSGT", _sid], 1, 20];
			inf_to_add pushBack [format["%1O_NORTH_SOV_41_Rifleman_SGTMAJ", _sid], 1, 20];
			inf_to_add pushBack [format["%1O_NORTH_SOV_41_Medic", _sid], 1, 20];
			inf_to_add pushBack [format["%1O_NORTH_SOV_41_Engineer", _sid], 1, 20];
		};
		default {
			inf_to_add = [[format["%1O_NORTH_SOV_W_39_Rifleman", _sid], 1, 60]];
			inf_to_add pushBack [format["%1O_NORTH_SOV_W_39_Rifleman_SGT", _sid], 1, 20];
			inf_to_add pushBack [format["%1O_NORTH_SOV_W_39_Rifleman_SSGT", _sid], 1, 20];
			inf_to_add pushBack [format["%1O_NORTH_SOV_W_39_Rifleman_SGTMAJ", _sid], 1, 20];
			inf_to_add pushBack [format["%1O_NORTH_SOV_W_39_Medic", _sid], 1, 20];
			inf_to_add pushBack [format["%1O_NORTH_SOV_W_39_Engineer", _sid], 1, 20];
		};
	};
	units_infantry append inf_to_add;
	infantry_auto append inf_to_add;
};

_v pushBack "InfantryT0";
_t pushBack "Infantry T0";
_p pushBack inf_to_add;
_f pushBack CTI_BARRACKS;
_m pushBack 100;
_c pushBack "Infantry";
_s pushBack [];
kind_infantry pushBack "InfantryT0";

_matrix_cnt = [_matrix_cnt, _matrix_full, _matrix_nation] call CTI_CO_FNC_CheckCountUp;
if(_matrix_cnt >= 0) then {_level = _matrix_cnt; _matrix_cnt = _matrix_cnt + 1;};
if(CTI_ECONOMY_LEVEL_INFANTRY >= _level) then {
	switch (CTI_CAMO_ACTIVATION) do {
		case 1: {
			inf_to_add = [[format["%1O_NORTH_SOV_W_41_Submachinegunner", _sid], 1, 60]];
			inf_to_add pushBack [format["%1O_NORTH_SOV_W_41_Submachinegunner_1CL", _sid], 1, 20];
			inf_to_add pushBack [format["%1O_NORTH_SOV_W_41_Submachinegunner_CPL", _sid], 1, 20];
			inf_to_add pushBack [format["%1O_NORTH_SOV_W_41_Submachinegunner_SGT", _sid], 1, 20];
			inf_to_add pushBack [format["%1O_NORTH_SOV_W_41_Submachinegunner_SSGT", _sid], 1, 20];
			inf_to_add pushBack [format["%1O_NORTH_SOV_W_41_Autorifleman", _sid], 1, 20];
			inf_to_add pushBack [format["%1O_NORTH_SOV_W_41_Autorifleman_38", _sid], 1, 20];
		};
		case 2: {
			inf_to_add = [[format["%1O_NORTH_SOV_41_Autorifleman_38", _sid], 1, 60]];
			inf_to_add pushBack [format["%1O_NORTH_SOV_41_Autorifleman", _sid], 1, 20];
			inf_to_add pushBack [format["%1O_NORTH_SOV_41_Submachinegunner", _sid], 1, 20];
			inf_to_add pushBack [format["%1O_NORTH_SOV_41_Submachinegunner_1CL", _sid], 1, 20];
			inf_to_add pushBack [format["%1O_NORTH_SOV_41_Submachinegunner_CPL", _sid], 1, 20];
			inf_to_add pushBack [format["%1O_NORTH_SOV_41_Submachinegunner_SGT", _sid], 1, 20];
			inf_to_add pushBack [format["%1O_NORTH_SOV_41_Submachinegunner_SSGT", _sid], 1, 20];
			inf_to_add pushBack [format["%1O_NORTH_SOV_41_Submachinegunner_38", _sid], 1, 20];
		};
		default {
			inf_to_add = [[format["%1O_NORTH_SOV_W_39_Autorifleman", _sid], 1, 60]];
			inf_to_add pushBack [format["%1O_NORTH_SOV_W_39_Submachinegunner", _sid], 1, 20];
			inf_to_add pushBack [format["%1O_NORTH_SOV_W_39_Submachinegunner_38", _sid], 1, 20];
		};
	};
	units_infantry append inf_to_add;
	if(CTI_FACTORY_LEVEL_PRESET == _level) then {infantry_auto append inf_to_add;};
};

_v pushBack "InfantryT1";
_t pushBack "Infantry T1";
_p pushBack inf_to_add;
_f pushBack CTI_BARRACKS;
_m pushBack 100;
_c pushBack "Infantry";
_s pushBack [];
kind_infantry pushBack "InfantryT1";

_matrix_cnt = [_matrix_cnt, _matrix_full, _matrix_nation] call CTI_CO_FNC_CheckCountUp;
if(_matrix_cnt >= 0) then {_level = _matrix_cnt; _matrix_cnt = _matrix_cnt + 1;};
if(CTI_ECONOMY_LEVEL_INFANTRY >= _level) then {
	switch (CTI_CAMO_ACTIVATION) do {
		case 1: {
			inf_to_add = [[format["%1O_NORTH_SOV_W_41_Machinegunner", _sid], 1, 60]];
			inf_to_add pushBack [format["%1O_NORTH_SOV_W_41_Machinegunner_Assistant", _sid], 1, 20];
			inf_to_add pushBack [format["%1O_NORTH_SOV_W_41_Sniper", _sid], 1, 20];
			inf_to_add pushBack [format["%1O_NORTH_SOV_W_41_Officer_2ndLt", _sid], 1, 20];
			inf_to_add pushBack [format["%1O_NORTH_SOV_W_41_Officer_Lt", _sid], 1, 20];
			inf_to_add pushBack [format["%1O_NORTH_SOV_W_41_Officer_1stLt", _sid], 1, 20];
		};
		case 2: {
			inf_to_add = [[format["%1O_NORTH_SOV_41_Machinegunner", _sid], 1, 60]];
			inf_to_add pushBack [format["%1O_NORTH_SOV_41_Machinegunner_Assistant", _sid], 1, 20];
			inf_to_add pushBack [format["%1O_NORTH_SOV_41_Sniper", _sid], 1, 20];
			inf_to_add pushBack [format["%1O_NORTH_SOV_41_Officer_2ndLt", _sid], 1, 20];
			inf_to_add pushBack [format["%1O_NORTH_SOV_41_Officer_Lt", _sid], 1, 20];
			inf_to_add pushBack [format["%1O_NORTH_SOV_41_Officer_1stLt", _sid], 1, 20];
		};
		default {
			inf_to_add = [[format["%1O_NORTH_SOV_W_39_Machinegunner", _sid], 1, 60]];
			inf_to_add pushBack [format["%1O_NORTH_SOV_W_39_Machinegunner_Assistant", _sid], 1, 20];
			inf_to_add pushBack [format["%1O_NORTH_SOV_W_39_Sniper", _sid], 1, 20];
			inf_to_add pushBack [format["%1O_NORTH_SOV_W_39_Officer_2ndLt", _sid], 1, 20];
			inf_to_add pushBack [format["%1O_NORTH_SOV_W_39_Officer_Lt", _sid], 1, 20];
			inf_to_add pushBack [format["%1O_NORTH_SOV_W_39_Officer", _sid], 1, 20];
			inf_to_add pushBack [format["%1O_NORTH_SOV_W_39_Officer_1stLt", _sid], 1, 20];
		};
	};
	units_infantry append inf_to_add;
	if(CTI_FACTORY_LEVEL_PRESET >= _level) then {infantry_auto append inf_to_add;};
};

_v pushBack "InfantryT2";
_t pushBack "Infantry T2";
_p pushBack inf_to_add;
_f pushBack CTI_BARRACKS;
_m pushBack 100;
_c pushBack "Infantry";
_s pushBack [];
kind_infantry pushBack "InfantryT2";

_v pushBack "Infantry";
_t pushBack "Infantry (Auto)";
_p pushBack infantry_auto;
_f pushBack CTI_BARRACKS;
_m pushBack 100;
_c pushBack "Infantry";
_s pushBack [];
kind_infantry pushBack "Infantry";

_v pushBack "InfantryAll";
_t pushBack "Infantry T0-Max";
_p pushBack units_infantry;
_f pushBack CTI_BARRACKS;
_m pushBack 100;
_c pushBack "Infantry";
_s pushBack [];
kind_infantry pushBack "InfantryAll";

//***************************************************************************************************************************************
//														Motorized																		*
//***************************************************************************************************************************************
//Wheeled setup for the AI groups
units_wheeled = [];
mot_to_add = [];
wheeled_auto = [];
kind_wheeled = [];
_matrix_full = [_side, CTI_UPGRADE_LIGHT] call CTI_CO_FNC_GetTechmatrix;
_matrix_nation = [_side, CTI_UPGRADE_LIGHT, CTI_SOV_ID, CTI_NF_ID] call CTI_CO_FNC_GetTechmatrix;

_matrix_cnt = [0, _matrix_full, _matrix_nation] call CTI_CO_FNC_CheckCountUp;
if(_matrix_cnt >= 0) then {_level = _matrix_cnt; _matrix_cnt = _matrix_cnt + 1;};
if(CTI_ECONOMY_LEVEL_WHEELED >= _level) then {	
	switch(CTI_CAMO_ACTIVATION) do {
		case 1: {//Winter camo active
			mot_to_add = [[format["%NORTH_SOV_W_R75", _sid], 1, 10]];
		};
		default {
			mot_to_add = [[format["%NORTH_SOV_R75", _sid], 1, 10]];
		};
	};
	
	units_wheeled append mot_to_add;
	wheeled_auto append mot_to_add;
};

_v pushBack "MotorizedT0";
_t pushBack "unnamed";
_p pushBack mot_to_add;
_f pushBack CTI_LIGHT;
_m pushBack 200;
_c pushBack "Motorized";
_s pushBack [];
kind_wheeled pushBack "MotorizedT0";

_matrix_cnt = [0, _matrix_full, _matrix_nation] call CTI_CO_FNC_CheckCountUp;
if(_matrix_cnt >= 0) then {_level = _matrix_cnt; _matrix_cnt = _matrix_cnt + 1;};
if(CTI_ECONOMY_LEVEL_WHEELED >= _level) then {	
	if(CTI_STREAM_BLOCK > 0) then {}
	else {
		switch(CTI_CAMO_ACTIVATION) do {
			case 1: {//Winter camo active
				mot_to_add = [[format["%1NORTH_SOV_W_39_BA3", _sid], 1, 10]];
				mot_to_add = [[format["%1NORTH_SOV_W_39_BA6", _sid], 1, 10]];
				mot_to_add = [[format["%1NORTH_SOV_W_39_BA10", _sid], 1, 10]];
			};
			default {
				mot_to_add = [[format["%1NORTH_SOV_41_BA3", _sid], 1, 10]];
				mot_to_add = [[format["%1NORTH_SOV_41_BA6", _sid], 1, 10]];
				mot_to_add = [[format["%1NORTH_SOV_41_BA10", _sid], 1, 10]];
			};
		};
	};
	
	units_wheeled append mot_to_add;
	wheeled_auto append mot_to_add;
};

_v pushBack "MotorizedT1";
_t pushBack "unnamed";
_p pushBack mot_to_add;
_f pushBack CTI_LIGHT;
_m pushBack 200;
_c pushBack "Motorized";
_s pushBack [];
kind_wheeled pushBack "MotorizedT1";

_v pushBack "Motorized";
_t pushBack "Motorized (Auto)";
_p pushBack wheeled_auto;
_f pushBack CTI_LIGHT;
_m pushBack 200;
_c pushBack "Motorized";
_s pushBack [];
kind_wheeled pushBack "Motorized";

_v pushBack "MotorizedAll";
_t pushBack "Motorized T0-Max";
_p pushBack units_wheeled;
_f pushBack CTI_LIGHT;
_m pushBack 200;
_c pushBack "Motorized";
_s pushBack [];
kind_wheeled pushBack "MotorizedAll";

//***************************************************************************************************************************************
//														Armored																			*
//***************************************************************************************************************************************
//Tracked setup for the AI groups
units_tracked = [];
arm_to_add = [];
tracked_auto = [];
kind_tracked = [];
_matrix_full = [_side, CTI_UPGRADE_HEAVY] call CTI_CO_FNC_GetTechmatrix;
_matrix_nation = [_side, CTI_UPGRADE_HEAVY, CTI_SOV_ID, CTI_NF_ID] call CTI_CO_FNC_GetTechmatrix;

_matrix_cnt = [0, _matrix_full, _matrix_nation] call CTI_CO_FNC_CheckCountUp;
if(_matrix_cnt >= 0) then {_level = _matrix_cnt; _matrix_cnt = _matrix_cnt + 1;};
if(CTI_ECONOMY_LEVEL_TRACKED >= _level) then {
	switch (CTI_CAMO_ACTIVATION) do {
		case 1: {
			arm_to_add = [[format["%1NORTH_SOV_W_41_T26_M33_OT", _sid], 1, 60]];
			arm_to_add pushBack [format["%1NORTH_SOV_W_41_T26_M31", _sid], 1, 20];
		};
		default {
			arm_to_add = [[format["%1NORTH_SOV_41_T26_M33_OT", _sid], 1, 60]];
			arm_to_add pushBack [format["%1NORTH_SOV_41_T26_M31", _sid], 1, 20];
		};
	};
	units_tracked append arm_to_add;
	tracked_auto append arm_to_add;
};

_v pushBack format["ArmoredT%1", _level];
_t pushBack "T26 M31/M33 OT";
_p pushBack arm_to_add;
_f pushBack CTI_HEAVY;
_m pushBack 500;
_c pushBack "Armored";
_s pushBack [];
kind_tracked pushBack format["ArmoredT%1", _level];

_matrix_cnt = [_matrix_cnt, _matrix_full, _matrix_nation] call CTI_CO_FNC_CheckCountUp;
if(_matrix_cnt >= 0) then {_level = _matrix_cnt; _matrix_cnt = _matrix_cnt + 1;};
if(CTI_ECONOMY_LEVEL_TRACKED >= _level) then {
	switch (CTI_CAMO_ACTIVATION) do {
		case 1: {
			arm_to_add = [[format["%1NORTH_SOV_W_41_T26_M33", _sid], 1, 60]];
			arm_to_add pushBack [format["%1NORTH_SOV_W_41_T26_M33com", _sid], 1, 20];
		};
		default {
			arm_to_add = [[format["%1NORTH_SOV_41_T26_M33", _sid], 1, 60]];
			arm_to_add pushBack [format["%1NORTH_SOV_41_T26_M33com", _sid], 1, 20];
		};
	};
	units_tracked append arm_to_add;
	if(CTI_FACTORY_LEVEL_PRESET == _level) then {tracked_auto append arm_to_add;};
};

_v pushBack format["ArmoredT%1", _level];
_t pushBack "T26 M33";
_p pushBack arm_to_add;
_f pushBack CTI_HEAVY;
_m pushBack 500;
_c pushBack "Armored";
_s pushBack [];
kind_tracked pushBack format["ArmoredT%1", _level];

_matrix_cnt = [_matrix_cnt, _matrix_full, _matrix_nation] call CTI_CO_FNC_CheckCountUp;
if(_matrix_cnt >= 0) then {_level = _matrix_cnt; _matrix_cnt = _matrix_cnt + 1;};
if(CTI_ECONOMY_LEVEL_TRACKED >= _level) then {
	switch (CTI_CAMO_ACTIVATION) do {
		case 1: {
			arm_to_add = [[format["%1NORTH_SOV_W_41_T28", _sid], 1, 60]];
			arm_to_add pushBack [format["%1NORTH_SOV_W_41_T28_com", _sid], 1, 20];
			arm_to_add pushBack [format["%1NORTH_SOV_W_41_T26_M38", _sid], 1, 20];
		};
		default {
			arm_to_add = [[format["%1NORTH_SOV_41_T28", _sid], 1, 60]];
			arm_to_add pushBack [format["%1NORTH_SOV_41_T28_com", _sid], 1, 20];
			arm_to_add pushBack [format["%1NORTH_SOV_41_T26_M38", _sid], 1, 20];
		};
	};
	units_tracked append arm_to_add;
	if(CTI_FACTORY_LEVEL_PRESET == _level) then {tracked_auto append arm_to_add;};
};

_v pushBack format["ArmoredT%1", _level];
_t pushBack "T26 M38 + T28";
_p pushBack arm_to_add;
_f pushBack CTI_HEAVY;
_m pushBack 500;
_c pushBack "Armored";
_s pushBack [];
kind_tracked pushBack format["ArmoredT%1", _level];

_matrix_cnt = [_matrix_cnt, _matrix_full, _matrix_nation] call CTI_CO_FNC_CheckCountUp;
if(_matrix_cnt >= 0) then {_level = _matrix_cnt; _matrix_cnt = _matrix_cnt + 1;};
if(CTI_ECONOMY_LEVEL_TRACKED >= _level) then {
	switch (CTI_CAMO_ACTIVATION) do {
		case 1: {
			arm_to_add = [[format["%1NORTH_SOV_W_T60", _sid], 1, 60]];
			arm_to_add = [[format["%1NORTH_SOV_W_T70", _sid], 1, 60]];
			arm_to_add = [[format["%1NORTH_SOV_W_41_T28e", _sid], 1, 60]];
			arm_to_add = [[format["%1NORTH_SOV_W_41_T34_76_1941", _sid], 1, 60]];
		};
		default {
			arm_to_add = [[format["%1NORTH_SOV_T60", _sid], 1, 60]];
			arm_to_add = [[format["%1NORTH_SOV_T70", _sid], 1, 60]];
			arm_to_add = [[format["%1NORTH_SOV_41_T28e", _sid], 1, 60]];
			arm_to_add = [[format["%1NORTH_SOV_41_T34_76_1941", _sid], 1, 60]];
		};
	};
	units_tracked append arm_to_add;
	if(CTI_FACTORY_LEVEL_PRESET >= _level) then {tracked_auto append arm_to_add;};
};

_v pushBack format["ArmoredT%1", _level];
_t pushBack "T28e + T34 ... [NF]";
_p pushBack arm_to_add;
_f pushBack CTI_HEAVY;
_m pushBack 500;
_c pushBack "Armored";
_s pushBack [];
kind_tracked pushBack format["ArmoredT%1", _level];

_matrix_cnt = [_matrix_cnt, _matrix_full, _matrix_nation] call CTI_CO_FNC_CheckCountUp;
if(_matrix_cnt >= 0) then {_level = _matrix_cnt; _matrix_cnt = _matrix_cnt + 1;};
if(CTI_ECONOMY_LEVEL_TRACKED >= _level) then {
	switch (CTI_CAMO_ACTIVATION) do {
		case 1: {
			arm_to_add = [[format["%1NORTH_SOV_W_KV1_1940", _sid], 1, 60]];
			arm_to_add = [[format["%1NORTH_SOV_W_KV1_1941", _sid], 1, 60]];
			arm_to_add = [[format["%1NORTH_SOV_W_KV1_1942", _sid], 1, 60]];
		};
		default {
			arm_to_add = [[format["%1NORTH_SOV_KV1_1940", _sid], 1, 60]];
			arm_to_add = [[format["%1NORTH_SOV_KV1_1941", _sid], 1, 60]];
			arm_to_add = [[format["%1NORTH_SOV_KV1_1942", _sid], 1, 60]];
		};
	};
	units_tracked append arm_to_add;
	if(CTI_FACTORY_LEVEL_PRESET >= _level) then {tracked_auto append arm_to_add;};
};

_v pushBack format["ArmoredT%1", _level];
_t pushBack "KV1 [NF]";
_p pushBack arm_to_add;
_f pushBack CTI_HEAVY;
_m pushBack 500;
_c pushBack "Armored";
_s pushBack [];
kind_tracked pushBack format["ArmoredT%1", _level];


_matrix_cnt = [_matrix_cnt, _matrix_full, _matrix_nation] call CTI_CO_FNC_CheckCountUp;
if(_matrix_cnt >= 0) then {_level = _matrix_cnt; _matrix_cnt = _matrix_cnt + 1;};
if(CTI_ECONOMY_LEVEL_TRACKED >= _level) then {
	switch (CTI_CAMO_ACTIVATION) do {
		case 1: {
			arm_to_add = [[format["%1NORTH_SOV_W_T34_76_1943", _sid], 1, 60]];
			arm_to_add = [[format["%1NORTH_SOV_W_T34_85", _sid], 1, 60]];
			arm_to_add = [[format["%1NORTH_SOV_W_T34_85_45", _sid], 1, 60]];
			arm_to_add = [[format["%1NORTH_SOV_KV1E_1940", _sid], 1, 60]];
		};
		default {
			arm_to_add = [[format["%1NORTH_SOV_T34_76_1943", _sid], 1, 60]];
			arm_to_add = [[format["%1NORTH_SOV_T34_85", _sid], 1, 60]];
			arm_to_add = [[format["%1NORTH_SOV_T34_85_45", _sid], 1, 60]];
			arm_to_add = [[format["%1NORTH_SOV_T34_85_45_Berlin", _sid], 1, 60]];
			arm_to_add = [[format["%1NORTH_SOV_W_KV1E_1940", _sid], 1, 60]];
		};
	};
	units_tracked append arm_to_add;
	if(CTI_FACTORY_LEVEL_PRESET >= _level) then {tracked_auto append arm_to_add;};
};

_v pushBack format["ArmoredT%1", _level];
_t pushBack "T34 85 [NF]";
_p pushBack arm_to_add;
_f pushBack CTI_HEAVY;
_m pushBack 500;
_c pushBack "Armored";
_s pushBack [];
kind_tracked pushBack format["ArmoredT%1", _level];

_v pushBack "Armored";
_t pushBack "Tanks (Auto)";
_p pushBack tracked_auto;
_f pushBack CTI_HEAVY;
_m pushBack 500;
_c pushBack "Armored";
_s pushBack [];
kind_tracked pushBack "Armored";

_v pushBack "ArmoredAll";
_t pushBack "Tanks T0-Max";
_p pushBack units_tracked;
_f pushBack CTI_HEAVY;
_m pushBack 500;
_c pushBack "Armored";
_s pushBack [];
kind_tracked pushBack "ArmoredAll";

//***************************************************************************************************************************************
//														AntiAir																			*
//***************************************************************************************************************************************
//AntiAir setup for the AI groups
/*
units_antiair = [];
antiair_to_add = [];
antiair_auto = [];

_matrix_full = [_side, CTI_UPGRADE_LIGHT] call CTI_CO_FNC_GetTechmatrix;
_matrix_nation = [_side, CTI_UPGRADE_LIGHT, CTI_GER_ID, CTI_IFA_ID] call CTI_CO_FNC_GetTechmatrix;
_matrix_cnt = [1, _matrix_full, _matrix_nation] call CTI_CO_FNC_CheckCountUp;
if(_matrix_cnt >= 0) then {_level = _matrix_cnt; _matrix_cnt = _matrix_cnt + 1;};
if(CTI_ECONOMY_LEVEL_WHEELED >= _level) then {
	antiair_to_add = [[format["%1LIB_Kfz1_MG42", _sid], 1, 60]];

	units_antiair append antiair_to_add;
	antiair_auto append antiair_to_add;
};

_v pushBack format["AntiAirT%1T", _level];
_t pushBack "FlakPanzerIV";
_p pushBack antiair_to_add;
_f pushBack CTI_AIR;
_m pushBack 1000;
_c pushBack "AntiAir";
_s pushBack [];
kind_tracked pushBack format["AntiAirT%1", _level];

_v pushBack "AntiAir";
_t pushBack "AntiAir (Auto)";
_p pushBack antiair_auto;
_f pushBack CTI_AIR;
_m pushBack 1000;
_c pushBack "AntiAir";
_s pushBack [];
kind_wheeled pushBack "AntiAir";

_v pushBack "AntiAirAll";
_t pushBack "AntiAir T0-Max";
_p pushBack units_antiair;
_f pushBack CTI_AIR;
_m pushBack 1000;
_c pushBack "AntiAir";
_s pushBack [];
kind_wheeled pushBack "AntiAirAll";
*/
//***************************************************************************************************************************************
//														Air																				*
//***************************************************************************************************************************************
//Air setup for the AI groups
/*
units_air = [];
air_to_add = [];
air_auto = [];
kind_air = [];
_matrix_cnt = [0, _matrix_full, _matrix_nation] call CTI_CO_FNC_CheckCountUp;
if(_matrix_cnt >= 0) then {_level = _matrix_cnt; _matrix_cnt = _matrix_cnt + 1;};
if(CTI_ECONOMY_LEVEL_AIR >= _level) then {
	air_to_add = [[format["%1LIB_FW190F8", _sid], 1, 50]];
	if(CTI_CAMO_ACTIVATION == 1 || CTI_CAMO_ACTIVATION == 3) then {		//Winter camo active
		air_to_add = [[format["%1LIB_FW190F8_w", _sid], 1, 50]];
	};
	if(CTI_CAMO_ACTIVATION == 2 || CTI_CAMO_ACTIVATION == 3) then {		//Desert camo activea
		air_to_add = [[format["%1LIB_DAK_FW190F8", _sid], 1, 50]];
	};
	units_air append air_to_add;
	if(CTI_FACTORY_LEVEL_PRESET >= _level) then {air_auto append air_to_add;};
};

_v pushBack format["AirT%1", _level];
_t pushBack "FW 190 F8";
_p pushBack air_to_add;
_f pushBack CTI_AIR;
_m pushBack 1000;
_c pushBack "Air";
_s pushBack [];
kind_air pushBack format["AirT%1", _level];

_v pushBack "Air";
_t pushBack "Air (Auto)";
_p pushBack air_auto;
_f pushBack CTI_AIR;
_m pushBack 1000;
_c pushBack "Air";
_s pushBack [];
kind_air pushBack "Air";

_v pushBack "AirAll";
_t pushBack "Air  T0-Max";
_p pushBack units_air;
_f pushBack CTI_AIR;
_m pushBack 1000;
_c pushBack "Air";
_s pushBack [];
kind_air pushBack "AirAll";
*/

if (CTI_Log_Level >= CTI_Log_Debug) then {["VIOC_DEBUG", "FILE: common\config\squads\squad_SOV_NF.sqf", format["generated squads: [%1] ", count _v]] call CTI_CO_FNC_Log};

//--- Those are used by the commander to determine the kind of unit an AI team has
if(count kind_infantry > 0) then {
	if (isNil {missionNamespace getVariable format ["CTI_SQUADS_%1_KIND_INFANTRY", _side]}) then {
		missionNamespace setVariable [format["CTI_SQUADS_%1_KIND_INFANTRY", _side], kind_infantry];
	} else {
		{
			kind_infantry pushBackUnique _x;
		} forEach (missionNamespace getVariable format ["CTI_SQUADS_%1_KIND_INFANTRY", _side]);
		missionNamespace setVariable [format["CTI_SQUADS_%1_KIND_INFANTRY", _side], kind_infantry];
	};
};
/*if(count kind_wheeled > 0) then {
	if (isNil {missionNamespace getVariable format ["CTI_SQUADS_%1_KIND_LIGHT", _side]}) then {
		missionNamespace setVariable [format["CTI_SQUADS_%1_KIND_LIGHT", _side], kind_wheeled];
	} else {
		{
			kind_wheeled pushBackUnique _x;
		} forEach (missionNamespace getVariable format ["CTI_SQUADS_%1_KIND_LIGHT", _side]);
		missionNamespace setVariable [format["CTI_SQUADS_%1_KIND_LIGHT", _side], kind_wheeled];
	};
};*/
if(count kind_tracked > 0) then {
	if (isNil {missionNamespace getVariable format ["CTI_SQUADS_%1_KIND_HEAVY", _side]}) then {
		missionNamespace setVariable [format["CTI_SQUADS_%1_KIND_HEAVY", _side], kind_tracked];
	} else {
		{
			kind_tracked pushBackUnique _x;
		} forEach (missionNamespace getVariable format ["CTI_SQUADS_%1_KIND_HEAVY", _side]);
		missionNamespace setVariable [format["CTI_SQUADS_%1_KIND_HEAVY", _side], kind_tracked];
	};
};
/*if(count kind_air > 0) then {
	if (isNil {missionNamespace getVariable format ["CTI_SQUADS_%1_KIND_AIR", _side]}) then {
		missionNamespace setVariable [format["CTI_SQUADS_%1_KIND_AIR", _side], kind_air];
	} else {
		{
			kind_air pushBackUnique _x;
		} forEach (missionNamespace getVariable format ["CTI_SQUADS_%1_KIND_AIR", _side]);
		missionNamespace setVariable [format["CTI_SQUADS_%1_KIND_AIR", _side], kind_air];
	};
};*/

[_side, _v, _t, _p, _f, _m, _c, _s] call compile preprocessFileLineNumbers "Common\Config\Squads\Squads_Set.sqf";
