// gooncorps arma 3 framework
// all written by gooncorp
// you can use this code with permission

uo_a3_nameHUD_active = true;
uo_a3_nameHUD_enabled = true;
RscSpectator_allowFreeCam = true; 
debug = true;

briefing = {
if (isDedicated) exitWith { };
    if (!isnil "player") then {
	waitUntil {!(isNull player)};
	waitUntil {player==player};};

	player createDiaryRecord ["Diary",["MISSION NOTES","
	
		<br/>Victory is achieved by completing the mission as indicated.
		<br/>
		<br/>
		<br/> End Conditions:
		<br/> - 40% of Enemy Force killed.
		<br/> - 60% of Friendly Forces killed.
		<br/>
		<br/> Medical:
		<br/> - Only Medics can use Epi and Morphine.
		<br/> - Anyone can use Bandages.
		<br/>
		<br/> Intent: Destroy or slow down enemy convoy.
		<br/>
		<br/>
		<br/> Credits:
		<br/> - A mission by Gooncorp.

	"]];	
	

	player createDiaryRecord ["Diary",["APPENDIX A: Mission TO&E","

		<br/>A Company, 1st Battalion, 6th Cavalry Regiment.
		<br/>	[
		<br/>	[-- 1 Platoon, 16 Personnel
		<br/>	[				1 Light Infantry Squad, 1 HQ Squad
		<br/>	[					X1 Ammo Crate
			

	"]];

	player createDiaryRecord ["Diary",["COMMAND AND SIGNAL","

		<br/>1. Command 
		<br/>
		<br/>Bravo Company HQ located at US Airbase on main island of Greece.
		<br/>
		<br/>2. Signals
		<br/>
		<br/>a. Radio Frequencies
		<br/>
		<br/>Short Range:
		<br/>
		<br/>Channel 1
		<br/>
		<br/>Long Range: (AN/PRC-77)
		<br/>
		<br/>  2 Platoon Net   - Channel 2, 31.775
		<br/>  Company Net     - Channel 5, 47.350
		<br/>  Battalion Fire Support Net - Channel 6, 51.850
		<br/>
		<br/>b. Codewords
		<br/>
		<br/>Nil
		<br/>
		<br/>c. Special Signals
		<br/>
		<br/>Nil
		<br/>
		<br/>d. Callsigns
		<br/>
		<br/>  Blackjack 2'0 	- 2 Platoon HQ
		<br/>  Blackjack 2'1 	- A Squad
		<br/>
		<br/>
		<br/>e. Passwords
		<br/>
		<br/>Nil
	"]];
			
	player createDiaryRecord ["Diary",["SERVICE SUPPORT","
	
		<br/>1. Support
		<br/>
		<br/>a. Fires
		<br/>
		<br/>Nil
		<br/>
		<br/>2. Service
		<br/>
		<br/>a. General
		<br/>
		<br/>Service and Support is available at the US Airbase.
		<br/>
		<br/>b. Handling of Prisoners
		<br/>
		<br/>Restrain and transport to GRID 064 070 and turn over to 1st Battlion MP Detachment to hold for processing.
		
	"]];

	player createDiaryRecord ["Diary",["EXECUTION","
		
		<br/>Intent Statement: It is the commander's intent that the mission be completed swiftly, with minimal friendly casualties and a high enemy body count.
		<br/>
		<br/>1. Concept of the Operation
		<br/>
		<br/> Alpha platoon is to suprise attack an enemy convoy spotted coming into the area.
		<br/>
		<br/>2. Maneuver
		<br/>
		<br/>Mission commander's discretion.
		<br/>
		<br/>3. Timing
		<br/>
		<br/>Mission commander's discretion.
		<br/>
		<br/>4. Tasks to Maneuver Units
		<br/>
		<br/>a. A Company:
		<br/>
		<br/>1 platoon shall setup and ambush anticipating the enemies advance.
		<br/>
		<br/>Use standard ambush techniques.
		<br/>

	"]];
	
	
	player createDiaryRecord ["Diary",["MISSION","
		<br/>1 Platoon shall attempt to suprise and disrupt a Russian convoy spotted coming into the area.
	"]];
	
	player createDiaryRecord ["Diary",["iii. Terrain and Weather","
		<br/>1. Terrain
		<br/>
		<br/>Terrain in the highlands is extremely restrictive heavy jungle, providing a high level of concealment for light infantry but lack of mobility for vehicles. Terrain in the general area is largely moderate jungle canopy, consisting of gently sloping farmland and ricepattys interspersed with light formations of straw hamlets and dirt service roads.
		<br/>
		<br/>2. Obstacles
		<br/>
		<br/>The enemy has been known to employ mines and improvised explosives as well as booby-traps leading up to built up areas. It is unknown if the enemy has positioned any obstacles in the interior of the jungle.
		<br/>
		<br/>3. Key Terrain
		<br/>
		<br/>The dominant terrain features include hilltops that overlook built up areas, main supply routes, and large breaks in forested areas.
		<br/>
		<br/>4. Weather
		<br/>
		<br/>Visibility is poor due to fog and rain, Winds are medium, approximately 15-20km/h. Cloud cover is moderate. Temperature is approximately 35 degrees celsius with moderate humidity.
	"]];
	player createDiaryRecord ["Diary",["ii. Enemy","
		<br/>1. Enemy Forces
		<br/>
		<br/>a. Disposition:
		<br/>
		<br/>The enemy disposition in this area is about a company size of infantry in a large convoy of 5 - 7 trucks.
		<br/>
		<br/>b. Composition:
		<br/>
		<br/>Enemy forces operating in our area of operations consist of support infantry and regular mechanized infantry.
		<br/>
		<br/>c. Strength:
		<br/>
		<br/>Enemy force strength is estimated to be approximately a reinforced infantry company of Russian regulars.
		<br/>
		<br/>d. Most Probable Course of Action
		<br/>
		<br/>Enemy forces trying to defend their convoy against ambush.
		<br/>
		<br/>e. Most Dangerous Course of Action
		<br/>
		<br/>Enemy forces fix and neutralise friendly force with concentrated return fire and aggressive maneuvering.
		<br/>
		<br/>NVA FORCES:
		<br/><img image='pics\enemy1.jpg' width='256' height='256' />
		<br/> 
		<br/>VIETCONG FORCES:
		<br/><img image='pics\enemy2.jpg' width='256' height='256' />
	"]];
	player createDiaryRecord ["Diary",["i. Friendly","
		<br/>2. Friendly Forces
		<br/>
		<br/>a. Disposition:
		<br/>
		<br/>Friendly forces consist of your platoon in the area.  You are the only friendly forces for 20km.
		<br/>
		<br/>b. Higher Units Mission:
		<br/>
		<br/>The Russians have been building up their forces on the border for the last 2 months.  They have decided to move a supply convoy over the border and I doubt they expect we are here or will dare attack them.
		<br/>
		<br/>c. Composition:
		<br/>
		<br/>1 Platoon minus from Alpha Company.
		<br/>
		<br/>See Appendix A for detailed Organization.
		<br/>
		<br/>d. Strength:
		<br/>
		<br/>2 Platoon forces are at reduced strength.
		<br/>
		<br/><img image='pics\friendly.jpg' width='256' height='256' /><br/>
	"]];
	
	player createDiaryRecord ["Diary",["SITUATION","

<br/><img image='pics\airbase.jpg' width='256' height='256' />
<br/>
<br/>
Our 2nd Lieutenant looks nervous.
<br/>
<br/>
Charlie is on the move on the mountain and it looks like we are all that is between them and the civilian population to the northeast.
<br/>
<br/>
We are going to be in combat with a large enemy force come tomorrow. 
<br/>
<br/>
This unit has been training together for close to 6 months now, we can do this.
<br/>
<br/>
Disco!
		<br/>
		<br/>
		<br/>	
	"]];



};

gooncorp_debugging_toggle = {
if (debug) then {debug = false;hint "GOONCORP_DEBUGGING DEACTIVATED";} else {debug = true; _handle = [] spawn gooncorp_debug;hint "GOONCORP_DEBUGGING ACTIVATED";};
};

gooncorp_debugging_helpmenu = {
hint "GOONCORP_DEBUGGING MENU COMMANDS: \n\nshift - d		(toggle debug menu) \n\nshift - f		(melee attack) \n\nshift - h		(fix headbug) \n\nshift r		(reset gear)";
};

gooncorp_keypress = {
//written by gooncorp
// do not copy
private ["_phandler"];
sleep 1;
_pHandler = (findDisplay 46) displayAddEventHandler ["keydown", "
	if ((_this select 1) in [0x20] && (_this select 2) ) then
	{
	call gooncorp_debugging_toggle;
	};	
	
	if ((_this select 1) in [0x3B] && (_this select 2)) then
	{
	call gooncorp_debugging_helpmenu;
	};	
"];
};

gooncorp_scoresimple =
	{
	ended = false;
		while {true } do {
		
			enemyCount = 0;
				{
				if (side _x == east && alive _x) then {
					enemyCount = enemyCount + 1;
				};
			} foreach allunits;
		if (enemyCount < 40 && !ended) then {
		ended = true;
		"end1" call BIS_fnc_endMission;
		};
	sleep 30;
	};
};
/*


2x Packing bandage
2x Bandage (Basic)
2x Bandage (Elastic)
1x Tourniquet
1x Nasopharyngeal Tube
1x Personal Aid Kit
 
(uniformContainer _unit) addItemCargoGlobal ["cse_bandage_basic", 2];
(uniformContainer _unit) addItemCargoGlobal ["cse_bandageElastic", 2];
(uniformContainer _unit) addItemCargoGlobal ["cse_packing_bandage", 2];
(uniformContainer _unit) addItemCargoGlobal ["cse_tourniquet", 1];
(uniformContainer _unit) addItemCargoGlobal ["cse_nasopharyngeal_tube", 1];
(uniformContainer _unit) addItemCargoGlobal ["cse_personal_aid_kit", 1];

This loadout should be enough to sustain a platoon for a medium length mission. Larger missions may require multiple medics or dedicated medical facility.
20x Packing Bandage
20x Bandage (Basic)
20x Bandage (Elastic)
20x Morphine auto injector
20x Epinephrine auto injector
5x Tourniquet
5x Nasopharyngeal Tube
5x Personal Aid kit
5x Plasma/Blood/Saline (1000ML)
 
(unitBackpack _unit) addItemCargoGlobal ["cse_bandage_basic", 20];
(unitBackpack _unit) addItemCargoGlobal ["cse_bandageElastic", 20];
(unitBackpack _unit) addItemCargoGlobal ["cse_packing_bandage", 20];
(unitBackpack _unit) addItemCargoGlobal ["cse_tourniquet", 5];
(unitBackpack _unit) addItemCargoGlobal ["cse_blood_iv", 5];
(unitBackpack _unit) addItemCargoGlobal ["cse_morphine", 20];
(unitBackpack _unit) addItemCargoGlobal ["cse_epinephrine", 20];
(unitBackpack _unit) addItemCargoGlobal ["cse_personal_aid_kit", 5];
(unitBackpack _unit) addItemCargoGlobal ["cse_nasopharyngeal_tube", 5];

*/


gooncorp_cms = {	
	if (isnil "medic1") then {
	medic1 = 1;
	};
	if (isnil "medic2") then {
	medic2 = 1;
	};
	if (isnil "medic3") then {
	medic3 = 1;
	};
	_mediclist = [medic1, medic2, medic3];
	_medicEquipment = [
	"cse_bandage_basic",
	"cse_packing_bandage",
	"cse_tourniquet",
	"cse_splint",
	"cse_morphine",
	"cse_atropine",
	"cse_epinephrine",
	"cse_personal_aid_kit",
	"cse_bandageElastic"
	];
	{
	if (player == _x) then {
		{ 
		player addmagazine _x;
		player addmagazine _x;
		} foreach _medicEquipment;
	} foreach _mediclist
	} foreach allunits;
};
gooncorp_debug = {
while {true} do {
if (!debug) exitWith {hint "STOPPING DEBUG!";};
totalOpfor = 0;
totalBlufor = 0;
{
if (side _x == east && alive _x) then {
totalOpfor = totalOpfor + 1;
};
if (side _x == west && alive _x) then {
totalBlufor = totalBlufor + 1;
};
} foreach allunits;
hintsilent format ["GOONCORP DEBUGGING: \n \n pos:%1 \n  magazine count : %2 \n all units: %3 \n total blufor count: %4 \n total opfor count: %5 \n time: %6 \n damage taken: %7 \n classname: %8 \n faction: %9 \n group count: %10", position player, 
count magazines player, count allunits, totalBlufor, totalOpfor, time, damage player, typeof player, side player, count units (group player)];
sleep 4;
};
};
gooncorp_preinit = {
if (initialized) exitwith {hint "already ran init!";};
initialized = true;
sleep 15;

call gooncorp_cms;
call gooncorp_gearscript;
_handle = [] spawn gooncorp_scoresimple;
_handle = [] spawn gooncorp_debug;
_handle = [] spawn gooncorp_keypress;
};

gooncorp_gearscript = 
	{
	if (local player) then {
	player addbackpack "B_Carryall_ocamo";
	if (typeof player == "rhsusf_army_ucp_squadleader") then {
		(unitBackpack player) addmagazinecargo ["1Rnd_HE_Grenade_shell",24];
		(unitBackpack player) addmagazinecargo ["30Rnd_556x45_Stanag",4];
	};
	if (typeof player == "rhsusf_army_ucp_marksman") then {
		(unitBackpack player) addmagazinecargo ["20Rnd_762x51_Mag",14];
	};
	if (typeof player == "rhsusf_army_ucp_machinegunner") then {
		(unitBackpack player) addmagazinecargo ["rhsusf_100Rnd_762x51",3];
	};
	if (typeof player == "rhsusf_army_ucp_grenadier") then {
		(unitBackpack player) addmagazinecargo ["1Rnd_HE_Grenade_shell",24];
		(unitBackpack player) addmagazinecargo ["30Rnd_556x45_Stanag",4];
	};
	if (typeof player == "rhsusf_army_ucp_engineer") then {
		(unitBackpack player) addmagazinecargo ["SatchelCharge_Remote_Mag",1];
		(unitBackpack player) addmagazinecargo ["ClaymoreDirectionalMine_Remote_Mag",2];
		(unitBackpack player) addmagazinecargo ["ATMine_Range_Mag",1];
	};
	if (typeof player == "rhsusf_army_ucp_javelin") then {
		(unitBackpack player) addmagazinecargo ["rhs_fgm148_magazine_AT",2];
	};
	if (typeof player == "rhsusf_army_ucp_riflemanat") then {
		(unitBackpack player) addmagazinecargo ["rhs_m136_mag",4];
	};
	};
};


gooncorp_destroybuildingsinradius = {// called with (gameobjectlocatiion gameObject, radius float)
_buildings = position (_this select 0) nearObjects ["House",(_this select 1)];
{
hideobject _x;
} foreach _buildings;
};

gooncorp_respawnevent = {
call BIS_fnc_respawnSpectator;
};


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// actual init starts here

initialized = false;
[spawnarea, 1000] call gooncorp_destroybuildingsinradius ;
_handle = [] spawn gooncorp_preinit;
call briefing;
player addEventHandler ["killed", {_this spawn gooncorp_respawnevent}];

 