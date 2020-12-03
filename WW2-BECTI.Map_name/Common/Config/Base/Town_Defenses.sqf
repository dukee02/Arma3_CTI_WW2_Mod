_side = _this;
_sid = "";

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

//Defense Guns for Towns
_classes_town = [];
_categories_town = [];

if(CTI_GER_SIDE == (_side) call CTI_CO_FNC_GetSideID) then {
	//_classes_town pushBack 		format["%1LIB_GER_SearchLight", _sid];
	//_categories_town pushBack 	"View";
		
	_classes_town pushBack 		format["%1LIB_MG34_Lafette_Deployed", _sid];
	_categories_town pushBack 	"MG";
		
	//_classes_town pushBack 		format["%1LIB_MG34_Lafette_low_Deployed", _sid];
	//_categories_town pushBack 	"Defense";
		
	_classes_town pushBack 		format["%1LIB_GrWr34", _sid];
	_categories_town pushBack 	"Mortar";
		
	_classes_town pushBack 		format["%1LIB_GrWr34_g", _sid];
	_categories_town pushBack 	"Mortar";
	
	//class 	csa38_GrW34;
	//class 	CSA38_MG34t;
	//class 	CSA38_MG34t4;
	//class 	CSA38_MG34t3;
	//class 	CSA38_MG34t2;
};
if(CTI_SOV_SIDE == (_side) call CTI_CO_FNC_GetSideID) then {
	if(CTI_CAMO_ACTIVATION == 1 || CTI_CAMO_ACTIVATION == 3) then {		//Winter camo active
	};
	if(CTI_CAMO_ACTIVATION == 2 || CTI_CAMO_ACTIVATION == 3) then {		//Desert camo active
	};
	_classes_town pushBack 		format["%1LIB_SU_SearchLight", _sid];
	_categories_town pushBack 	"View";
	
	_classes_town pushBack 		format["%1IFA3_DSHkM_Mini_TriPod", _sid];
	_categories_town pushBack 	"MG";
	
	_classes_town pushBack 		format["%1LIB_BM37", _sid];
	_categories_town pushBack 	"Mortar";
};
if(CTI_US_SIDE == (_side) call CTI_CO_FNC_GetSideID) then {
	
	_classes_town pushBack 		format["%1LIB_M1919_M2", _sid];
	_categories_town pushBack 	"MG";
	
	_classes_town pushBack 		format["%1LIB_M2_60", _sid];
	_categories_town pushBack 	"Mortar";
	
	if(CTI_IFA3LIB_ADDON > 0) then {
		_classes_town pushBack 		format["%1ifa3_M2StaticMG_base", _sid];
		_categories_town pushBack 	"MG";
	};
	
};
if(CTI_UK_SIDE == (_side) call CTI_CO_FNC_GetSideID) then {
	
	if(CTI_IFA3_NEW == 0) then {
		_classes_town pushBack 		format["%1LIB_M1919_M2", _sid];
		_categories_town pushBack 	"MG";
	} else {
		_classes_town pushBack 		format["%1LIB_Vickers_MMG", _sid];
		_categories_town pushBack 	"MG";
	};
	
	_classes_town pushBack 		format["%1LIB_M2_60", _sid];
	_categories_town pushBack 	"Mortar";
	
	if(CTI_IFA3LIB_ADDON > 0) then {
		_classes_town pushBack 		format["%1ifa3_M2StaticMG_base", _sid];
		_categories_town pushBack 	"MG";
	};
	
};

//******************************BASE GUN DEFENSE 1******************************
if(CTI_GER_SIDE == (_side) call CTI_CO_FNC_GetSideID) then {
	if(CTI_CAMO_ACTIVATION == 1 || CTI_CAMO_ACTIVATION == 3) then {		//Winter camo active
		_classes_town pushBack 		format["%1LIB_FlaK_30_w", _sid];
		_categories_town pushBack 	"AA";
		
		//class 	csa38_pak35_W;
	};
	//if(CTI_CAMO_ACTIVATION == 2 || CTI_CAMO_ACTIVATION == 3) then {		//Desert camo active
		//class 	csa38_pak35_DE;
	//};
	_classes_town pushBack 		format["%1LIB_FlaK_30", _sid];
	_categories_town pushBack 	"AA";
	
	_classes_town pushBack 		format["%1Ifa3_p27G", _sid];
	_categories_town pushBack 	"Artillery";
	
	_classes_town pushBack 		format["%1LIB_leFH18", _sid];
	_categories_town pushBack 	"Artillery";
	
	_classes_town pushBack 		format["%1LIB_leFH18_AT", _sid];
	_categories_town pushBack 	"AT";
	
	//class 	csa38_pak35;
};
if(CTI_SOV_SIDE == (_side) call CTI_CO_FNC_GetSideID) then {
	_classes_town pushBack 		format["%1LIB_Maxim_M30_base", _sid];
	_categories_town pushBack 	"MG";
	
	_classes_town pushBack 		format["%1LIB_Maxim_M30_Trench", _sid];
	_categories_town pushBack 	"MG";
	
	_classes_town pushBack 		format["%1Ifa3_p27", _sid];
	_categories_town pushBack 	"Artillery";
	
	_classes_town pushBack 		format["%1LIB_61k", _sid];
	_categories_town pushBack 	"AA";	
};
if(CTI_US_SIDE == (_side) call CTI_CO_FNC_GetSideID) then {
	
	_classes_town pushBack 		format["%1Ifa3_p27", _sid];
	_categories_town pushBack 	"Artillery";
	
	_classes_town pushBack 		format["%1LIB_61k", _sid];
	_categories_town pushBack 	"AA";
};
if(CTI_UK_SIDE == (_side) call CTI_CO_FNC_GetSideID) then {
	
	_classes_town pushBack 		format["%1Ifa3_p27", _sid];
	_categories_town pushBack 	"Artillery";
	
	_classes_town pushBack 		format["%1LIB_61k", _sid];
	_categories_town pushBack 	"AA";
};

//******************************BASE GUN DEFENSE 2******************************
if(CTI_GER_SIDE == (_side) call CTI_CO_FNC_GetSideID) then {
	if(CTI_CAMO_ACTIVATION == 1 || CTI_CAMO_ACTIVATION == 3) then {		//Winter camo active
		_classes_town pushBack 		format["%1LIB_FlaK_36_w", _sid];
		_categories_town pushBack 	"Artillery";
		
		_classes_town pushBack 		format["%1LIB_FlaK_36_AA_w", _sid];
		_categories_town pushBack 	"AA";
		
		_classes_town pushBack 		format["%1LIB_FlaK_36_ARTY_w", _sid];
		_categories_town pushBack 	"Artillery";
		
		_classes_town pushBack 		format["%1LIB_FlaK_38_w", _sid];
		_categories_town pushBack 	"AA";
	};
	if(CTI_CAMO_ACTIVATION == 2 || CTI_CAMO_ACTIVATION == 3) then {		//Desert camo active
		_classes_town pushBack 		format["%1LIB_DAK_FlaK_36", _sid];
		_categories_town pushBack 	"Artillery";
		
		_classes_town pushBack 		format["%1LIB_DAK_FlaK_36_AA", _sid];
		_categories_town pushBack 	"AA";
		
		_classes_town pushBack 		format["%1LIB_DAK_FlaK_36_ARTY", _sid];
		_categories_town pushBack 	"Artillery";
	};
	_classes_town pushBack 		format["%1LIB_MG42_Lafette_Deployed", _sid];
	_categories_town pushBack 	"MG";
	
	_classes_town pushBack 		format["%1LIB_MG42_Lafette_low_Deployed", _sid];
	_categories_town pushBack 	"MG";
	
	_classes_town pushBack 		format["%1LIB_FlaK_36", _sid];
	_categories_town pushBack 	"Artillery";
	
	_classes_town pushBack 		format["%1LIB_FlaK_36_AA", _sid];
	_categories_town pushBack 	"AA";
	
	_classes_town pushBack 		format["%1LIB_FlaK_36_ARTY", _sid];
	_categories_town pushBack 	"Artillery";
	
	_classes_town pushBack 		format["%1LIB_FlaK_38", _sid];
	_categories_town pushBack 	"AA";
	
	_classes_town pushBack 		format["%1IFA3_Pak38", _sid];
	_categories_town pushBack 	"AT";
	
	//class 	fow_w_mg42_deployed_high_ger_heer;
	//class 	fow_w_mg42_deployed_ger_heer;
	//class 	fow_w_mg42_deployed_s_ger_heer;
	//class 	fow_w_mg42_deployed_middle_ger_heer;
	//class 	fow_w_flak36_camo_ger_heer;
	//class 	fow_w_flak36_gray_ger_heer;
	//class 	fow_w_flak36_green_ger_heer;
	//class 	fow_w_flak36_tan_ger_heer;
};
if(CTI_SOV_SIDE == (_side) call CTI_CO_FNC_GetSideID) then {
	_classes_town pushBack 		format["%1IFA3_53K", _sid];
	_categories_town pushBack 	"AT";
};
if(CTI_US_SIDE == (_side) call CTI_CO_FNC_GetSideID) then {
	if(CTI_IFA3_NEW == 0) then {
		_classes_town pushBack 		format["%1IFA3_53K", _sid];
		_categories_town pushBack 	"AT";
	}else {
		_classes_town pushBack 		format["%1LIB_57mm_M1", _sid];
		_categories_town pushBack 	"AT";
	};
};
if(CTI_UK_SIDE == (_side) call CTI_CO_FNC_GetSideID) then {
	if(CTI_IFA3_NEW == 0) then {
		_classes_town pushBack 		format["%1IFA3_53K", _sid];
		_categories_town pushBack 	"AT";
	}else {
		_classes_town pushBack 		format["%1LIB_QF6_pdr", _sid];
		_categories_town pushBack 	"AT";
	};
};


//******************************BASE GUN DEFENSE 3******************************
if(CTI_GER_SIDE == (_side) call CTI_CO_FNC_GetSideID) then {
	if(CTI_CAMO_ACTIVATION == 1 || CTI_CAMO_ACTIVATION == 3) then {		//Winter camo active
		_classes_town pushBack 		format["%1LIB_Flakvierling_38_w", _sid];
		_categories_town pushBack 	"AA";
		
		_classes_town pushBack 		format["%1LIB_Pak40_w", _sid];
		_categories_town pushBack 	"AT";
	};
	if(CTI_CAMO_ACTIVATION == 2 || CTI_CAMO_ACTIVATION == 3) then {		//Desert camo active
		_classes_town pushBack 		format["%1LIB_DAK_Pak40", _sid];
		_categories_town pushBack 	"AT";
	};
	_classes_town pushBack 		format["%1LIB_Nebelwerfer41", _sid];
	_categories_town pushBack 	"Artillery";
		
	_classes_town pushBack 		format["%1LIB_Nebelwerfer41_Camo", _sid];
	_categories_town pushBack 	"Artillery";
	
	_classes_town pushBack 		format["%1LIB_Nebelwerfer41_Gelbbraun", _sid];
	_categories_town pushBack 	"Artillery";
	
	_classes_town pushBack 		format["%1LIB_Flakvierling_38", _sid];
	_categories_town pushBack 	"AA";
	
	_classes_town pushBack 		format["%1LIB_Pak40", _sid];
	_categories_town pushBack 	"AT";
};
if(CTI_SOV_SIDE == (_side) call CTI_CO_FNC_GetSideID) then {
	if(CTI_CAMO_ACTIVATION == 1 || CTI_CAMO_ACTIVATION == 3) then {		//Winter camo active
		_classes_town pushBack 		format["%1LIB_Zis3_w", _sid];
		_categories_town pushBack 	"Artillery";
	};
	_classes_town pushBack 		format["%1LIB_Zis3", _sid];
	_categories_town pushBack 	"Artillery";
};
if(CTI_US_SIDE == (_side) call CTI_CO_FNC_GetSideID) then {
	_classes_town pushBack 		format["%1LIB_Zis3", _sid];
	_categories_town pushBack 	"Artillery";
	
	_classes_town pushBack 		format["%1LIB_M45_Quadmount", _sid];
	_categories_town pushBack 	"AA";
};
if(CTI_UK_SIDE == (_side) call CTI_CO_FNC_GetSideID) then {
	_classes_town pushBack 		format["%1LIB_Zis3", _sid];
	_categories_town pushBack 	"Artillery";
	
	_classes_town pushBack 		format["%1LIB_M45_Quadmount_UK", _sid];
	_categories_town pushBack 	"AA";
};


//--- Defenses management for towns.
if (isServer) then {[_side, _classes_town, _categories_town] Call Compile preprocessFileLineNumbers "Common\Config\Config_Defenses_Towns.sqf"};


