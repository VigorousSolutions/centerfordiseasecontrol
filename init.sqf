#include "framework\gooncorp_functions.sqf";
if (ismultiplayer) then {
titlecut ["The year is 2048, you work for the Center for Disease Control...", "black faded", 25];};



// gooncorps arma 3 framework
// all written by gooncorp
// you can use this code with permission

uo_a3_nameHUD_active = true;
movingalready = false;
uo_a3_nameHUD_enabled = true;
debug = false;
playinganimation = false;
zed = player;

totalsamples = 1;
totalloadedsamples=0;
mathvalue=false;
startedgame=false;
winner=false;
renegade=true;

placessearched = [];
placessearched = placessearched + [(getposatl player)];

















civilianmodule = {

//if (side player != west) exitwith {};
private ["_civiliansnearby"];

sleep 4; 

//playsound "z_loud1";
//charlie say3d "z_loud1";

sleep (random 20);


_civiliansnearby = false;

{


if (_x distance (_this select 0) > 1220 && side _x == civilian && !isplayer _x) then {deletevehicle _x;};



if (side _x == civilian && vehicle _x == _x && !isplayer _x && alive _x && _x distance (_this select 0) < 300) then {
_civiliansnearby = true;};
} foreach allunits;


_civCount = 0;
private ["_civCount"];
{
if (side _x == civilian) then {
_civCount = _civCount + 1;
};

} foreach allunits;

if (_civCount > 60) exitwith {};
if (_civiliansnearby) exitwith {};



_loc = [(((_this select 0)) select 0)+ 525, ((_this select 0)) select 1, 0];
_groupCivi = creategroup civilian;
x = 0;
while {x < 15 } do {
sleep .2;
x = x + 1;
_z = floor random 3;

if (_z == 0 ) then {
"c_man_shorts_1_f" createUnit [ _loc, _groupCivi,"loon1 = this", 0.6, "corporal"];};
if (_z == 1 ) then {
"c_man_casual_2_f" createUnit [ _loc, _groupCivi,"loon1 = this", 0.6, "corporal"];};
if (_z == 2 ) then {
"c_man_sport_2_f" createUnit [ _loc, _groupCivi,"loon1 = this", 0.6, "corporal"];};


};
{
_x addEventHandler ["killed", {_this spawn gooncorp_deletebody}];
} foreach units _groupCivi;



[leader _groupCivi, zed, 600] call gooncorp_spreadenemiesgeneric;


};






























































gooncorp_zombieloop = {

//_handle = [getposATL car1_1] spawn civilianmodule;

sleep 124 + (random 64);
//if (isserver) exitwith{};
while {true} do {
//hint "zombieLoop";

{
zed = _x;
publicvariable "zed";
} foreach playableunits;
{
if (random 1 < .2) then {zed = _x;};
} foreach playableunits;
publicvariable "zed";


_pos = position zed;









sleep (64 + (random 44));
if (random 1 < .3 && (vehicle zed) == zed) then {


_spot = [(getpos zed select 0)  + ((Random 2211)-1214), (getpos zed select 1)  + ((Random 2241)-1214), 0];
private ["_spot"];
while {_spot distance zed < 1000} do {
_spot = [(getpos zed select 0)  + ((Random 2220)-1210), (getpos zed select 1)  + ((Random 2220)-1210), 0];
};
location26 setpos _spot;
_handle = [location26, floor (random 5), zed] spawn gooncorp_spawnailocal_z;
};
sleep 64;
if (random 1 < .2 && (vehicle zed) == zed) then {

_spot = [(getpos zed select 0)  + ((Random 2220)-1210), (getpos zed select 1)  + ((Random 2220)-1210), 0];
private ["_spot"];
while {_spot distance zed < 1000} do {
_spot = [(getpos zed select 0)  + ((Random 2220)-1210), (getpos zed select 1)  + ((Random 2220)-1210), 0];
};
location26 setpos _spot;
_handle = [location26, (30 + (floor (random 35))), zed] spawn gooncorp_spawnailocal_z;
};



};


};














































gooncorp_zombiemission = {


//playsound "introsong";
sleep 65;
//_handle = [location8, 15, location9] spawn gooncorp_spawnai;

//_handle = [location4, 3, location4] spawn gooncorp_spawnai;

//_handle = [location2, 6, location2] spawn gooncorp_spawnai;

//_handle = [location2, 9, location2] spawn gooncorp_spawnai;

//_handle = [location25, 7, location25] spawn gooncorp_spawnai;


//sleep 140;

//_handle = [location1, 25, location4] spawn gooncorp_spawnai;





};



jipfriendly = {
sleep 10;


search = player addaction ["search", "_handle = [] spawn gooncorp_search;"];

};
















[light1, [1,0,0], 1, 3] call gooncorp_cavelight;
[light3, [.3,.3,1], .5, 3] call gooncorp_cavelight;

[light4, [1,0,0], 1, 13] call gooncorp_cavelight;



[[0,.4,0]] call gooncorp_fog_parameterized;
_handle = [] spawn jipfriendly;
lastspot = getpos player;
searchedareas = [getpos player, getpos player];

//search = player addaction ["search", "_handle = [] spawn gooncorp_search;"];

if (isserver) then {
_handle = [] spawn gooncorp_zombieloop;};

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// actual init starts here
_handle = [] spawn gooncorp_zombiemission;
initialized = false;
//[spawnarea, 1000] call gooncorp_destroybuildingsinradius ;
//_handle = [] spawn gooncorp_briefingcustominsertion;// emergency custom insertion removed for this version
//_handle = [] spawn gooncorp_preinit;
//call briefing;
execVM "briefing.sqf";
_handle = [] spawn gooncorp_keypress;
_handle = [1] spawn gooncorp_coop_scoresimple;
sleep 10;
player additem "itemradio";
["textures\vietnam_marines_goon.paa"] call gooncorp_playertextures_specific;

titlecut ["You know nothing about what is going on.  A strange green fog came in overnight and the power went out...", "black in", 10];


 