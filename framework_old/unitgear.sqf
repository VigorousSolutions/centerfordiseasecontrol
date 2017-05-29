




	private ["_unit, _type"];
	_unit = _this select 0;
	_type = _this select 1;
	_unit setVariable ["BIS_enableRandomization", false];
	if (!local _unit) exitwith{};
		if (isnull _unit) exitwith {};
			if (isnil "_unit") exitwith {};

	
		if (_type == "crate5") exitwith {
	

if (!isserver) exitwith {};
clearItemCargoGlobal (_this select 0) ;
clearItemCargoGlobal (_this select 0) ;
clearmagazinecargoglobal (_this select 0) ;
clearmagazinecargoglobal (_this select 0) ;

(_this select 0) addmagazinecargoglobal ["HandGrenade", 54];
(_this select 0) addmagazinecargoglobal ["rhsusf_100Rnd_762x51", 24];
(_this select 0) addmagazinecargoglobal ["30Rnd_556x45_Stanag", 150];
(_this select 0) addmagazinecargoglobal ["rhsusf_20Rnd_762x51_m118_special_Mag", 125];


(_this select 0) addmagazinecargoglobal ["rhs_mag_M441_HE", 225];
	
	
	};
	
	
	
	if (_type == "crate2") exitwith {
	

if (!isserver) exitwith {};
clearItemCargoGlobal (_this select 0) ;
clearItemCargoGlobal (_this select 0) ;
clearmagazinecargoglobal (_this select 0) ;
clearmagazinecargoglobal (_this select 0) ;
(_this select 0) additemcargoglobal ["NVGoggles", 8];
(_this select 0) addmagazinecargoglobal ["HandGrenade", 24];
(_this select 0) addmagazinecargoglobal ["rhsusf_100Rnd_762x51", 12];
(_this select 0) addmagazinecargoglobal ["30Rnd_556x45_Stanag", 25];
(_this select 0) addmagazinecargoglobal ["rhsusf_20Rnd_762x51_m118_special_Mag", 25];


(_this select 0) addmagazinecargoglobal ["SatchelCharge_Remote_Mag",4];
(_this select 0) addmagazinecargoglobal ["ClaymoreDirectionalMine_Remote_Mag",1];
(_this select 0) addmagazinecargoglobal ["ATMine_Range_Mag",3];

	
	
	};
	
	
	

	if (_type == "crate3_vietnam_masspool") exitwith {
	

if (!isserver) exitwith {};
clearItemCargoGlobal (_this select 0) ;
clearItemCargoGlobal (_this select 0) ;
clearweaponcargoglobal (_this select 0) ;
clearmagazinecargoglobal (_this select 0) ;
clearmagazinecargoglobal (_this select 0) ;
(_this select 0) additemcargoglobal ["NVGoggles", 8];
(_this select 0) addmagazinecargoglobal ["HandGrenade", 124];
(_this select 0) addmagazinecargoglobal ["rhsusf_100Rnd_762x51", 36];
(_this select 0) addmagazinecargoglobal ["30Rnd_556x45_Stanag", 225];
(_this select 0) addmagazinecargoglobal ["rhsusf_20Rnd_762x51_m118_special_Mag", 110];
(_this select 0) addmagazinecargoglobal ["SatchelCharge_Remote_Mag",12];
(_this select 0) addmagazinecargoglobal ["ClaymoreDirectionalMine_Remote_Mag",12];
(_this select 0) addweaponcargoglobal ["rhs_weap_m240B",1];
(_this select 0) addbackpackcargoglobal ["rhs_sidor",6];
	
(_this select 0) addweaponcargoglobal ["binocular",3];	
(_this select 0) addItemCargoGlobal ["ACE_fieldDressing",75];
(_this select 0) addItemCargoGlobal   ["ACE_packingBandage",125];
(_this select 0) addItemCargoGlobal   ["ACE_elasticBandage",125];
(_this select 0) addItemCargoGlobal   ["ACE_quikclot",55];
(_this select 0) addItemCargoGlobal  ["ACE_tourniquet",25];
(_this select 0) addItemCargoGlobal  ["ACE_morphine",25];
(_this select 0) addItemCargoGlobal  ["ACE_epinephrine",25];
(_this select 0) addweaponcargoglobal ["rhs_weap_M590_5RD", 2];
(_this select 0) addweaponcargoglobal ["rhs_weap_M320", 2];
(_this select 0) addweaponcargoglobal ["tb_sgun_M1014", 1];
(_this select 0) additemcargoglobal ["rhs_vydra_3m", 4];
(_this select 0) additemcargoglobal ["V_TacVestIR_blk", 4];
//(_this select 0) addmagazinecargoglobal ["1000Rnd_65x39_Belt", 4];

(_this select 0) addmagazinecargoglobal ["tb_8Rnd_12ga_slug", 225];
(_this select 0) addmagazinecargoglobal ["tb_8Rnd_12ga_buck", 225];

(_this select 0) addmagazinecargoglobal ["rhs_mag_M441_HE", 225];
(_this select 0) addmagazinecargoglobal ["rhs_mag_m661_green", 25];
(_this select 0) additemCargoGlobal ["ACE_Clacker", 6];
(_this select 0) additemCargoGlobal ["ACE_M26_Clacker", 6];

	};



	
	
	removeallweapons _unit;
	removeAllAssignedItems _unit;

	
	removeUniform _unit;
	removeHeadgear _unit;
	removeGoggles _unit;
	removeVest _unit;
	
	_unit forceAddUniform "U_BG_Guerilla1_1";
	_unit addVest "rhs_vydra_3m";
	_done = true;
	
	private ["_done"];


	// handle randomization

    if (_type == "insurgentrandomizer") then {



    _val = floor random 5;
            if (_val < 1000) then {
    _type = "insurgent3";};
    if (_val == 0) then {
    _type = "insurgent2";};
        if (_val == 1) then {
    _type = "insurgent3";};
    if (_val > 1) then {
    _type = "insurgent1";};

	
    };


    if (_type == "nvarandomizer") then {
    _val = floor random 3;

    if (_val == 0) then {
    _type = "nva1";};
    if (_val > 0) then {
    _type = "nva2";};
	
    };

    if (_type == "vcinsurgentrandomizer") then {
    _val = floor random 3;

    if (_val == 0) then {
    _type = "insurgent2a";};
    if (_val > 0) then {
    _type = "insurgent1a";};
	
    };



	if (random 1 < .5 && side _unit == west) then {
	_done = false;
	_unit addheadgear "H_Bandanna_sgg";};



	if (random 1 < .5 && !_done && side _unit == west) then {
	_unit addheadgear "H_Booniehat_oli";};

removeHeadgear _unit;	
_unit addheadgear "H_Booniehat_oli";


	if (random 1 < .3 && side _unit == west) then {
	_done = false;
	_unit addheadgear "H_Bandanna_sgg";};

	_unit linkitem "itemmap";
	_unit linkitem "itemcompass";
	_unit linkitem "itemwatch";	
	_unit unassignItem "itemradio";
    _unit removeitem "itemradio";
	





_unit removeweapon "nvgoggles";




if (random 1 < .3) then {
_unit addItemToUniform "muzzle_snds_acp";
};

	if (_type == "mg") then {
removeuniform _unit;

_unit forceAddUniform "usm_bdu_odg";

_unit setVariable ["mg", true];
		_unit addbackpack "usm_pack_762x51_ammobelts";


		//_unit addweapon "rhs_weap_m240B";
		//_num = 5 + floor random 4;
		//private ["_num"];
		//x = 0;
		//while {x < _num} do {
		//_unit addItemToVest "hlc_100Rnd_762x51_M_M60E4";





			(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShell",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShellRed",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
		_unit addweapon "hlc_lmg_m60";
		_num = 5 + floor random 4;
		private ["_num"];
		x = 0;
		while {x < _num} do {
		_unit addItemToVest "hlc_100Rnd_762x51_M_M60E4";
		x = x + 1;
		};
		(unitBackpack _unit) addmagazinecargoglobal  ["9Rnd_45ACP_Mag",2];
        (uniformContainer _unit) addItemCargoGlobal ["ACE_packingBandage",2];
                 (uniformContainer _unit) addItemCargoGlobal ["ACE_elasticBandage",2];
(unitBackpack _unit) addmagazinecargoglobal  ["hlc_100Rnd_762x51_M_M60E4",2];

	};
	
	if (_type == "eng") then {
removeuniform _unit;
removeVest this;
_unit forceAddUniform "usm_bdu_odg";
_unit addVest "usm_vest_LBE_rm_m";

_unit setVariable ["eng", true];
		_unit addbackpack "rhs_sidor";
			(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShell",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShellRed",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
		_unit addweapon "rhs_weap_m16a4_carryhandle";
		_num = 5 + floor random 8;
		private ["_num"];
		x = 0;
		while {x < _num} do {
		if (x < 8) then {
		_unit addItemToVest "30Rnd_556x45_Stanag";	} else {	
		(unitBackpack _unit) addmagazinecargoglobal  ["30Rnd_556x45_Stanag",1];};
		x = x + 1;
		};	
		//MineDetector
		//B_FieldPack_oli
		//(unitBackpack _unit) additemcargoglobal ["MineDetector",1];
		(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",3];
		(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",3];
(unitBackpack _unit) addmagazinecargoglobal  ["30Rnd_556x45_Stanag_Tracer_Red",3];
		(unitBackpack _unit) addmagazinecargoglobal  ["DemoCharge_Remote_Mag",1];
		(unitBackpack _unit) addmagazinecargoglobal  ["ClaymoreDirectionalMine_Remote_Mag",2];
        (uniformContainer _unit) addItemCargoGlobal ["ACE_packingBandage",2];
                 (uniformContainer _unit) addItemCargoGlobal ["ACE_elasticBandage",2];
	};




	if (_type == "cake") then {
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

comment "Add containers";
_unit forceAddUniform "U_I_C_Soldier_Camo_F";
for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_morphine";};
_unit addItemToUniform "30Rnd_556x45_Stanag";
_unit addVest "UK3CB_BAF_V_PLCE_Webbing_Plate_OLI";
for "_i" from 1 to 6 do {_unit addItemToVest "ACE_morphine";};
for "_i" from 1 to 10 do {_unit addItemToVest "ACE_fieldDressing";};
_unit addBackpack "usm_pack_alice";
_unit addHeadgear "rhsusf_lwh_helmet_M1942";

comment "Add weapons";
_unit addWeapon "UK3CB_BAF_L119A1";
_unit addWeapon "Binocular";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";

};





	if (_type == "rif") then {
removeuniform _unit;
removeVest this;
_unit forceAddUniform "usm_bdu_odg";
_unit addVest "usm_vest_LBE_rm_m";

_unit setVariable ["rif", true];
         
		_unit addbackpack "rhs_sidor";
(unitBackpack _unit) addmagazinecargoglobal  ["rhsusf_100Rnd_762x51",1];
			(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShell",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShellRed",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
		_unit addweapon "rhs_weap_m16a4_carryhandle";
		_num = 9 + floor random 8;
		private ["_num"];
		x = 0;
		while {x < _num} do {
		if (x < 8) then {
		_unit addItemToVest "30Rnd_556x45_Stanag";	} else {	
		(unitBackpack _unit) addmagazinecargoglobal  ["30Rnd_556x45_Stanag",1];};
		x = x + 1;
		};	
(unitBackpack _unit) addmagazinecargoglobal  ["30Rnd_556x45_Stanag_Tracer_Red",3];
		(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",3];
		(unitBackpack _unit) addmagazinecargoglobal  ["30Rnd_556x45_Stanag",5];
                (uniformContainer _unit) addItemCargoGlobal ["ACE_packingBandage",3];
                (uniformContainer _unit) addItemCargoGlobal ["ACE_elasticBandage",3];

	};



	if (_type == "cdc4") exitwith {
removeuniform _unit;
	removeallweapons _unit;
	removeAllAssignedItems _unit;

	
	removeUniform _unit;
	removeHeadgear _unit;
	removeGoggles _unit;
	removeVest _unit;
_unit forceAddUniform "usm_bdu_odg";
removeVest _unit;


	//	_unit addbackpack "B_FieldPack_oli";
			(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShell",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShellRed",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];

(unitBackpack _unit) addweaponcargoglobal  ["hgun_ACPC2_F",1];
(uniformContainer _unit) addItemCargoGlobal ["ACE_fieldDressing",4];



	_unit addItemCargoGlobal ["9Rnd_45ACP_Mag", 2];



 
(uniformContainer _unit) addItemCargoGlobal ["ACE_fieldDressing",4];
(uniformContainer _unit) addItemCargoGlobal ["ACE_packingBandage",3];
(uniformContainer _unit) addItemCargoGlobal ["ACE_elasticBandage",3];
(uniformContainer _unit) addItemCargoGlobal ["ACE_quikclot",3];
(uniformContainer _unit) addItemCargoGlobal ["ACE_tourniquet",1];
(uniformContainer _unit) addItemCargoGlobal ["ACE_morphine",1];
	
	}; 

	if (_type == "gren") exitwith {
removeuniform _unit;

_unit forceAddUniform "usm_bdu_odg";


_unit setVariable ["gren", true];
		_unit addbackpack "B_FieldPack_oli";
			(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShell",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShellRed",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];

(uniformContainer _unit) addItemCargoGlobal ["ACE_fieldDressing",4];

		_unit addsecondaryweaponitem "rhs_weap_M320";
		_unit addweapon "rhs_weap_M320";
(uniformContainer _unit) addItemCargoGlobal ["ACE_EarPlugs",1];
		_num = 14;
		private ["_num"];
		x = 0;
		while {x < _num} do {
		
		_unit addItemToVest "rhs_mag_M441_HE";	
		x = x + 1;
		};


	_unit addItemToVest "9Rnd_45ACP_Mag";
	_unit addItemToVest "9Rnd_45ACP_Mag";
	_unit addItemToVest "9Rnd_45ACP_Mag";
	_unit addItemToVest "9Rnd_45ACP_Mag";

(unitBackpack _unit) addweaponcargoglobal  ["hgun_ACPC2_F",1];
		(unitBackpack _unit) addmagazinecargoglobal  ["rhs_mag_M441_HE",30];
		(unitBackpack _unit) addmagazinecargoglobal  ["rhs_mag_m661_green",8];
        (uniformContainer _unit) addItemCargoGlobal ["ACE_packingBandage",2];
                 (uniformContainer _unit) addItemCargoGlobal ["ACE_elasticBandage",2];
	};













	if (_type == "rif_tunnel") exitwith {
_unit setVariable ["rif_tunnel", true];
		_unit addbackpack "B_FieldPack_oli";
			(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShell",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShellRed",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];

		(uniformContainer _unit) addItemCargoGlobal ["ACE_fieldDressing",4];
		_unit addweapon "rhs_weap_M590_5RD";
		_unit addsecondaryweaponitem "hgun_ACPC2_F";
	
(uniformContainer _unit) addItemCargoGlobal ["ACE_EarPlugs",1];
		_num = 14;
		private ["_num"];
		x = 0;
		while {x < _num} do {
		_unit addItemToVest "rhsusf_5Rnd_00Buck";	
		x = x + 1;
		};


	_unit addItemToVest "9Rnd_45ACP_Mag";
	_unit addItemToVest "9Rnd_45ACP_Mag";
	_unit addItemToVest "9Rnd_45ACP_Mag";
	_unit addItemToVest "9Rnd_45ACP_Mag";

(unitBackpack _unit) addweaponcargoglobal  ["hgun_ACPC2_F",1];
		//(unitBackpack _unit) addmagazinecargoglobal  ["rhs_mag_M441_HE",2];
		//(unitBackpack _unit) addmagazinecargoglobal  ["rhs_mag_m661_green",8];
        (uniformContainer _unit) addItemCargoGlobal ["ACE_packingBandage",2];
                 (uniformContainer _unit) addItemCargoGlobal ["ACE_elasticBandage",2];
	};









	if (_type == "pilot") then {

_unit setVariable ["pilot", true];
 
removeAllWeapons _unit;
removeAllAssignedItems _unit;
removeAllItemsWithMagazines _unit;
removeHeadgear _unit;
removeGoggles _unit;
removeAllContainers _unit;
clearAllItemsFromBackpack _unit;
 
_unit forceAddUniform "U_I_pilotCoveralls";
_unit addHeadgear "tin_helmet_rcaf_helicrew_3";
 
//(uniformContainer _unit) addItemCargoGlobal ["ACE_EarPlugs",1];
_unit linkitem "NVGoggles_Opfor";
_unit linkitem "Itemmap";
//_unit additem "ACRE_PRC148";
_unit additem "ACE_MapTools";
 
(uniformContainer _unit) addItemCargoGlobal ["ACE_fieldDressing",4];
(uniformContainer _unit) addItemCargoGlobal ["ACE_packingBandage",3];
(uniformContainer _unit) addItemCargoGlobal ["ACE_elasticBandage",3];
(uniformContainer _unit) addItemCargoGlobal ["ACE_quikclot",3];
(uniformContainer _unit) addItemCargoGlobal ["ACE_tourniquet",1];
(uniformContainer _unit) addItemCargoGlobal ["ACE_morphine",1];
 
 
_unit addBackpack "B_Carryall_oli";
clearAllItemsFromBackpack _unit;
(unitBackpack _unit) addItemCargoGlobal ["ACRE_PRC117F",1];
 
_unit addweapon "binocular";

	};







	if (_type == "jtac") exitwith {
removeuniform _unit;

_unit forceAddUniform "usm_bdu_odg";


_unit setVariable ["jtac", true];
	_unit addbackpack "B_Carryall_oli";
	clearAllItemsFromBackpack _unit;
  (unitBackpack _unit) addItemCargoGlobal ["ACRE_PRC117F",1];
      _unit addweapon "binocular";
      _unit additem "ACE_MapTools";
	////(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShell",1];
	//(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShellRed",1];
	//(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
		_unit addweapon "rhs_weap_m16a4_carryhandle";
		_num = 3 + floor random 4;
		private ["_num"];
		x = 0;
(uniformContainer _unit) addItemCargoGlobal ["ACE_EarPlugs",1];
		while {x < _num} do {
		if (x < 8) then {
		_unit addItemToVest "30Rnd_556x45_Stanag";	} else {	
		//(unitBackpack _unit) addmagazinecargoglobal  ["30Rnd_556x45_Stanag",1];
		};
		x = x + 1;
		};	

	        (uniformContainer _unit) addItemCargoGlobal ["ACE_packingBandage",2];
                 (uniformContainer _unit) addItemCargoGlobal ["ACE_elasticBandage",2];
(unitBackpack _unit) addmagazinecargoglobal  ["30Rnd_556x45_Stanag_Tracer_Red",3];

	};



	
	if (_type == "medic") then {
removeuniform _unit;
removeVest this;
_unit forceAddUniform "usm_bdu_odg";
_unit addVest "usm_vest_LBE_rm_m";

_unit setVariable ["medic", true];
		_unit addbackpack "B_FieldPack_oli";
			(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShell",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShellRed",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
		_unit addweapon "rhs_weap_m16a4_carryhandle";
		_num = 8 + floor random 8;
		private ["_num"];
		x = 0;
		while {x < _num} do {
		if (x < 8) then {
		_unit addItemToVest "30Rnd_556x45_Stanag";	} else {	
		(unitBackpack _unit) addmagazinecargoglobal  ["30Rnd_556x45_Stanag",1];};
		x = x + 1;
		};	
	};















































	if (_type == "navyseal_sl") then {

removeVest _unit;
	_unit addvest "V_RebreatherB";
	removeUniform _unit;
	_unit addUniform "U_B_Wetsuit";
		_unit addbackpack "rhs_sidor";
_unit linkitem "NVGoggles";
			(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShell",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShellRed",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
		_unit addweapon "binocular";
		_unit additem "ACRE_PRC148";
		_unit addweapon "rhs_weap_m14ebrri";
		_unit addPrimaryWeaponItem "muzzle_snds_B";
		_num = 7 + floor random 4;
		private ["_num"];
		x = 0;
		while {x < _num} do {
		if (x < 4) then {
		_unit addItemToVest "rhsusf_20Rnd_762x51_m118_special_Mag";	} else {	
		(unitBackpack _unit) addmagazinecargoglobal  ["rhsusf_20Rnd_762x51_m118_special_Mag",1];};
		x = x + 1;
		};	
		(unitBackpack _unit) addmagazinecargoglobal  ["rhsusf_20Rnd_762x51_m118_special_Mag",5];
		_unit addItemToUniform "9Rnd_45ACP_Mag";
		_unit addItemToUniform "9Rnd_45ACP_Mag";
		_unit addItemToUniform "9Rnd_45ACP_Mag";
		_unit addItemToUniform "9Rnd_45ACP_Mag";
	};

	if (_type == "navyseal_eng") then {
_unit linkitem "NVGoggles";
removeVest _unit;
	_unit addvest "V_RebreatherB";
	removeUniform _unit;
	_unit addUniform "U_B_Wetsuit";
		_unit addbackpack "rhs_sidor";
			(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShell",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShellRed",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",5];
		_unit addweapon "binocular";
		_unit additem "ACRE_PRC148";
		_unit addweapon "rhs_weap_m14ebrri";
		_unit addPrimaryWeaponItem "muzzle_snds_B";
		_num = 7 + floor random 4;
		private ["_num"];
		(unitBackpack _unit) addmagazinecargoglobal  ["SatchelCharge_Remote_Mag",1];
		(unitBackpack _unit) addmagazinecargoglobal  ["ClaymoreDirectionalMine_Remote_Mag",2];
		(unitBackpack _unit) addmagazinecargoglobal  ["ATMine_Range_Mag",1];
		x = 0;
		while {x < _num} do {
		if (x < 4) then {
		_unit addItemToVest "rhsusf_20Rnd_762x51_m118_special_Mag";	} else {	
		(unitBackpack _unit) addmagazinecargoglobal  ["rhsusf_20Rnd_762x51_m118_special_Mag",1];};
		x = x + 1;
		};	
		(unitBackpack _unit) addmagazinecargoglobal  ["rhsusf_20Rnd_762x51_m118_special_Mag",5];
		_unit addItemToUniform "9Rnd_45ACP_Mag";
		_unit addItemToUniform "9Rnd_45ACP_Mag";
		_unit addItemToUniform "9Rnd_45ACP_Mag";
	};

	if (_type == "navyseal_dm") then {
_unit linkitem "NVGoggles";
	removeUniform _unit;
	_unit addUniform "U_B_Wetsuit";
removeVest _unit;
	_unit addvest "V_RebreatherB";
		_unit addbackpack "rhs_sidor";
			(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShell",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShellRed",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
		_unit addweapon "binocular";
		_unit additem "ACRE_PRC148";
		_unit addweapon "rhs_weap_m14ebrri";
		_unit addPrimaryWeaponItem "muzzle_snds_B";
		_unit addPrimaryWeaponItem "acc_flashlight";
		_unit addPrimaryWeaponItem "optic_SOS";
		_num = 7 + floor random 4;
		private ["_num"];
		x = 0;
		while {x < _num} do {
		if (x < 4) then {
		_unit addItemToVest "rhsusf_20Rnd_762x51_m118_special_Mag";	} else {	
		(unitBackpack _unit) addmagazinecargoglobal  ["rhsusf_20Rnd_762x51_m118_special_Mag",1];};
		x = x + 1;
		};	
		(unitBackpack _unit) addmagazinecargoglobal  ["rhsusf_20Rnd_762x51_m118_special_Mag",5];
		_unit addItemToUniform "9Rnd_45ACP_Mag";
		_unit addItemToUniform "9Rnd_45ACP_Mag";
		_unit addItemToUniform "9Rnd_45ACP_Mag";
	};





































	if (_type == "army_dm") then {

removeuniform _unit;
_unit addVest "usm_vest_LBE_rm_m";

_unit forceAddUniform "usm_bdu_odg";


_unit addItemToVest "usm_rifle_cleaning_kit";

_unit setVariable ["army_dm", true];
_unit linkitem "NVGoggles";
removeVest _unit;
		_unit addbackpack "rhs_sidor";
			(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShell",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShellRed",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
		_unit addweapon "binocular";
		_unit additem "ACRE_PRC148";
		_unit addweapon "hlc_rifle_M14";
		_unit addPrimaryWeaponItem "muzzle_snds_B";
		_unit addPrimaryWeaponItem "acc_flashlight";
		_unit addPrimaryWeaponItem "hlc_optic_artel_m14";
		_num = 7 + floor random 4;
		private ["_num"];
		x = 0;
		while {x < _num} do {
		if (x < 4) then {
		_unit addItemToVest "hlc_20Rnd_762x51_B_M14";	} else {	
		(unitBackpack _unit) addmagazinecargoglobal  ["hlc_20Rnd_762x51_B_M14",1];};
		x = x + 1;
		};	
		(unitBackpack _unit) addmagazinecargoglobal  ["hlc_20Rnd_762x51_B_M14",5];
		_unit addItemToUniform "9Rnd_45ACP_Mag";
		_unit addItemToUniform "9Rnd_45ACP_Mag";
		_unit addItemToUniform "9Rnd_45ACP_Mag";
        (uniformContainer _unit) addItemCargoGlobal ["ACE_packingBandage",2];
                 (uniformContainer _unit) addItemCargoGlobal ["ACE_elasticBandage",2];
	};



	if (_type == "navyseal_medic") then {

removeVest _unit;
	_unit addvest "V_RebreatherB";
	removeUniform _unit;
_unit linkitem "NVGoggles";
	_unit addUniform "U_B_Wetsuit";
		_unit addbackpack "rhs_sidor";
			(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShell",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShellRed",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
	
		_unit addweapon "binocular";
		_unit additem "ACRE_PRC148";
		_unit addweapon "rhs_weap_m14ebrri";
		_unit addPrimaryWeaponItem "muzzle_snds_B";
		_num = 7 + floor random 4;
		private ["_num"];
		x = 0;
		while {x < _num} do {
		if (x < 4) then {
		_unit addItemToVest "rhsusf_20Rnd_762x51_m118_special_Mag";	} else {	
		(unitBackpack _unit) addmagazinecargoglobal  ["rhsusf_20Rnd_762x51_m118_special_Mag",1];};
		x = x + 1;
		};	
		(unitBackpack _unit) addmagazinecargoglobal  ["rhsusf_20Rnd_762x51_m118_special_Mag",5];
		_unit addItemToUniform "9Rnd_45ACP_Mag";
		_unit addItemToUniform "9Rnd_45ACP_Mag";
		_unit addItemToUniform "9Rnd_45ACP_Mag";
	};


	if (_type == "navyseal_mg") then {
_unit linkitem "NVGoggles";
removeVest _unit;
	_unit addvest "V_RebreatherB";
	removeUniform _unit;
	_unit addUniform "U_B_Wetsuit";
		_unit addbackpack "rhs_sidor";
			(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShell",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShellRed",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
		_unit addweapon "rhs_weap_m240B";
		_num = 5 + floor random 4;
		private ["_num"];
		x = 0;
		while {x < _num} do {
		_unit addItemToVest "rhsusf_100Rnd_762x51";
		x = x + 1;
		};
		(unitBackpack _unit) addmagazinecargoglobal  ["rhsusf_100Rnd_762x51",2];
		(unitBackpack _unit) addmagazinecargoglobal  ["9Rnd_45ACP_Mag",2];
			_unit addItemToUniform "9Rnd_45ACP_Mag";
	_unit addItemToUniform "9Rnd_45ACP_Mag";
	_unit addItemToUniform "9Rnd_45ACP_Mag";
		
	};




















		if (_type == "vc_standard") then {




removeUniform _unit;
_unit forceAddUniform "usm_bdu_blk";


_unit addbackpack "rhs_sidor";
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShell",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShellRed",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
removeHeadgear (_this select 0);

//H_TurbanO_blk H_Shemag_tan
removeGoggles (_this select 0);
//removeUniform (_this select 0);
removeAllWeapons (_this select 0);
removeAllAssignedItems (_this select 0);
//if (random 1 < .3) then {
//(_this select 0) addheadgear "H_Bandanna_gry";};
//(_this select 0) forceAddUniform "rhs_uniform_m88_patchless";
		
		_num = 8 + floor random 8;
		private ["_num"];
		x = 0;
		while {x < _num} do {
		if (x < 8) then {
		_unit addItemToVest "rhs_30Rnd_762x39mm_tracer";	} else {	
		(unitBackpack _unit) addmagazinecargoglobal  ["rhs_30Rnd_762x39mm_tracer",1];};
		x = x + 1;
		};	
		_unit addweapon "rhs_weap_akm";
		(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
			_unit linkitem "itemmap";
	_unit linkitem "itemcompass";
	_unit linkitem "itemwatch";	
	_unit unassignItem "itemradio";
    _unit removeitem "itemradio";
	};






		if (_type == "vc_standard2") then {




removeUniform _unit;
_unit forceAddUniform "usm_bdu_blk";


_unit addbackpack "rhs_sidor";
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShell",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShellRed",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
removeHeadgear (_this select 0);

//H_TurbanO_blk H_Shemag_tan
removeGoggles (_this select 0);
//removeUniform (_this select 0);
removeAllWeapons (_this select 0);
removeAllAssignedItems (_this select 0);
//if (random 1 < .3) then {
//(_this select 0) addheadgear "H_Bandanna_gry";};
//(_this select 0) forceAddUniform "rhs_uniform_m88_patchless";
		
		_num = 8 + floor random 8;
		private ["_num"];
		x = 0;
		while {x < _num} do {
		if (x < 8) then {
		_unit addItemToVest "rhsgref_5Rnd_762x54_m38";	} else {	
		(unitBackpack _unit) addmagazinecargoglobal  ["rhsgref_5Rnd_762x54_m38",1];};
		x = x + 1;
		};	
		_unit addweapon "rhs_weap_m38";
		(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
			_unit linkitem "itemmap";
	_unit linkitem "itemcompass";
	_unit linkitem "itemwatch";	
	_unit unassignItem "itemradio";
    _unit removeitem "itemradio";
	};






		if (_type == "vc_standard3") then {




removeUniform _unit;
_unit forceAddUniform "usm_bdu_blk";


_unit addbackpack "rhs_sidor";
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShell",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShellRed",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
removeHeadgear (_this select 0);

//H_TurbanO_blk H_Shemag_tan
removeGoggles (_this select 0);
//removeUniform (_this select 0);
removeAllWeapons (_this select 0);
removeAllAssignedItems (_this select 0);
if (random 1 < .2) then {
(_this select 0) addheadgear "H_Bandanna_gry";};
//(_this select 0) forceAddUniform "rhs_uniform_m88_patchless";
		
		_num = 8 + floor random 8;
		private ["_num"];
		x = 0;
		while {x < _num} do {
		if (x < 8) then {
		_unit addItemToVest "rhsusf_5Rnd_00Buck";	} else {	
		(unitBackpack _unit) addmagazinecargoglobal  ["rhsusf_5Rnd_00Buck",1];};
		x = x + 1;
		};	
		_unit addweapon "rhs_weap_M590_5RD";
		(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
			_unit linkitem "itemmap";
	_unit linkitem "itemcompass";
	_unit linkitem "itemwatch";	
	_unit unassignItem "itemradio";
    _unit removeitem "itemradio";
	};








		if (_type == "nva1") then {





_unit addbackpack "rhs_sidor";
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShell",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShellRed",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
removeHeadgear (_this select 0);

//H_TurbanO_blk H_Shemag_tan
removeGoggles (_this select 0);
removeUniform (_this select 0);
removeAllWeapons (_this select 0);
removeAllAssignedItems (_this select 0);
//if (random 1 < .3) then {
//(_this select 0) addheadgear "H_Bandanna_gry";};
(_this select 0) forceAddUniform "rhs_uniform_m88_patchless";
		
		_num = 8 + floor random 8;
		private ["_num"];
		x = 0;
		while {x < _num} do {
		if (x < 8) then {
		_unit addItemToVest "rhs_30Rnd_762x39mm_tracer";	} else {	
		(unitBackpack _unit) addmagazinecargoglobal  ["rhs_30Rnd_762x39mm_tracer",1];};
		x = x + 1;
		};	
		_unit addweapon "rhs_weap_akm";
		(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
			_unit linkitem "itemmap";
	_unit linkitem "itemcompass";
	_unit linkitem "itemwatch";	
	_unit unassignItem "itemradio";
    _unit removeitem "itemradio";
	};





		if (_type == "nva2") then {
_unit addbackpack "rhs_sidor";
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShell",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShellRed",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
removeHeadgear (_this select 0);


//H_TurbanO_blk H_Shemag_tan
removeGoggles (_this select 0);

removeUniform (_this select 0);
removeAllWeapons (_this select 0);
removeAllAssignedItems (_this select 0);
//if (random 1 < .3) then {
//(_this select 0) addheadgear "H_Bandanna_gry";};
(_this select 0) forceAddUniform "U_IG_Guerilla3_1";
		
		_num = 8 + floor random 8;
		private ["_num"];
		x = 0;
		while {x < _num} do {
		if (x < 5) then {
		_unit addItemToVest "JO_75rnd_RPK";	} else {	
		(unitBackpack _unit) addmagazinecargoglobal  ["rhs_30Rnd_762x39mm_tracer",1];};
		x = x + 1;
		};	
		_unit addweapon "JO_RF_RPK";
		(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
			_unit linkitem "itemmap";
	_unit linkitem "itemcompass";
	_unit linkitem "itemwatch";	
	_unit unassignItem "itemradio";
    _unit removeitem "itemradio";
	};














































		if (_type == "insurgent1a") then {

_unit addbackpack "rhs_sidor";
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShell",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShellRed",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
removeHeadgear (_this select 0);

//H_TurbanO_blk H_Shemag_tan
removeGoggles (_this select 0);
removeUniform (_this select 0);
removeAllWeapons (_this select 0);
removeAllAssignedItems (_this select 0);
//if (random 1 < .3) then {
//(_this select 0) addheadgear "H_Bandanna_gry";};
(_this select 0) forceAddUniform "U_IG_Guerilla3_1";
		
		_num = 8 + floor random 8;
		private ["_num"];
		x = 0;
		while {x < _num} do {
		if (x < 8) then {
		_unit addItemToVest "rhs_30Rnd_762x39mm_tracer";	} else {	
		(unitBackpack _unit) addmagazinecargoglobal  ["rhs_30Rnd_762x39mm_tracer",1];};
		x = x + 1;
		};	
		_unit addweapon "rhs_weap_akm";
		(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
			_unit linkitem "itemmap";
	_unit linkitem "itemcompass";
	_unit linkitem "itemwatch";	
	_unit unassignItem "itemradio";
    _unit removeitem "itemradio";
	};





		if (_type == "insurgent2a") then {
_unit addbackpack "rhs_sidor";
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShell",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShellRed",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
removeHeadgear (_this select 0);


//H_TurbanO_blk H_Shemag_tan
removeGoggles (_this select 0);

removeUniform (_this select 0);
removeAllWeapons (_this select 0);
removeAllAssignedItems (_this select 0);
//if (random 1 < .3) then {
//(_this select 0) addheadgear "H_Bandanna_gry";};
(_this select 0) forceAddUniform "U_IG_Guerilla3_1";
		
		_num = 8 + floor random 8;
		private ["_num"];
		x = 0;
		while {x < _num} do {
		if (x < 5) then {
		_unit addItemToVest "JO_75rnd_RPK";	} else {	
		(unitBackpack _unit) addmagazinecargoglobal  ["rhs_30Rnd_762x39mm_tracer",1];};
		x = x + 1;
		};	
		_unit addweapon "JO_RF_RPK";
		(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
			_unit linkitem "itemmap";
	_unit linkitem "itemcompass";
	_unit linkitem "itemwatch";	
	_unit unassignItem "itemradio";
    _unit removeitem "itemradio";
	};
















		if (_type == "insurgent1") then {

_unit addbackpack "rhs_sidor";
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShell",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShellRed",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
removeHeadgear (_this select 0);
if (random 1 < .5) then {
_unit addheadgear "H_Shemag_tan";};
//H_TurbanO_blk H_Shemag_tan
removeGoggles (_this select 0);
if (random 1 < .4) then {_unit addGoggles "G_Bandanna_khk";};
removeUniform (_this select 0);
removeAllWeapons (_this select 0);
removeAllAssignedItems (_this select 0);
//if (random 1 < .3) then {
//(_this select 0) addheadgear "H_Bandanna_gry";};
(_this select 0) forceAddUniform "U_IG_Guerilla3_1";
		_unit addweapon "rhs_weap_akm";
		_num = 8 + floor random 8;
		private ["_num"];
		x = 0;
		while {x < _num} do {
		if (x < 8) then {
		_unit addItemToVest "rhs_30Rnd_762x39mm_tracer";	} else {	
		(unitBackpack _unit) addmagazinecargoglobal  ["rhs_30Rnd_762x39mm_tracer",1];};
		x = x + 1;
		};	
		(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
			_unit linkitem "itemmap";
	_unit linkitem "itemcompass";
	_unit linkitem "itemwatch";	
	_unit unassignItem "itemradio";
    _unit removeitem "itemradio";
	};





		if (_type == "insurgent2") then {
_unit addbackpack "rhs_sidor";
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShell",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShellRed",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
removeHeadgear (_this select 0);
if (random 1 < .5) then {_unit addheadgear "H_Shemag_khk";};

//H_TurbanO_blk H_Shemag_tan
removeGoggles (_this select 0);
if (random 1 < .4) then {_unit addGoggles "G_Bandanna_khk";};
removeUniform (_this select 0);
removeAllWeapons (_this select 0);
removeAllAssignedItems (_this select 0);
//if (random 1 < .3) then {
//(_this select 0) addheadgear "H_Bandanna_gry";};
(_this select 0) forceAddUniform "U_IG_Guerilla3_1";
		_unit addweapon "JO_RF_RPK";
		_num = 8 + floor random 8;
		private ["_num"];
		x = 0;
		while {x < _num} do {
		if (x < 5) then {
		_unit addItemToVest "JO_75rnd_RPK";	} else {	
		(unitBackpack _unit) addmagazinecargoglobal  ["rhs_30Rnd_762x39mm_tracer",1];};
		x = x + 1;
		};	
		(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
			_unit linkitem "itemmap";
	_unit linkitem "itemcompass";
	_unit linkitem "itemwatch";	
	_unit unassignItem "itemradio";
    _unit removeitem "itemradio";
	};

		



		if (_type == "insurgent3") then {
if (random 1 < 1) then {_unit addbackpack "rhs_sidor";};

	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShell",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShellRed",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
removeHeadgear (_this select 0);
if (random 1 < .5) then {
_unit addheadgear "H_Shemag_tan";};
//H_TurbanO_blk H_Shemag_tan
removeGoggles (_this select 0);
	if (random 1 < .4) then {_unit addGoggles "G_Bandanna_khk";};
removeUniform (_this select 0);
removeAllWeapons (_this select 0);
removeAllAssignedItems (_this select 0);
//if (random 1 < .3) then {
//(_this select 0) addheadgear "H_Bandanna_gry";};
(_this select 0) forceAddUniform "U_IG_Guerilla3_1";
_unit addItemToVest "rhs_rpg7_PG7VL_mag";
(unitBackpack _unit) addmagazinecargoglobal  ["rhs_rpg7_PG7VL_mag",1];
		_unit addweapon "rhs_weap_rpg7";
		_num = 2 + floor random 2;
		private ["_num"];
		x = 0;
		while {x < _num} do {
		if (x < 3) then {
		_unit addItemToVest "rhs_rpg7_PG7VL_mag";	};
		x = x + 1;
		};	
		(unitBackpack _unit) addmagazinecargoglobal  ["rhs_rpg7_PG7VL_mag",1];
			_unit linkitem "itemmap";
	_unit linkitem "itemcompass";
	_unit linkitem "itemwatch";	
	_unit unassignItem "itemradio";
    _unit removeitem "itemradio";
	};




































































		if (_type == "african_player_mg") then {
_unit addbackpack "rhs_sidor";
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShell",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShellRed",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
removeHeadgear (_this select 0);


//H_TurbanO_blk H_Shemag_tan
removeGoggles (_this select 0);

removeUniform (_this select 0);
removeAllWeapons (_this select 0);
removeAllAssignedItems (_this select 0);
//if (random 1 < .3) then {
//(_this select 0) addheadgear "H_Bandanna_gry";};
(_this select 0) forceAddUniform "UK3CB_BAF_U_Smock_DPMW";
		
		_num = 8 + floor random 8;
		private ["_num"];
		x = 0;
		while {x < _num} do {
		if (x < 5) then {
		_unit addItemToVest "rhs_100Rnd_762x54mmR";	} else {	
		(unitBackpack _unit) addmagazinecargoglobal  ["rhs_100Rnd_762x54mmR",1];};
		x = x + 1;
		};	
		_unit addweapon "rhs_weap_pkm";
		(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",4];
			_unit linkitem "itemmap";
	_unit linkitem "itemcompass";
	_unit linkitem "itemwatch";	
(uniformContainer _unit) addItemCargoGlobal ["ACE_EarPlugs",1];
	_unit unassignItem "itemradio";
    _unit removeitem "itemradio";
_unit addItem  "ACE_packingBandage";
_unit addItem  "ACE_packingBandage";
_unit addItem  "ACE_packingBandage";
_unit addItem  "ACE_elasticBandage";
_unit addItem  "ACE_elasticBandage";
_unit addItem  "ACE_elasticBandage";
_unit addItem  "ACE_quikclot";
_unit addItem  "ACE_quikclot";
_unit addItem  "ACE_quikclot";
_unit addItem "ACE_tourniquet";
_unit addItem  "ACE_morphine";
	};


		if (_type == "african_player_sl") then {

_unit addbackpack "rhs_sidor";
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShell",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShellRed",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
removeHeadgear (_this select 0);

//H_TurbanO_blk H_Shemag_tan
removeGoggles (_this select 0);
removeUniform (_this select 0);
removeAllWeapons (_this select 0);
removeAllAssignedItems (_this select 0);
this additem "itemradio";
if (random 1 < .3) then {
(_this select 0) addheadgear "H_Bandanna_gry";};
(_this select 0) forceAddUniform "UK3CB_BAF_U_Smock_DPMW";
		
		_num = 8 + floor random 8;
		private ["_num"];
		x = 0;
		while {x < _num} do {
		if (x < 8) then {
		_unit addItemToVest "rhs_30Rnd_762x39mm_tracer";	} else {	
		(unitBackpack _unit) addmagazinecargoglobal  ["rhs_30Rnd_762x39mm_tracer",1];};
		x = x + 1;
		};	
		_unit addweapon "rhs_weap_akm";
		(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
			_unit linkitem "itemmap";
	_unit linkitem "itemcompass";
	_unit linkitem "itemwatch";	
(uniformContainer _unit) addItemCargoGlobal ["ACE_EarPlugs",1];
	_unit unassignItem "itemradio";
    _unit removeitem "itemradio";
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShellRed",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",6];
(uniformContainer _unit) addItemCargoGlobal ["ACRE_PRC343",1];
_unit addItem  "ACE_packingBandage";
_unit addItem  "ACE_packingBandage";
_unit addItem  "ACE_packingBandage";
_unit addItem  "ACE_elasticBandage";
_unit addItem  "ACE_elasticBandage";
_unit addItem  "ACE_elasticBandage";
_unit addItem  "ACE_quikclot";
_unit addItem  "ACE_quikclot";
_unit addItem  "ACE_quikclot";
_unit addItem "ACE_tourniquet";
_unit addItem  "ACE_morphine";
	};


		if (_type == "african_player_rifle") then {

_unit addbackpack "rhs_sidor";
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShell",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShellRed",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
removeHeadgear (_this select 0);

//H_TurbanO_blk H_Shemag_tan
removeGoggles (_this select 0);
removeUniform (_this select 0);
removeAllWeapons (_this select 0);
removeAllAssignedItems (_this select 0);
//if (random 1 < .3) then {
//(_this select 0) addheadgear "H_Bandanna_gry";};
(_this select 0) forceAddUniform "UK3CB_BAF_U_Smock_DPMW";
		
		_num = 8 + floor random 8;
		private ["_num"];
		x = 0;
		while {x < _num} do {
		if (x < 8) then {
		_unit addItemToVest "rhs_30Rnd_762x39mm_tracer";	} else {	
		(unitBackpack _unit) addmagazinecargoglobal  ["rhs_30Rnd_762x39mm_tracer",1];};
		x = x + 1;
		};	
		_unit addweapon "rhs_weap_akm";
		(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
			_unit linkitem "itemmap";
	_unit linkitem "itemcompass";
	_unit linkitem "itemwatch";	
(uniformContainer _unit) addItemCargoGlobal ["ACE_EarPlugs",1];
	_unit unassignItem "itemradio";
    _unit removeitem "itemradio";
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShellRed",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",6];
_unit addItem  "ACE_packingBandage";
_unit addItem  "ACE_packingBandage";
_unit addItem  "ACE_packingBandage";
_unit addItem  "ACE_elasticBandage";
_unit addItem  "ACE_elasticBandage";
_unit addItem  "ACE_elasticBandage";
_unit addItem  "ACE_quikclot";
_unit addItem  "ACE_quikclot";
_unit addItem  "ACE_quikclot";
_unit addItem "ACE_tourniquet";
_unit addItem  "ACE_morphine";
	};


		if (_type == "african_player_rpg") then {
_unit addbackpack "B_Carryall_oli";

	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShell",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShellRed",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
removeHeadgear (_this select 0);
//if (random 1 < .5) then {
//_unit addheadgear "H_Shemag_tan";};
//H_TurbanO_blk H_Shemag_tan
removeGoggles (_this select 0);
	if (random 1 < .4) then {_unit addGoggles "G_Bandanna_khk";};
removeUniform (_this select 0);
removeAllWeapons (_this select 0);
removeAllAssignedItems (_this select 0);
//if (random 1 < .3) then {
//(_this select 0) addheadgear "H_Bandanna_gry";};
(_this select 0) forceAddUniform "UK3CB_BAF_U_Smock_DPMW";
_unit addItemToVest "rhs_30Rnd_762x39mm_tracer";
_unit addItemToVest "rhs_30Rnd_762x39mm_tracer";
_unit addItemToVest "rhs_30Rnd_762x39mm_tracer";
_unit addItemToVest "rhs_30Rnd_762x39mm_tracer";
_unit addItemToVest "rhs_30Rnd_762x39mm_tracer";
_unit addItemToVest "rhs_30Rnd_762x39mm_tracer";
_unit addweapon "rhs_weap_akm";
_unit addItemToVest "rhs_rpg7_PG7VL_mag";
(unitBackpack _unit) addmagazinecargoglobal  ["rhs_rpg7_PG7VL_mag",1];
		_unit addweapon "rhs_weap_rpg7";
		_num = 2 + floor random 2;
		private ["_num"];
		x = 0;
		while {x < _num} do {
		if (x < 3) then {
		_unit addItemToVest "rhs_rpg7_PG7VL_mag";	};
		x = x + 1;
		};	
		(unitBackpack _unit) addmagazinecargoglobal  ["rhs_rpg7_PG7VL_mag",2];
			_unit linkitem "itemmap";
	_unit linkitem "itemcompass";
	_unit linkitem "itemwatch";	
	_unit unassignItem "itemradio";
(uniformContainer _unit) addItemCargoGlobal ["ACE_EarPlugs",1];
    _unit removeitem "itemradio";
_unit addItem  "ACE_packingBandage";
_unit addItem  "ACE_packingBandage";
_unit addItem  "ACE_packingBandage";
_unit addItem  "ACE_elasticBandage";
_unit addItem  "ACE_elasticBandage";
_unit addItem  "ACE_elasticBandage";
_unit addItem  "ACE_quikclot";
_unit addItem  "ACE_quikclot";
_unit addItem  "ACE_quikclot";
_unit addItem "ACE_tourniquet";
_unit addItem  "ACE_morphine";
	};







































		if (_type == "nva_player_mg") then {
_unit addbackpack "rhs_sidor";
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShell",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShellRed",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
removeHeadgear (_this select 0);


//H_TurbanO_blk H_Shemag_tan
removeGoggles (_this select 0);

removeUniform (_this select 0);
removeAllWeapons (_this select 0);
removeAllAssignedItems (_this select 0);
//if (random 1 < .3) then {
//(_this select 0) addheadgear "H_Bandanna_gry";};
(_this select 0) forceAddUniform "rhs_uniform_m88_patchless";
		
		_num = 8 + floor random 8;
		private ["_num"];
		x = 0;
		while {x < _num} do {
		if (x < 5) then {
		_unit addItemToVest "rhs_100Rnd_762x54mmR";	} else {	
		(unitBackpack _unit) addmagazinecargoglobal  ["rhs_100Rnd_762x54mmR",1];};
		x = x + 1;
		};	
		_unit addweapon "rhs_weap_pkm";
		(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",4];
			_unit linkitem "itemmap";
	_unit linkitem "itemcompass";
	_unit linkitem "itemwatch";	
(uniformContainer _unit) addItemCargoGlobal ["ACE_EarPlugs",1];
	_unit unassignItem "itemradio";
    _unit removeitem "itemradio";
_unit addItem  "ACE_packingBandage";
_unit addItem  "ACE_packingBandage";
_unit addItem  "ACE_packingBandage";
_unit addItem  "ACE_elasticBandage";
_unit addItem  "ACE_elasticBandage";
_unit addItem  "ACE_elasticBandage";
_unit addItem  "ACE_quikclot";
_unit addItem  "ACE_quikclot";
_unit addItem  "ACE_quikclot";
_unit addItem "ACE_tourniquet";
_unit addItem  "ACE_morphine";
	};





		if (_type == "nva_player_rifle") then {

_unit addbackpack "rhs_sidor";
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShell",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShellRed",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
removeHeadgear (_this select 0);

//H_TurbanO_blk H_Shemag_tan
removeGoggles (_this select 0);
removeUniform (_this select 0);
removeAllWeapons (_this select 0);
removeAllAssignedItems (_this select 0);
//if (random 1 < .3) then {
//(_this select 0) addheadgear "H_Bandanna_gry";};
(_this select 0) forceAddUniform "rhs_uniform_m88_patchless";
		
		_num = 8 + floor random 8;
		private ["_num"];
		x = 0;
		while {x < _num} do {
		if (x < 8) then {
		_unit addItemToVest "rhs_30Rnd_762x39mm_tracer";	} else {	
		(unitBackpack _unit) addmagazinecargoglobal  ["rhs_30Rnd_762x39mm_tracer",1];};
		x = x + 1;
		};	
		_unit addweapon "rhs_weap_akm";
		(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
			_unit linkitem "itemmap";
	_unit linkitem "itemcompass";
	_unit linkitem "itemwatch";	
(uniformContainer _unit) addItemCargoGlobal ["ACE_EarPlugs",1];
	_unit unassignItem "itemradio";
    _unit removeitem "itemradio";
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShellRed",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",6];
_unit addItem  "ACE_packingBandage";
_unit addItem  "ACE_packingBandage";
_unit addItem  "ACE_packingBandage";
_unit addItem  "ACE_elasticBandage";
_unit addItem  "ACE_elasticBandage";
_unit addItem  "ACE_elasticBandage";
_unit addItem  "ACE_quikclot";
_unit addItem  "ACE_quikclot";
_unit addItem  "ACE_quikclot";
_unit addItem "ACE_tourniquet";
_unit addItem  "ACE_morphine";
	};










		if (_type == "nva_player_rpg") then {
_unit addbackpack "B_Carryall_oli";

	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShell",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShellRed",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
removeHeadgear (_this select 0);
//if (random 1 < .5) then {
//_unit addheadgear "H_Shemag_tan";};
//H_TurbanO_blk H_Shemag_tan
removeGoggles (_this select 0);
	if (random 1 < .4) then {_unit addGoggles "G_Bandanna_khk";};
removeUniform (_this select 0);
removeAllWeapons (_this select 0);
removeAllAssignedItems (_this select 0);
//if (random 1 < .3) then {
//(_this select 0) addheadgear "H_Bandanna_gry";};
(_this select 0) forceAddUniform "rhs_uniform_m88_patchless";
_unit addItemToVest "rhs_30Rnd_762x39mm_tracer";
_unit addItemToVest "rhs_30Rnd_762x39mm_tracer";
_unit addItemToVest "rhs_30Rnd_762x39mm_tracer";
_unit addItemToVest "rhs_30Rnd_762x39mm_tracer";
_unit addItemToVest "rhs_30Rnd_762x39mm_tracer";
_unit addItemToVest "rhs_30Rnd_762x39mm_tracer";
_unit addweapon "rhs_weap_akm";
_unit addItemToVest "rhs_rpg7_PG7VL_mag";
(unitBackpack _unit) addmagazinecargoglobal  ["rhs_rpg7_PG7VL_mag",1];
		_unit addweapon "rhs_weap_rpg7";
		_num = 2 + floor random 2;
		private ["_num"];
		x = 0;
		while {x < _num} do {
		if (x < 3) then {
		_unit addItemToVest "rhs_rpg7_PG7VL_mag";	};
		x = x + 1;
		};	
		(unitBackpack _unit) addmagazinecargoglobal  ["rhs_rpg7_PG7VL_mag",6];
			_unit linkitem "itemmap";
	_unit linkitem "itemcompass";
	_unit linkitem "itemwatch";	
	_unit unassignItem "itemradio";
(uniformContainer _unit) addItemCargoGlobal ["ACE_EarPlugs",1];
    _unit removeitem "itemradio";
_unit addItem  "ACE_packingBandage";
_unit addItem  "ACE_packingBandage";
_unit addItem  "ACE_packingBandage";
_unit addItem  "ACE_elasticBandage";
_unit addItem  "ACE_elasticBandage";
_unit addItem  "ACE_elasticBandage";
_unit addItem  "ACE_quikclot";
_unit addItem  "ACE_quikclot";
_unit addItem  "ACE_quikclot";
_unit addItem "ACE_tourniquet";
_unit addItem  "ACE_morphine";
	};















































		if (_type == "insurgent5a") then {
_unit addbackpack "O_HMG_01_weapon_F";
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShell",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShellRed",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
removeHeadgear (_this select 0);


(_this select 0) addheadgear "H_Booniehat_khk";
//H_TurbanO_blk H_Shemag_tan
removeGoggles (_this select 0);

removeUniform (_this select 0);
removeAllWeapons (_this select 0);
removeAllAssignedItems (_this select 0);
(_this select 0) forceAddUniform "rhs_uniform_mflora_patchless";
		
		_num = 8 + floor random 8;
		private ["_num"];
		x = 0;
		while {x < _num} do {
		if (x < 5) then {
		_unit addItemToVest "JO_75rnd_RPK";	} else {	
		(unitBackpack _unit) addmagazinecargoglobal  ["rhs_30Rnd_762x39mm_tracer",1];};
		x = x + 1;
		};	
_unit addweapon "JO_RF_RPK";
		(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
			_unit linkitem "itemmap";
	_unit linkitem "itemcompass";
	_unit linkitem "itemwatch";	
	_unit unassignItem "itemradio";
    _unit removeitem "itemradio";
	};



		if (_type == "insurgent6a") then {

_unit addbackpack "O_HMG_01_weapon_F";
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShell",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShellRed",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
removeHeadgear (_this select 0);
removeGoggles (_this select 0);
removeUniform (_this select 0);
removeAllWeapons (_this select 0);
(_this select 0) addheadgear "H_Booniehat_khk";
removeAllAssignedItems (_this select 0);
(_this select 0) forceAddUniform "rhs_uniform_mflora_patchless";
		
		_num = 8 + floor random 8;
		private ["_num"];
		x = 0;
		while {x < _num} do {
		if (x < 8) then {
		_unit addItemToVest "rhs_30Rnd_762x39mm_tracer";	} else {	
		(unitBackpack _unit) addmagazinecargoglobal  ["rhs_30Rnd_762x39mm_tracer",1];};
		x = x + 1;
		};	
_unit addweapon "rhs_weap_akm";
		(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
			_unit linkitem "itemmap";
	_unit linkitem "itemcompass";
	_unit linkitem "itemwatch";	
	_unit unassignItem "itemradio";
    _unit removeitem "itemradio";
	};



























	
	if (_type == "sl") then {
removeuniform _unit;
removeVest this;
_unit forceAddUniform "usm_bdu_odg";
_unit addVest "usm_vest_LBE_rm_m";
_unit setVariable ["sl", true];
		_unit addbackpack "rhs_sidor";
			(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShell",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShellRed",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
		_unit addweapon "binocular";
		//_unit additem "ACRE_PRC148";
//(unitBackpack _unit) addItemCargoGlobal ["ACRE_PRC117F",1];
		_unit addweapon "rhs_weap_m14ebrri";
		_num = 7 + floor random 4;
		private ["_num"];
		x = 0;
		while {x < _num} do {
		if (x < 4) then {
		_unit addItemToVest "rhsusf_20Rnd_762x51_m118_special_Mag";	} else {	
		(unitBackpack _unit) addmagazinecargoglobal  ["rhsusf_20Rnd_762x51_m118_special_Mag",1];};
		x = x + 1;
		};	
		(unitBackpack _unit) addmagazinecargoglobal  ["rhsusf_20Rnd_762x51_m118_special_Mag",5];
        (uniformContainer _unit) addItemCargoGlobal ["ACE_packingBandage",2];
                 (uniformContainer _unit) addItemCargoGlobal ["ACE_elasticBandage",2];

	};
	

	if (_type == "eng") then {
		(unitBackpack _unit) addmagazinecargoglobal  ["SatchelCharge_Remote_Mag",1];
		(unitBackpack _unit) addmagazinecargoglobal  ["ClaymoreDirectionalMine_Remote_Mag",2];
		(unitBackpack _unit) addmagazinecargoglobal  ["ATMine_Range_Mag",1];
(vestContainer _unit) addItemCargoGlobal ["ACE_Clacker",1];
	};




	if (_type == "cdc11") exitwith {


	removeVest _unit;

	if (side _unit == west) then {


 (uniformContainer _unit) addItemCargoGlobal ["9Rnd_45ACP_Mag",2];
	_unit addweapon "hgun_ACPC2_F";};






(uniformContainer _unit) addItemCargoGlobal ["ACE_fieldDressing",4];
(unitBackpack _unit) addItemCargoGlobal   ["ACE_packingBandage",3];
(unitBackpack _unit) addItemCargoGlobal   ["ACE_elasticBandage",3];
(unitBackpack _unit) addItemCargoGlobal   ["ACE_quikclot",3];
(unitBackpack _unit) addItemCargoGlobal  ["ACE_tourniquet",1];
(unitBackpack _unit) addItemCargoGlobal  ["ACE_morphine",1];

};









































//G_40mm_HE
//1Rnd_HE_Grenade_shell
//arifle_TRG21_GL_F
//30Rnd_556x45_Stanag_Tracer_Green

	if (_type == "future_soldier6") then {

	//removeVest _unit;
	//_unit addvest "V_RebreatherB";
removeHeadgear _unit;
_unit addheadgear "BWA3_Knighthelm";

//30Rnd_45ACP_Mag_SMG_01_Tracer_Green
//SMG_01_F
	removeUniform _unit;
	_unit forceaddUniform "U_C_Scientist";
		_unit addbackpack "B_FieldPack_blk";
	_unit linkitem "NVGoggles";
	//		(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShell",1];
	//(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShellRed",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",5];
		_unit addweapon "binocular";
		_unit additem "ACRE_PRC148";
		//_unit addweapon "hgun_PDW2000_Holo_snds_F";
		_unit addPrimaryWeaponItem "muzzle_snds_B";
_unit addmagazine "G_40mm_HE";
		_unit addweapon "arifle_TRG21_GL_F";
		_num = 7 + floor random 4;
		private ["_num"];
		x = 0;
		while {x < _num} do {
		if (x < 4) then {
		_unit addItemToVest "30Rnd_556x45_Stanag_Tracer_Green";	} else {	
		(unitBackpack _unit) addmagazinecargoglobal  ["1Rnd_HE_Grenade_shell",1];
(unitBackpack _unit) addmagazinecargoglobal  ["1Rnd_HE_Grenade_shell",1];
		};
		x = x + 1;
		};	
		(unitBackpack _unit) addmagazinecargoglobal  ["30Rnd_9x21_Mag",5];
		//_unit addItemToUniform "9Rnd_45ACP_Mag";
		//_unit addItemToUniform "9Rnd_45ACP_Mag";
		//_unit addItemToUniform "9Rnd_45ACP_Mag";
		//_unit addItemToUniform "9Rnd_45ACP_Mag";
	};































if (_type == "future_soldier5") then {
_unit forceAddUniform "U_C_Scientist";
_unit addItemToVest "ACRE_PRC148";
_unit additem "ACRE_PRC148";
_unit addVest "V_PlateCarrierSpec_blk";
_unit addItemToVest "5Rnd_127x108_Mag";
_unit addItemToVest "5Rnd_127x108_Mag";
_unit addItemToVest "5Rnd_127x108_Mag";
_unit addItemToVest "5Rnd_127x108_Mag";
_unit addItemToVest "5Rnd_127x108_Mag";
_unit addItemToVest "5Rnd_127x108_Mag";
_unit addItemToVest "11Rnd_45ACP_Mag";
_unit additem "ACRE_PRC148";
_unit addItemToVest "Chemlight_blue";
_unit addBackpack "B_Parachute";
_unit addHeadgear "H_PilotHelmetFighter_I";
_unit addGoggles "G_Goggles_VR";
_unit addWeapon "srifle_GM6_F";
_unit addPrimaryWeaponItem "optic_Nightstalker";
_unit addWeapon "UK3CB_BAF_Tripod";
_unit addWeapon "hgun_Pistol_heavy_01_F";
_unit addHandgunItem "muzzle_snds_acp";
(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",3];
(unitBackpack _unit) addmagazinecargoglobal  ["5Rnd_127x108_Mag",5];

//_unit addHandgunItem "optic_Nightstalker";
_unit addWeapon "UK3CB_BAF_Javelin_CLU";
_unit linkItem "ACE_Altimeter";
};

	if (_type == "future_soldier4") then {

	removeVest _unit;
	_unit addvest "V_PlateCarrierSpec_blk";
removeHeadgear _unit;
_unit addheadgear "H_PilotHelmetFighter_I";
_unit additem "ACRE_PRC148";
//30Rnd_45ACP_Mag_SMG_01_Tracer_Green
//SMG_01_F
	removeUniform _unit;
	_unit forceaddUniform "U_C_Scientist";
_unit addItemToVest "ACRE_PRC148";
_unit additem "ACRE_PRC148";
		_unit addbackpack "B_FieldPack_blk";
	_unit linkitem "NVGoggles";
	//		(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShell",1];
	//(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShellRed",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",5];
		_unit addweapon "binocular";
		_unit additem "ACRE_PRC148";
_unit addItemToVest "Chemlight_blue";
		_unit addweapon "LMG_Zafir_F";
		_unit addPrimaryWeaponItem "muzzle_snds_B";
		_num = 7 + floor random 4;
		private ["_num"];
		x = 0;
//
		while {x < _num} do {
		if (x < 4) then {
		_unit addItemToVest "150Rnd_762x54_Box_Tracer";	} else {	
		(unitBackpack _unit) addmagazinecargoglobal  ["150Rnd_762x54_Box_Tracer",1];};
		x = x + 1;
		};	
		(unitBackpack _unit) addmagazinecargoglobal  ["150Rnd_762x54_Box_Tracer",5];
		//_unit addItemToUniform "9Rnd_45ACP_Mag";
		//_unit addItemToUniform "9Rnd_45ACP_Mag";
		//_unit addItemToUniform "9Rnd_45ACP_Mag";
		//_unit addItemToUniform "9Rnd_45ACP_Mag";
	};


	if (_type == "future_soldier3") then {

	removeVest _unit;
	_unit addvest "V_PlateCarrierSpec_blk";
removeHeadgear _unit;
_unit addheadgear "H_PilotHelmetFighter_I";
_unit additem "ACRE_PRC148";
//30Rnd_45ACP_Mag_SMG_01_Tracer_Green
//SMG_01_F
	removeUniform _unit;
	_unit forceaddUniform "U_C_Scientist";
_unit addItemToVest "ACRE_PRC148";
_unit additem "ACRE_PRC148";
		_unit addbackpack "B_FieldPack_blk";
	_unit linkitem "NVGoggles";
	//		(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShell",1];
	//(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShellRed",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",5];
		_unit addweapon "binocular";
_unit addItemToVest "Chemlight_blue";
		_unit additem "ACRE_PRC148";
		_unit addweapon "hgun_PDW2000_Holo_snds_F";
		_unit addPrimaryWeaponItem "muzzle_snds_B";
_unit addmagazine "Titan_AT";
		_unit addweapon "launch_I_Titan_short_F";
		_num = 7 + floor random 4;
		private ["_num"];
		x = 0;
		while {x < _num} do {
		if (x < 4) then {
		_unit addItemToVest "30Rnd_9x21_Mag";	} else {	
		(unitBackpack _unit) addmagazinecargoglobal  ["30Rnd_9x21_Mag",1];
(unitBackpack _unit) addmagazinecargoglobal  ["Titan_AT",1];
		};
		x = x + 1;
		};	
		(unitBackpack _unit) addmagazinecargoglobal  ["30Rnd_9x21_Mag",5];
		//_unit addItemToUniform "9Rnd_45ACP_Mag";
		//_unit addItemToUniform "9Rnd_45ACP_Mag";
		//_unit addItemToUniform "9Rnd_45ACP_Mag";
		//_unit addItemToUniform "9Rnd_45ACP_Mag";
	};


	if (_type == "future_soldier2") then {

	removeVest _unit;
	_unit addvest "V_PlateCarrierSpec_blk";
removeHeadgear _unit;
_unit addheadgear "H_PilotHelmetFighter_I";

//30Rnd_45ACP_Mag_SMG_01_Tracer_Green
//SMG_01_F
	removeUniform _unit;
	_unit forceaddUniform "U_C_Scientist";
_unit addItemToVest "ACRE_PRC148";
_unit addItemToVest "Chemlight_blue";
_unit additem "ACRE_PRC148";
		_unit addbackpack "B_FieldPack_blk";
	_unit linkitem "NVGoggles";
	//		(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShell",1];
	//(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShellRed",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
		_unit addweapon "binocular";
		_unit additem "ACRE_PRC148";
		_unit addweapon "arifle_TRG21_ARCO_pointer_F";
		_unit addPrimaryWeaponItem "muzzle_snds_B";
		_num = 7 + floor random 4;
		private ["_num"];
		x = 0;
		while {x < _num} do {
		if (x < 4) then {
		_unit addItemToVest "30Rnd_556x45_Stanag";	} else {	
		(unitBackpack _unit) addmagazinecargoglobal  ["30Rnd_556x45_Stanag",1];};
		x = x + 1;
		};	
		(unitBackpack _unit) addmagazinecargoglobal  ["30Rnd_556x45_Stanag",5];
		//_unit addItemToUniform "9Rnd_45ACP_Mag";
		//_unit addItemToUniform "9Rnd_45ACP_Mag";
		//_unit addItemToUniform "9Rnd_45ACP_Mag";
		//_unit addItemToUniform "9Rnd_45ACP_Mag";
	};









	if (_type == "future_soldier") then {

	removeVest _unit;
	_unit addvest "V_PlateCarrierSpec_blk";
removeHeadgear _unit;
_unit addheadgear "H_PilotHelmetFighter_I";

//30Rnd_45ACP_Mag_SMG_01_Tracer_Green
//SMG_01_F
	removeUniform _unit;
	_unit forceaddUniform "U_C_Scientist";
		_unit addbackpack "B_FieldPack_blk";
	_unit linkitem "NVGoggles";
	//		(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShell",1];
	//(unitBackpack _unit) addmagazinecargoglobal  ["SmokeShellRed",1];
	(unitBackpack _unit) addmagazinecargoglobal  ["HandGrenade",2];
		_unit addweapon "binocular";
		_unit additem "ACRE_PRC148";

_unit addItemToVest "Chemlight_blue";
_unit addItemToVest "ACRE_PRC148";

		_unit addweapon "SMG_01_F";
		_unit addPrimaryWeaponItem "muzzle_snds_B";
		_num = 7 + floor random 4;
		private ["_num"];
		x = 0;
		while {x < _num} do {
		if (x < 4) then {
		_unit addItemToVest "30Rnd_45ACP_Mag_SMG_01_Tracer_Green";	} else {	
		(unitBackpack _unit) addmagazinecargoglobal  ["30Rnd_45ACP_Mag_SMG_01_Tracer_Green",1];};
		x = x + 1;
		};	
		(unitBackpack _unit) addmagazinecargoglobal  ["30Rnd_45ACP_Mag_SMG_01_Tracer_Green",5];
		//_unit addItemToUniform "9Rnd_45ACP_Mag";
		//_unit addItemToUniform "9Rnd_45ACP_Mag";
		//_unit addItemToUniform "9Rnd_45ACP_Mag";
		//_unit addItemToUniform "9Rnd_45ACP_Mag";
	};


















































		if ( _type ==  "medic") then {
_unit setVariable ["medic", true];
	(unitBackpack _unit) additemcargoglobal ["ACE_bandage_basic",30];
    (unitBackpack _unit) additemcargoglobal ["ACE_tourniquet",12];
    (unitBackpack _unit) additemcargoglobal ["ACE_packingBandage",30];
    (unitBackpack _unit) additemcargoglobal ["ACE_morphine",10];
    (unitBackpack _unit) additemcargoglobal ["ACE_epinephrine",10];
    (unitBackpack _unit) additemcargoglobal ["ACE_personalAidKit",15];
    (unitBackpack _unit) additemcargoglobal ["ACE_elasticBandage",20];
    (unitBackpack _unit) additemcargoglobal ["ACE_salineiv",6];
    (unitBackpack _unit) additemcargoglobal ["ACE_plasmaiv",1];
    (unitBackpack _unit) additemcargoglobal ["ACE_surgical_kit",1];
	(unitBackpack _unit) additemcargoglobal ["ACE_salineIV_250",4];
	
	(unitBackpack _unit) additemcargoglobal ["ACE_quikclot",15];




	};
	
	if ( _type == "navyseal_medic") then {
	(unitBackpack _unit) additemcargoglobal ["ACE_bandage_basic",30];
    (unitBackpack _unit) additemcargoglobal ["ACE_tourniquet",12];
    (unitBackpack _unit) additemcargoglobal ["ACE_packingBandage",30];
    (unitBackpack _unit) additemcargoglobal ["ACE_morphine",10];
    (unitBackpack _unit) additemcargoglobal ["ACE_epinephrine",10];
    (unitBackpack _unit) additemcargoglobal ["ACE_personalAidKit",15];
    (unitBackpack _unit) additemcargoglobal ["ACE_elasticBandage",20];
    (unitBackpack _unit) additemcargoglobal ["ACE_salineiv",6];
    (unitBackpack _unit) additemcargoglobal ["ACE_plasmaiv",1];
    (unitBackpack _unit) additemcargoglobal ["ACE_surgical_kit",1];




	};
	
	if (side _unit == west) then {
(uniformContainer _unit) addItemCargoGlobal ["ACE_EarPlugs",1];
_unit addItem  "ACE_packingBandage";
_unit addItem  "ACE_packingBandage";
_unit addItem  "ACE_packingBandage";
_unit addItem  "ACE_elasticBandage";
_unit addItem  "ACE_elasticBandage";
_unit addItem  "ACE_elasticBandage";
_unit addItem  "ACE_quikclot";
_unit addItem  "ACE_quikclot";
_unit addItem  "ACE_quikclot";
_unit addItem "ACE_tourniquet";
_unit addItem  "ACE_morphine";
(uniformContainer _unit) addItemCargoGlobal ["ACE_Flashlight_MX991",1];
	_unit addItemToVest "9Rnd_45ACP_Mag";
	_unit addItemToVest "9Rnd_45ACP_Mag";

	_unit addweapon "hgun_ACPC2_F";};
	
	(unitBackpack _unit) additemcargoglobal ["9Rnd_45ACP_Mag",3];


//(uniformContainer _unit) addItemCargoGlobal ["ACE_EarPlugs",1];

