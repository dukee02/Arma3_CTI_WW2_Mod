private "_faction", "_i", "_p", "_side", "_u", "_tech_level_no_upgrade_inv", "_tech_level";

_side = _this;

if(_side == west) then {
	_faction = "West";
} 
else {
	if(_side == east) then {
		_faction = "East";
	} 
	else {
		_faction = "";
	};
};

_tech_level_no_upgrade_inv = 1;
_tech_level = 0;

if(CTI_NO_UPGRADE_MODE == 1) then {	
	_tech_level_no_upgrade_inv = 0;
};

_i = [];
_u = [];
_p = [];

//(CTI_ECONOMY_PRIZE_WEAPONS*_level_start)
//100*1 -> $100 weapon
//((rnds*caliber)/1000)*((CTI_ECONOMY_PRIZE_WEAPONS*_level_start)/100)
//((30*545)/1000)*(100*1/100) = $16,35 -> ammo
/*
_i pushBack "";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round (CTI_ECONOMY_PRIZE_WEAPONS*(((_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/100));

_i pushBack "";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round ((rnds*caliber)/100000)*((CTI_ECONOMY_PRIZE_WEAPONS*(_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/10000);
*/

_tech_level=0;


//---------------------------Grenades and mines-----------------------------------------
_i pushBack "NORTH_molotov_sokaisupullo";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round 20*((CTI_ECONOMY_PRIZE_WEAPONS*(_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/10000);

_i pushBack "NORTH_molotov";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round 20*((CTI_ECONOMY_PRIZE_WEAPONS*(_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/10000);

_i pushBack "NORTH_F1Grenade_mag";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round 50*((CTI_ECONOMY_PRIZE_WEAPONS*(_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/10000);

_i pushBack "NORTH_RG42Grenade_mag";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round 50*((CTI_ECONOMY_PRIZE_WEAPONS*(_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/10000);


_i pushBack "NORTH_KasapanosImpr3kg_mag";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round 50*((CTI_ECONOMY_PRIZE_WEAPONS*(_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/10000);

_i pushBack "NORTH_KasapanosImpr6kg_mag";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round 50*((CTI_ECONOMY_PRIZE_WEAPONS*(_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/10000);

_i pushBack "NORTH_M32MortarNade_mag";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round 25*((CTI_ECONOMY_PRIZE_WEAPONS*(_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/10000);

_i pushBack "NORTH_Kasapanos2kg_mag";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round 50*((CTI_ECONOMY_PRIZE_WEAPONS*(_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/10000);

_i pushBack "NORTH_Kasapanos3kg_mag";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round 100*((CTI_ECONOMY_PRIZE_WEAPONS*(_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/10000);

_i pushBack "NORTH_Kasapanos4kg_mag";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round 150*((CTI_ECONOMY_PRIZE_WEAPONS*(_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/10000);

//----------------------Flares and Smokes------------------------------
_tech_level = 0;
_i pushBack "NORTH_RGD33Grenade_mag";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round 50*((CTI_ECONOMY_PRIZE_WEAPONS*(_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/10000);


_i pushBack "NORTH_valopistoolim94";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round (CTI_ECONOMY_PRIZE_WEAPONS*(((_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/100));
_i pushBack "NORTH_1Rnd_flare_white_mag";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round 5*((CTI_ECONOMY_PRIZE_WEAPONS*(_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/10000);
_i pushBack "NORTH_1Rnd_flare_red_mag";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round 5*((CTI_ECONOMY_PRIZE_WEAPONS*(_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/10000);
_i pushBack "NORTH_1Rnd_flare_green_mag";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round 5*((CTI_ECONOMY_PRIZE_WEAPONS*(_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/10000);

//-------------Pistols----------------------------------------------
_tech_level = 0;
_i pushBack "NORTH_m1895";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round (CTI_ECONOMY_PRIZE_WEAPONS*(((_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/100));
_i pushBack "NORTH_6Rnd_m1895_mag";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round ((6*762*53)/100000)*((CTI_ECONOMY_PRIZE_WEAPONS*(_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/10000);

_i pushBack "NORTH_TT33";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round (CTI_ECONOMY_PRIZE_WEAPONS*(((_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/100));
_i pushBack "NORTH_8Rnd_tt33_mag";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round ((8*900*19)/100000)*((CTI_ECONOMY_PRIZE_WEAPONS*(_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/10000);

//-------------Rifles----------------------------------------------
_tech_level = 0;
_i pushBack "NORTH_sov_M9130";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round (CTI_ECONOMY_PRIZE_WEAPONS*(((_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/100));
_i pushBack "NORTH_5Rnd_m39_mag";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round ((5*762*53)/100000)*((CTI_ECONOMY_PRIZE_WEAPONS*(_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/10000);
_i pushBack "NORTH_5Rnd_m39_tracer_mag";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round ((5*762*53)/100000)*((CTI_ECONOMY_PRIZE_WEAPONS*(_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/10000);

_tech_level = 1;
_i pushBack "NORTH_sov_m9130_PU";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round (CTI_ECONOMY_PRIZE_WEAPONS*(((_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/100));
_i pushBack "NORTH_AVT40";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round (CTI_ECONOMY_PRIZE_WEAPONS*(((_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/100));
_i pushBack "NORTH_SVT38";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round (CTI_ECONOMY_PRIZE_WEAPONS*(((_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/100));
_i pushBack "NORTH_SVT40";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round (CTI_ECONOMY_PRIZE_WEAPONS*(((_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/100));
_i pushBack "NORTH_10rnd_SVT_mag";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round ((10*762*53)/100000)*((CTI_ECONOMY_PRIZE_WEAPONS*(_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/10000);

_tech_level = 2;
_i pushBack "NORTH_sov_m9130_PEM";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round (CTI_ECONOMY_PRIZE_WEAPONS*(((_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/100));
_i pushBack "NORTH_SVT40PU";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round (CTI_ECONOMY_PRIZE_WEAPONS*(((_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/100));

//-------------------------------------Lmg------------------------------------------------------
_tech_level = 1;
_i pushBack "NORTH_PPD34";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round (CTI_ECONOMY_PRIZE_WEAPONS*(((_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/100));
_i pushBack "NORTH_34rnd_PPD_mag";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round ((34*762*25)/100000)*((CTI_ECONOMY_PRIZE_WEAPONS*(_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/10000);

_i pushBack "NORTH_PPD34_38";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round (CTI_ECONOMY_PRIZE_WEAPONS*(((_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/100));
_i pushBack "NORTH_71rnd_PPD34_38_mag";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round ((71*762*25)/100000)*((CTI_ECONOMY_PRIZE_WEAPONS*(_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/10000);

_tech_level = 2;
_i pushBack "NORTH_PPD40";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round (CTI_ECONOMY_PRIZE_WEAPONS*(((_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/100));
_i pushBack "NORTH_71rnd_PPD40_mag";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round ((71*762*25)/100000)*((CTI_ECONOMY_PRIZE_WEAPONS*(_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/10000);

_i pushBack "NORTH_ppsh41";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round (CTI_ECONOMY_PRIZE_WEAPONS*(((_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/100));
_i pushBack "NORTH_35rnd_ppsh41_mag";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round ((35*762*25)/100000)*((CTI_ECONOMY_PRIZE_WEAPONS*(_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/10000);
_i pushBack "NORTH_71rnd_ppsh41_mag";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round ((71*762*25)/100000)*((CTI_ECONOMY_PRIZE_WEAPONS*(_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/10000);

//-------------------------------------Hmg------------------------------------------------------
_tech_level = 1;
_i pushBack "NORTH_dp27";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round (CTI_ECONOMY_PRIZE_WEAPONS*(((_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/100));
_i pushBack "NORTH_47rnd_dp27_mag";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round ((71*762*54)/100000)*((CTI_ECONOMY_PRIZE_WEAPONS*(_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/10000);
_i pushBack "NORTH_47rnd_dp27_mag_Tracer";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round ((71*762*54)/100000)*((CTI_ECONOMY_PRIZE_WEAPONS*(_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/10000);



//------------------------------------Uniforms------------------------------------
_tech_level = 0;
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_Staff_Sergeant";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_Sergeant";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_Sergeant_Major";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_Cpt";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_Lt";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_2ndLt";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_1stLt";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_Private";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_Private_2";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_Private_3";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_Private_4";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_Private_5";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_AIR_Staff_Sergeant";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_AIR_Sergeant";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_AIR_Sergeant_Major";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_AIR_Cpt";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_AIR_Lt";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_AIR_2ndLt";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_AIR_1stLt";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_AIR_Private";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_AIR_Private_2";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_TNK_Staff_Sergeant";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_TNK_Sergeant";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_TNK_Sergeant_Major";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_TNK_Cpt";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_TNK_Lt";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_TNK_2ndLt";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_TNK_1stLt";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_TNK_Private";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_TNK_Private_2";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_ART_Staff_Sergeant";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_ART_Sergeant";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_ART_Sergeant_Major";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_ART_Cpt";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_ART_Lt";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_ART_2ndLt";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_ART_1stLt";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_ART_Private";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_ART_Private_2";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_CAV_Staff_Sergeant";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_CAV_Sergeant";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_CAV_Sergeant_Major";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_CAV_Cpt";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_CAV_Lt";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_CAV_2ndLt";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_CAV_1stLt";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_CAV_Private";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_CAV_Private_2";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_BRD_Staff_Sergeant";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_BRD_Sergeant";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_BRD_Sergeant_Major";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_BRD_Cpt";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_BRD_Lt";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_BRD_2ndLt";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_BRD_1stLt";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_BRD_Private";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_BRD_Private_2";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_NKVD_Staff_Sergeant";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_NKVD_Sergeant";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_NKVD_Sergeant_Major";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_NKVD_Cpt";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_NKVD_Lt";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_NKVD_2ndLt";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_NKVD_1stLt";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_NKVD_Private";
_i pushBack "U_NORTH_SOV_Obr35_W_Greatcoat_NKVD_Private_2";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_AIR_Corporal";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_AIR_Sergeant";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_AIR_Sergeant_Major";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_AIR_Staff_Sergeant";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_AIR_Cpt";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_AIR_Lt";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_AIR_2ndLt";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_AIR_1stLt";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_AIR_Private";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_AIR_Private_2";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_AIR_Private_1CL";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_TNK_Corporal";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_TNK_Sergeant";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_TNK_Sergeant_Major";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_TNK_Staff_Sergeant";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_TNK_Cpt";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_TNK_Lt";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_TNK_2ndLt";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_TNK_1stLt";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_TNK_Private";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_TNK_Private_2";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_TNK_Private_1CL";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_ART_Corporal";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_ART_Sergeant";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_ART_Sergeant_Major";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_ART_Staff_Sergeant";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_ART_Cpt";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_ART_Lt";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_ART_2ndLt";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_ART_1stLt";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_ART_Private";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_ART_Private_2";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_ART_Private_1CL";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_CAV_Corporal";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_CAV_Sergeant";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_CAV_Sergeant_Major";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_CAV_Staff_Sergeant";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_CAV_Cpt";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_CAV_Lt";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_CAV_2ndLt";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_CAV_1stLt";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_CAV_Private";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_CAV_Private_2";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_CAV_Private_1CL";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_Corporal";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_Sergeant";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_Sergeant_Major";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_Staff_Sergeant";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_Cpt";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_Lt";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_2ndLt";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_1stLt";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_Private";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_Private_2";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_Private_3";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_Private_4";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_Private_5";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_Private_1CL";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_BRD_Corporal";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_BRD_Sergeant";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_BRD_Sergeant_Major";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_BRD_Staff_Sergeant";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_BRD_Cpt";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_BRD_Lt";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_BRD_2ndLt";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_BRD_1stLt";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_BRD_Private";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_BRD_Private_2";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_BRD_Private_1CL";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_NKVD_Corporal";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_NKVD_Sergeant";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_NKVD_Sergeant_Major";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_NKVD_Staff_Sergeant";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_NKVD_Cpt";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_NKVD_Lt";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_NKVD_2ndLt";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_NKVD_1stLt";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_NKVD_Private";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_NKVD_Private_2";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_NKVD_Private_1CL";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_SBD_Corporal";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_SBD_Sergeant";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_SBD_Sergeant_Major";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_SBD_Staff_Sergeant";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_SBD_Cpt";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_SBD_Lt";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_SBD_2ndLt";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_SBD_1stLt";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_SBD_Private";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_SBD_Private_2";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_SBD_Private_3";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_SBD_Private_4";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_SBD_Private_5";
_i pushBack "U_NORTH_SOV_Obr41_W_Greatcoat_SBD_Private_1CL";
//other
_i pushBack "U_NORTH_SOV_Obr31_W_Polushubuk";
_i pushBack "U_NORTH_SOV_Obr31_W_Polushubuk_2";
_i pushBack "U_NORTH_SOV_Obr31_W_Polushubuk_3";
_i pushBack "U_NORTH_SOV_Obr32_W_Telogreika";
_i pushBack "U_NORTH_SOV_Obr32_W_Telogreika_2";
_i pushBack "U_NORTH_SOV_Obr32_W_Telogreika_3";
_i pushBack "U_NORTH_SOV_Obr32_W_Telogreika_4";
_i pushBack "U_NORTH_SOV_Obr32_W_Telogreika_5";
_i pushBack "U_NORTH_SOV_Obr32_W_Telogreika_6";
//Summer	grey / _2 = brown
_i pushBack "U_NORTH_SOV_Obr35_Uniform_TNK_Corporal";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_TNK_Corporal_2";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_TNK_Sergeant";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_TNK_Sergeant_2";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_TNK_Sergeant_Major";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_TNK_Sergeant_Major_2";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_TNK_Staff_Sergeant";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_TNK_Staff_Sergeant_2";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_TNK_Cpt_2";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_TNK_Cpt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_TNK_Lt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_TNK_Lt_2";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_TNK_2ndLt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_TNK_2ndLt_2";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_TNK_1stLt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_TNK_1stLt_2";
//brown
_i pushBack "U_NORTH_SOV_Obr35_Uniform_TNK_JrPlt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_TNK_Plt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_TNK_SrPlt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_TNK_Private";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_TNK_Private_2";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_TNK_Private_3";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_TNK_Private_4";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_TNK_Private_1CL";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_TNK_Private_1CL_2";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_ART_Corporal";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_ART_Sergeant";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_ART_Sergeant_Major";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_ART_Staff_Sergeant";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_ART_Cpt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_ART_Cpt_2";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_ART_Lt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_ART_Lt_2";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_ART_2ndLt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_ART_2ndLt_2";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_ART_1stLt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_ART_1stLt_2";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_ART_Private";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_ART_Private_2";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_ART_Private_1CL";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_CAV_Corporal";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_CAV_Corporal_2";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_CAV_Sergeant";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_CAV_Sergeant_2";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_CAV_Sergeant_Major";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_CAV_Sergeant_Major_2";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_CAV_Staff_Sergeant";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_CAV_Staff_Sergeant_2";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_CAV_Cpt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_CAV_Lt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_CAV_2ndLt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_CAV_1stLt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_CAV_JrPlt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_CAV_Plt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_CAV_SrPlt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_CAV_Private";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_CAV_Private_2";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_CAV_Private_3";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_CAV_Private_1CL";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_CAV_Private_1CL_2";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_Corporal";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_Sergeant";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_Sergeant_Major";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_Staff_Sergeant";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_Cpt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_Cpt_2";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_Lt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_Lt_2";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_2ndLt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_2ndLt_2";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_1stLt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_1stLt_2";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_JrPlt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_Plt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_SrPlt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_Private";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_Private_2";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_Private_3";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_Private_4";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_Private_5";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_Private_1CL";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_BRD_Corporal";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_BRD_Sergeant";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_BRD_Sergeant_Major";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_BRD_Staff_Sergeant";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_BRD_Cpt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_BRD_Lt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_BRD_2ndLt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_BRD_1stLt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_BRD_JrPlt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_BRD_Plt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_BRD_SrPlt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_BRD_Private";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_BRD_Private_2";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_BRD_Private_1CL";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_NKVD_Corporal";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_NKVD_Sergeant";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_NKVD_Sergeant_Major";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_NKVD_Staff_Sergeant";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_NKVD_Cpt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_NKVD_Lt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_NKVD_2ndLt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_NKVD_1stLt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_NKVD_JrPlt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_NKVD_Plt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_NKVD_SrPlt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_NKVD_Private";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_NKVD_Private_2";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_NKVD_Private_1CL";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_Penal";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_Penal_2";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_Penal_3";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_Penal_4";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_Penal_5";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_SBD_Corporal";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_SBD_Sergeant";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_SBD_Sergeant_Major";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_SBD_Staff_Sergeant";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_SBD_Cpt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_SBD_Lt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_SBD_2ndLt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_SBD_1stLt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_SBD_Private";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_SBD_Private_2";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_SBD_Private_3";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_SBD_Private_4";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_SBD_Private_5";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_SBD_Private_1CL";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_AIR_Corporal";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_AIR_Corporal_2";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_AIR_Sergeant";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_AIR_Sergeant_2";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_AIR_Sergeant_Major";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_AIR_Sergeant_Major_2";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_AIR_Staff_Sergeant";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_AIR_Staff_Sergeant_2";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_AIR_Cpt_2";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_AIR_Cpt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_AIR_Lt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_AIR_Lt_2";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_AIR_2ndLt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_AIR_2ndLt_2";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_AIR_1stLt";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_AIR_1stLt_2";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_AIR_Private";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_AIR_Private_2";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_AIR_Private_1CL";
_i pushBack "U_NORTH_SOV_Obr35_Uniform_AIR_Private_1CL_2";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_AIR_Corporal";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_AIR_Sergeant";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_AIR_Sergeant_Major";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_AIR_Staff_Sergeant";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_AIR_Cpt";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_AIR_Lt";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_AIR_2ndLt";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_AIR_1stLt";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_AIR_Private";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_AIR_Private_2";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_AIR_Private_1CL";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_ARM_Cpt";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_ARM_Lt";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_ARM_2ndLt";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_ARM_1stLt";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_ART_Corporal";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_ART_Sergeant";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_ART_Sergeant_Major";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_ART_Staff_Sergeant";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_ART_Cpt";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_ART_Lt";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_ART_2ndLt";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_ART_1stLt";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_ART_Private";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_ART_Private_2";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_ART_Private_1CL";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_CAV_Corporal";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_CAV_Corporal_2";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_CAV_Sergeant";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_CAV_Sergeant_2";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_CAV_Sergeant_Major";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_CAV_Sergeant_Major_2";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_CAV_Staff_Sergeant";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_CAV_Staff_Sergeant_2";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_CAV_Cpt";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_CAV_Lt";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_CAV_2ndLt";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_CAV_1stLt";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_CAV_Private";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_CAV_Private_2";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_CAV_Private_3";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_CAV_Private_1CL";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_CAV_Private_1CL_2";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_Corporal";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_Corporal_2";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_Sergeant";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_Sergeant_2";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_Sergeant_Major";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_Sergeant_Major_2";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_Staff_Sergeant";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_Staff_Sergeant_2";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_Cpt";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_Lt";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_2ndLt";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_1stLt";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_Private";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_Private_2";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_Private_3";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_Private_4";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_Private_5";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_Private_1CL";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_Private_1CL_2";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_NAV_Corporal";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_NAV_Corporal_2";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_NAV_Sergeant";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_NAV_Sergeant_2";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_NAV_Sergeant_Major";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_NAV_Sergeant_Major_2";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_NAV_Staff_Sergeant";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_NAV_Staff_Sergeant_2";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_NAV_Cpt";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_NAV_Lt";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_NAV_2ndLt";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_NAV_1stLt";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_NAV_Private";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_NAV_Private_2";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_NAV_Private_3";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_NAV_Private_1CL";
_i pushBack "U_NORTH_SOV_Obr43_Uniform_NAV_Private_1CL_2";
//set all other vars in a slope
_cntstart = count _i;
_cntend = count _p;
for [{ _cnt = 0 }, { _cnt < _cntstart-_cntend }, { _cnt = _cnt + 1 }] do { 
	_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
	_p pushBack round (CTI_ECONOMY_PRIZE_EQUIPMENT*(((_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/100));
};

_tech_level = 2;
//normal wintercoat white
_i pushBack "U_NORTH_SOV_Obr37_W_MKK";
_i pushBack "U_NORTH_SOV_Obr37_W_MKK_2";
_i pushBack "U_NORTH_SOV_Obr37_W_MKK_3";
_i pushBack "U_NORTH_SOV_Obr37_W_MKK_4";
_i pushBack "U_NORTH_SOV_Obr37_W_MKK_5";
_i pushBack "U_NORTH_SOV_Obr37_43_W_MKK";
_i pushBack "U_NORTH_SOV_Obr37_43_W_MKK_2";
_i pushBack "U_NORTH_SOV_Obr37_43_W_MKK_3";
_i pushBack "U_NORTH_SOV_Obr37_43_W_MKK_4";
_i pushBack "U_NORTH_SOV_Obr37_43_W_MKK_5";
//camo
_i pushBack "U_NORTH_SOV_Obr37_MKK";
_i pushBack "U_NORTH_SOV_Obr37_MKK_2";
_i pushBack "U_NORTH_SOV_Obr37_MKK_3";
_i pushBack "U_NORTH_SOV_Obr37_MKK_Aut";
_i pushBack "U_NORTH_SOV_Obr37_MKK_Aut_2";
_i pushBack "U_NORTH_SOV_Obr37_MKK_Aut_3";
_i pushBack "U_NORTH_SOV_Obr37_MKK_Listopad";
_i pushBack "U_NORTH_SOV_Obr37_MKK_Listopad_Aut";
_i pushBack "U_NORTH_SOV_Obr37_43_MKK";
_i pushBack "U_NORTH_SOV_Obr37_43_MKK_2";
_i pushBack "U_NORTH_SOV_Obr37_43_MKK_3";
_i pushBack "U_NORTH_SOV_Obr37_43_MKK_Aut";
_i pushBack "U_NORTH_SOV_Obr37_43_MKK_Aut_2";
_i pushBack "U_NORTH_SOV_Obr37_43_MKK_Aut_3";
_i pushBack "U_NORTH_SOV_Obr37_43_MKK_Listopad";
_i pushBack "U_NORTH_SOV_Obr37_43_MKK_Listopad_Aut";//set all other vars in a slope
_cntstart = count _i;
_cntend = count _p;
for [{ _cnt = 0 }, { _cnt < _cntstart-_cntend }, { _cnt = _cnt + 1 }] do { 
	_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
	_p pushBack round (CTI_ECONOMY_PRIZE_EQUIPMENT*(((_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/100));
};

//-----------------------------------------Vests----------------------------------------------------
_tech_level = 0;
_i pushBack "V_NORTH_SOV_Belt";
_i pushBack "V_NORTH_SOV_Belt_Officer";
_i pushBack "V_NORTH_SOV_Belt_Officer_2";
_i pushBack "V_NORTH_SOV_Belt_Officer_3";
_i pushBack "V_NORTH_SOV_Belt_Officer_4";
_i pushBack "V_NORTH_SOV_Belt_Pistol";
_i pushBack "V_NORTH_SOV_Belt_Pistol_2";
_i pushBack "V_NORTH_SOV_Belt_Pistol_3";
_i pushBack "V_NORTH_SOV_Belt_Pistol_4";
_i pushBack "V_NORTH_SOV_Belt_Mosin";
_i pushBack "V_NORTH_SOV_Belt_Mosin_2";
_i pushBack "V_NORTH_SOV_Belt_Mosin_3";
_i pushBack "V_NORTH_SOV_Belt_Mosin_Imperial";
_i pushBack "V_NORTH_SOV_Belt_Mosin_Imperial_2";
_i pushBack "V_NORTH_SOV_Belt_Mosin_Imperial_3";
_i pushBack "V_NORTH_SOV_Belt_Mosin_Imperial_4";
_i pushBack "V_NORTH_SOV_Belt_SMG";
_i pushBack "V_NORTH_SOV_Belt_SMG_2";
_i pushBack "V_NORTH_SOV_Belt_SMG_3";
_i pushBack "V_NORTH_SOV_Belt_SMG_4";
//set all other vars in a slope
_cntstart = count _i;
_cntend = count _p;
for [{ _cnt = 0 }, { _cnt < _cntstart-_cntend }, { _cnt = _cnt + 1 }] do { 
	_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
	_p pushBack round (CTI_ECONOMY_PRIZE_EQUIPMENT*(((_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/100)*3);
};

//-------------------------------------------Backpacks----------------------------------------------------------
_tech_level = 0;
_i pushBack "NORTH_SOV_Gasmaskbag";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round (CTI_ECONOMY_PRIZE_EQUIPMENT*(((_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/100));
_i pushBack "NORTH_SOV_Gasmaskbag_Shinel";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round (CTI_ECONOMY_PRIZE_EQUIPMENT*(((_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/100));
_i pushBack "NORTH_SOV_M35bpk";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round (CTI_ECONOMY_PRIZE_EQUIPMENT*(((_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/100));
_i pushBack "NORTH_SOV_M38bpk";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round (CTI_ECONOMY_PRIZE_EQUIPMENT*(((_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/100));

_tech_level = 1;
_i pushBack "NORTH_SOV_Veshmeshok";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round (CTI_ECONOMY_PRIZE_EQUIPMENT*(((_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/100));
_i pushBack "NORTH_SOV_Veshmeshok_2";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round (CTI_ECONOMY_PRIZE_EQUIPMENT*(((_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/100));
_i pushBack "NORTH_SOV_Veshmeshok_3";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round (CTI_ECONOMY_PRIZE_EQUIPMENT*(((_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/100));
_i pushBack "NORTH_SOV_Veshmeshok_Gasmaskbag";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round (CTI_ECONOMY_PRIZE_EQUIPMENT*(((_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/100));
_i pushBack "NORTH_SOV_Veshmeshok_Gasmaskbag_2";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round (CTI_ECONOMY_PRIZE_EQUIPMENT*(((_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/100));
_i pushBack "NORTH_SOV_Veshmeshok_Gasmaskbag_3";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round (CTI_ECONOMY_PRIZE_EQUIPMENT*(((_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/100));
_i pushBack "NORTH_SOV_Veshmeshok_Gasmaskbag_Shinel";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round (CTI_ECONOMY_PRIZE_EQUIPMENT*(((_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/100));
_i pushBack "NORTH_SOV_Veshmeshok_Gasmaskbag_Shinel_2";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round (CTI_ECONOMY_PRIZE_EQUIPMENT*(((_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/100));
_i pushBack "NORTH_SOV_Veshmeshok_Gasmaskbag_Shinel_3";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round (CTI_ECONOMY_PRIZE_EQUIPMENT*(((_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/100));
_i pushBack "NORTH_SOV_Veshmeshok_Shinel";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round (CTI_ECONOMY_PRIZE_EQUIPMENT*(((_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/100));
_i pushBack "NORTH_SOV_Veshmeshok_Shinel_2";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round (CTI_ECONOMY_PRIZE_EQUIPMENT*(((_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/100));
_i pushBack "NORTH_SOV_Veshmeshok_Shinel_3";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round (CTI_ECONOMY_PRIZE_EQUIPMENT*(((_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/100));
_i pushBack "NORTH_SOV_Plash";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round (CTI_ECONOMY_PRIZE_EQUIPMENT*(((_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/100));
_i pushBack "NORTH_SOV_Shinel";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round (CTI_ECONOMY_PRIZE_EQUIPMENT*(((_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/100));

_tech_level = 0;
//Mortar
_i pushBack "NORTH_50krh38_Tripod_Bag";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round (CTI_ECONOMY_PRIZE_EQUIPMENT*(((_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/100));
_i pushBack "NORTH_50krh38_Gun_Bag";
_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
_p pushBack round (CTI_ECONOMY_PRIZE_EQUIPMENT*(((_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/100));


//--------------------------------------------Helms-------------------------------------------
_tech_level = 0;
//winter caps
_i pushBack "H_NORTH_SOV_Obr27_Budenovka_AIR_unfolded";
_i pushBack "H_NORTH_SOV_Obr27_Budenovka_AIR_unfolded_2";
_i pushBack "H_NORTH_SOV_Obr27_Budenovka_AIR";
_i pushBack "H_NORTH_SOV_Obr27_Budenovka_AIR_2";
_i pushBack "H_NORTH_SOV_Obr27_Budenovka_ART_unfolded";
_i pushBack "H_NORTH_SOV_Obr27_Budenovka_ART_unfolded_2";
_i pushBack "H_NORTH_SOV_Obr27_Budenovka_ART";
_i pushBack "H_NORTH_SOV_Obr27_Budenovka_ART_2";
_i pushBack "H_NORTH_SOV_Obr27_Budenovka_CAV_unfolded";
_i pushBack "H_NORTH_SOV_Obr27_Budenovka_CAV_unfolded_2";
_i pushBack "H_NORTH_SOV_Obr27_Budenovka_CAV";
_i pushBack "H_NORTH_SOV_Obr27_Budenovka_CAV_2";
_i pushBack "H_NORTH_SOV_Obr27_Budenovka_unfolded";
_i pushBack "H_NORTH_SOV_Obr27_Budenovka_unfolded_2";
_i pushBack "H_NORTH_SOV_Obr27_Budenovka";
_i pushBack "H_NORTH_SOV_Obr27_Budenovka_2";
_i pushBack "H_NORTH_SOV_Obr27_Budenovka_3";
_i pushBack "H_NORTH_SOV_Obr27_Budenovka_4";
_i pushBack "H_NORTH_SOV_Obr27_Budenovka_NKVD_unfolded";
_i pushBack "H_NORTH_SOV_Obr27_Budenovka_NKVD_unfolded_2";
_i pushBack "H_NORTH_SOV_Obr27_Budenovka_NKVD";
_i pushBack "H_NORTH_SOV_Obr27_Budenovka_NKVD_2";
_i pushBack "H_NORTH_SOV_Obr27_Budenovka_BRD_unfolded";
_i pushBack "H_NORTH_SOV_Obr27_Budenovka_BRD_unfolded_2";
_i pushBack "H_NORTH_SOV_Obr27_Budenovka_BRD";
_i pushBack "H_NORTH_SOV_Obr27_Budenovka_BRD_2";
_i pushBack "H_NORTH_SOV_Obr31_Finka";
_i pushBack "H_NORTH_SOV_Obr31_Finka_2";
_i pushBack "H_NORTH_SOV_Obr31_Finka_3";
_i pushBack "H_NORTH_SOV_Obr31_Finka_4";
_i pushBack "H_NORTH_SOV_Obr31_Finka_NKVD";
_i pushBack "H_NORTH_SOV_Obr31_Finka_NKVD_2";
_i pushBack "H_NORTH_SOV_Obr31_Finka_NKVD_3";
_i pushBack "H_NORTH_SOV_Obr31_Finka_NKVD_4";
_i pushBack "H_NORTH_SOV_Obr40_Ushanka_SBD";
_i pushBack "H_NORTH_SOV_Obr40_Ushanka_SBD_2";
_i pushBack "H_NORTH_SOV_Obr40_Ushanka_SBD_3";
_i pushBack "H_NORTH_SOV_Obr40_Ushanka_SBD_4";
_i pushBack "H_NORTH_SOV_Obr40_Ushanka_fancy";
_i pushBack "H_NORTH_SOV_Obr40_Ushanka";
_i pushBack "H_NORTH_SOV_Obr40_Ushanka_2";
_i pushBack "H_NORTH_SOV_Obr40_Ushanka_3";
_i pushBack "H_NORTH_SOV_Obr40_Ushanka_4";
_i pushBack "H_NORTH_SOV_Obr40_Ushanka_5";
_i pushBack "H_NORTH_SOV_Obr40_Ushanka_6";
_i pushBack "H_NORTH_SOV_Obr40_Ushanka_7";
//Summer hats
_i pushBack "H_NORTH_SOV_Obr35_Furazhka_Field_2";
_i pushBack "H_NORTH_SOV_Obr35_Furazhka_Field_3";
_i pushBack "H_NORTH_SOV_Obr35_Furazhka_Field_4";
_i pushBack "H_NORTH_SOV_Obr35_Furazhka_ARM";
_i pushBack "H_NORTH_SOV_Obr35_Furazhka_ARM_2";
_i pushBack "H_NORTH_SOV_Obr35_Furazhka_ART";
_i pushBack "H_NORTH_SOV_Obr35_Furazhka_ART_2";
_i pushBack "H_NORTH_SOV_Obr35_Furazhka_CAV";
_i pushBack "H_NORTH_SOV_Obr35_Furazhka_CAV_2";
_i pushBack "H_NORTH_SOV_Obr35_Furazhka_Field";
_i pushBack "H_NORTH_SOV_Obr35_Furazhka";
_i pushBack "H_NORTH_SOV_Obr35_Furazhka_2";
_i pushBack "H_NORTH_SOV_Obr35_Furazhka_3";
_i pushBack "H_NORTH_SOV_Obr35_Furazhka_4";
_i pushBack "H_NORTH_SOV_Obr35_Furazhka_NKVD";
_i pushBack "H_NORTH_SOV_Obr35_Furazhka_NKVD_2";
_i pushBack "H_NORTH_SOV_Obr35_Furazhka_BRD";
_i pushBack "H_NORTH_SOV_Obr35_Furazhka_BRD_2";
_i pushBack "H_NORTH_SOV_Obr35_Pilotka_SBD_Worn_1";
_i pushBack "H_NORTH_SOV_Obr35_Pilotka_SBD_Worn_2";
_i pushBack "H_NORTH_SOV_Obr35_Pilotka_SBD";
_i pushBack "H_NORTH_SOV_Obr35_Pilotka_SBD_2";
_i pushBack "H_NORTH_SOV_Obr35_Pilotka_SBD_3";
_i pushBack "H_NORTH_SOV_Obr35_Pilotka_SBD_4";
_i pushBack "H_NORTH_SOV_Obr35_Pilotka_Off_ARM";
_i pushBack "H_NORTH_SOV_Obr35_Pilotka_Off_ART";
_i pushBack "H_NORTH_SOV_Obr35_Pilotka_Off";
_i pushBack "H_NORTH_SOV_Obr35_Pilotka_Off_AIR";
_i pushBack "H_NORTH_SOV_Obr35_Pilotka";
_i pushBack "H_NORTH_SOV_Obr35_Pilotka_2";
_i pushBack "H_NORTH_SOV_Obr35_Pilotka_3";
_i pushBack "H_NORTH_SOV_Obr35_Pilotka_4";
_i pushBack "H_NORTH_SOV_Tankerhelmet";
_i pushBack "H_NORTH_SOV_Tankerhelmet_leather";
_i pushBack "H_NORTH_SOV_Tankerhelmet_open";
_i pushBack "H_NORTH_SOV_Tankerhelmet_leather_open";
//set all other vars in a slope
_cntstart = count _i;
_cntend = count _p;
for [{ _cnt = 0 }, { _cnt < _cntstart-_cntend }, { _cnt = _cnt + 1 }] do { 
	_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
	_p pushBack round (CTI_ECONOMY_PRIZE_EQUIPMENT*(((_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/100));
};

_tech_level = 1;
//winter helmets
_i pushBack "H_NORTH_SOV_SSh39_Helmet_Winter_1";
_i pushBack "H_NORTH_SOV_SSh39_Helmet_Winter_2";
_i pushBack "H_NORTH_SOV_SSh40_Helmet_Winter_1";
_i pushBack "H_NORTH_SOV_SSh40_Helmet_Winter_2";
//summer helmet
_i pushBack "H_NORTH_SOV_SSh36_Helmet_empty";
_i pushBack "H_NORTH_SOV_SSh36_Helmet";
_i pushBack "H_NORTH_SOV_SSh36_Helmet_2";
_i pushBack "H_NORTH_SOV_SSh36_Helmet_3";
_i pushBack "H_NORTH_SOV_SSh36_Helmet_smallstar";
_i pushBack "H_NORTH_SOV_SSh39_Helmet_Star";
_i pushBack "H_NORTH_SOV_SSh39_Helmet_Star_2";
_i pushBack "H_NORTH_SOV_SSh39_Helmet";
_i pushBack "H_NORTH_SOV_SSh39_Helmet_2";
_i pushBack "H_NORTH_SOV_SSh40_Helmet";
_i pushBack "H_NORTH_SOV_SSh40_Helmet_2";
_i pushBack "H_NORTH_SOV_SSh40_Helmet_3";
//set all other vars in a slope
_cntstart = count _i;
_cntend = count _p;
for [{ _cnt = 0 }, { _cnt < _cntstart-_cntend }, { _cnt = _cnt + 1 }] do { 
	_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
	_p pushBack round (CTI_ECONOMY_PRIZE_EQUIPMENT*(((_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/100));
};

_tech_level = 2;
//summer camo
_i pushBack "H_NORTH_SOV_SSh39_Helmet_Moss_1";
_i pushBack "H_NORTH_SOV_SSh39_Helmet_Moss_2";
_i pushBack "H_NORTH_SOV_SSh40_Helmet_Moss_1";
_i pushBack "H_NORTH_SOV_SSh40_Helmet_Moss_2";
//set all other vars in a slope
_cntstart = count _i;
_cntend = count _p;
for [{ _cnt = 0 }, { _cnt < _cntstart-_cntend }, { _cnt = _cnt + 1 }] do { 
	_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
	_p pushBack round (CTI_ECONOMY_PRIZE_EQUIPMENT*(((_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/100));
};

//-------------------------------------------Glasses------------------------------------------------
_tech_level = 0;
_i pushBack "G_NORTH_SOV_Balaclava";
_i pushBack "G_NORTH_SOV_Balaclava_2";
_i pushBack "G_NORTH_SOV_Balaclava_3";
_i pushBack "G_NORTH_SOV_Balaclava_4";
_i pushBack "G_NORTH_SOV_Glasses";
_i pushBack "G_NORTH_SOV_Scarf";
_i pushBack "G_NORTH_SOV_Scarf_2";
_i pushBack "G_NORTH_SOV_Scarf_3";
_i pushBack "G_NORTH_SOV_Scarf_4";
_i pushBack "G_NORTH_SOV_Scarf_Gimnasterka";
_i pushBack "G_NORTH_SOV_Scarf_Gimnasterka_2";
_i pushBack "G_NORTH_SOV_Scarf_Gimnasterka_3";
_i pushBack "G_NORTH_SOV_Scarf_Gimnasterka_4";

_i pushBack "G_NORTH_SOV_Guardsbadge";
_i pushBack "G_NORTH_SOV_Guardsbadge_2";

if(CTI_IFA3_NEW < 0 && CTI_NF_ADDON <= 0) then {
	_i pushBack "G_Combat";
	_i pushBack "G_Shades_Black";
	_i pushBack "G_Tactical_Clear";
	_i pushBack "G_Sport_Blackred";
	_i pushBack "g_goggles_vr";
};
//set all other vars in a slope
_cntstart = count _i;
_cntend = count _p;
for [{ _cnt = 0 }, { _cnt < _cntstart-_cntend }, { _cnt = _cnt + 1 }] do { 
	_u pushBack (_tech_level*_tech_level_no_upgrade_inv);
	_p pushBack round ((CTI_ECONOMY_PRIZE_EQUIPMENT*(((_tech_level+1)*CTI_ECONOMY_LEVEL_MULTI)/100))/4);
};


//-----------------------------------------Attachments------------------------------------------------
_tech_level = 0;

//------------------------------------------Items-------------------------------------------------
_i pushBack "Binocular";
_u pushBack 0;
_p pushBack round 100;
	
if(CTI_IFA3_NEW < 0 && CTI_NF_ADDON <= 0) then {
	_i pushBack "ItemMap";
	_u pushBack 0;
	_p pushBack round 20;

	_i pushBack "itemradio";
	_u pushBack 0;
	_p pushBack round 200;

	_i pushBack "itemcompass";
	_u pushBack 0;
	_p pushBack round 20;

	_i pushBack "itemwatch";
	_u pushBack 0;
	_p pushBack round 50;

	_i pushBack "FirstAidKit";
	_u pushBack 0;
	_p pushBack round 200;

	_i pushBack "Toolkit";
	_u pushBack 0;
	_p pushBack round 3000;

	_i pushBack "Medikit";
	_u pushBack 0;
	_p pushBack round 1500;
};

[_faction, _i, _u, _p] call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_Config_Set.sqf";
