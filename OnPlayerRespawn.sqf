


if (player distance specpen < 200) then {
	  [true] call acre_api_fnc_setSpectator;
[] execVM "spectator.sqf";
[player] join grpnull; };