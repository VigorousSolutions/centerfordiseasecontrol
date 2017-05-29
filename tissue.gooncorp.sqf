ioctioned = _this select 0;
ioctioner = _this select 1;
fioction = _this select 2;
/*
if (player == hunter1) exitwith {player sidechat "I cannot take samples because I have not been to medical school.";};
if (player == chen2) exitwith {player sidechat "I cannot take samples because I have no completed medical school, that is why I work for Dr Chen.";};
if (player == civi1) exitwith {player sidechat "I cannot take samples because I have not been to medical school.";};
if (player == civi2) exitwith {player sidechat "I cannot take samples because I have not been to medical school.";};
if (player == civi3) exitwith {player sidechat "I cannot take samples because I have not been to medical school.";};
if (player == civi4) exitwith {player sidechat "I cannot take samples because I have not been to medical school.";};
if (player == civi5) exitwith {player sidechat "I cannot take samples because I have not been to medical school.";};
if (player == civi6) exitwith {player sidechat "I cannot take samples because I have not been to medical school.";};


if (player == civi7) exitwith {player sidechat "For crying out loud I am a sailor, I can clean fish thats about it.";};
if (player == civi8) exitwith {player sidechat "For crying out loud I am a sailor, I can clean fish thats about it.";};
if (player == civi9) exitwith {player sidechat "For crying out loud I am a sailor, I can clean fish thats about it.";};
*/
publicvariable "ioctioner";
publicvariable "ioctioned";
publicvariable "dtion";
_dir = getdir ioctioned;
sleep .4;
[-2, {ioctioned removeaction fioction; ioctioner sidechat "Taking sample, cover me.";}] call CBA_fnc_globalExecute;
_talk1 = ["Drawing", "Taking", "Extracting", "Procuring", "Exacting", "Cutting"];
_talk2 = ["bone and tissue","tissue","blood", "biological", "flesh", "fluid"];
_talk3 = ["sample."];
_atalk1 = _talk1 select (floor random 6);
_atalk2 = _talk2 select (floor random 6);
_atalk3 = _talk3 select (floor random 1);
ioctioner sidechat format ["%1 %2 %3", _atalk1,_atalk2,_atalk3];
sleep 1 + (random 3);
_dhowmany = ceil 5 + (random 10);
_howmany = ceil _dhowmany;
ioctioner attachTo [ioctioned,[0,0,0]]; 
ioctioner setdir _dir;
ioctioner sidechat format ["This should take about %1 seconds.", _howmany];
playsound "tissuesample";
 _cam = "camera" camcreate [0,0,55]; 
 _cam cameraeffect ["internal", "front"] ; 
_cam camsettarget player; 
_cam camsetrelpos [0,3,1]; 
_cam camcommit 0; 
player switchmove "AinvPknlMstpSnonWrflDnon_medic1";
[-2, {ioctioner switchmove "AinvPknlMstpSnonWrflDnon_medic1";}] call CBA_fnc_globalExecute;
sleep _howmany;
detach ioctioner;
detach player;
player switchmove "";
[-2, {ioctioner switchmove "";}] call CBA_fnc_globalExecute;
[-2, {ioctioner sidechat "I got the sample.";}] call CBA_fnc_globalExecute;
player cameraEffect ["terminate","back"]; 
camDestroy _cam; 
totalsamples = totalsamples +1;
sleep .01;
publicvariable "totalsamples";
sleep .3;
sleep 1;
hint format ["Total Samples:  %1", totalsamples];
if (true) exitwith {};




