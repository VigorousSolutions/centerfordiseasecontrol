
	
	labmachine = true;
	
	xprocessing=true;
publicvariable "xprocessing";
sleep .36;
if ( totalsamples > 1) then {
[-2, {
//if (player distance barrel2 < 70) then {
//_vesp = [] execVM "particles\particle1.gooncorp.sqf";
//};
}] call CBA_fnc_globalExecute;
disableUserInput true;
};

if (totalsamples < 1) exitwith {hintsilent parsetext format [ "<t color='#FF0000'>You do not have any tissue samples ready.</t>"];};
if (!labmachine) exitwith {hintsilent parsetext format [ "<t color='#FF0000'>No electricity!</t>"];};

if (totalsamples > 0) then {
player switchmove "RepairingKneel";
[-2, {
if (player distance barrel2 < 70) then {
hintsilent parsetext format ["<t color='#FF0000'>%1</t><t color='#00FF00'> samples ready to load into control group.</t>", totalsamples];
};
}] call CBA_fnc_globalExecute;
sleep 2;


while {totalsamples > 0} do {sleep 5 + (random 10);
player switchmove "RepairingKneel";
[-2, {
if (player distance barrel2 < 70) then {
hintsilent parsetext format ["<t color='#FF0000'>%1</t><t color='#00FF00'> samples waiting to be loaded into </t><t color='#00FFFF'>GENETIC ANALYZER</t><t color='#00FF00'><t color='#00FF00'>.</t>", totalsamples];
};
}] call CBA_fnc_globalExecute;
sleep 5 + (random 10);
totalsamples=totalsamples -1;
publicvariable "totalsamples";
if (random 1 > .3) then {
[-2, {
if (player distance barrel2 < 70) then {
hintsilent parsetext format [ "<t color='#0000FF'>The sample responded to the analysis and is now part of the control group...</t>"];
};
}] call CBA_fnc_globalExecute;
totalloadedsamples= totalloadedsamples+1;
publicvariable "totalloadedsamples";
sleep .3;
sleep 3;
[-2, {
if (player distance barrel2 < 70) then {
hintsilent parsetext format ["<t color='#FF0000'>%1</t><t color='#00FF00'> samples in control group.</t>", totalloadedsamples];
};
}] call CBA_fnc_globalExecute;
sleep 3;

} else { 
[-2, {
if (player distance barrel2 < 70) then {
hintsilent parsetext format [ "<t color='#FF0000'>Sample was contaminated and not loaded.</t>"];
};
}] call CBA_fnc_globalExecute; 
sleep 3;
[-2, {
if (player distance barrel2 < 70) then {
hintsilent parsetext format ["<t color='#FF0000'>%1</t><t color='#00FF00'> total samples in control group.</t>", totalloadedsamples];
};
}] call CBA_fnc_globalExecute;

};



};
player switchmove "";
[-2, {
if (player distance barrel2 < 70) then {
hintsilent parsetext format ["<t color='#FF0000'>%1</t><t color='#00FF00'> loaded samples are ready to be mixed with the extrapolation solution.</t>", totalloadedsamples];
};
}] call CBA_fnc_globalExecute;
knumber = { (side _x == west) && (alive _x) && (isplayer _x) } count allUnits;
sleep 1;
objectivesample= knumber*10;
samplesremaining=objectivesample - totalloadedsamples;
sleep 4;
[-2, {
if (player distance barrel2 < 70) then {
hintsilent parsetext format ["<t color='#FF0000'>%1</t><t color='#00FF00'> processing samples remaining until expected breakthrough.</t>", samplesremaining];
};
}] call CBA_fnc_globalExecute;
sleep 5;
[-2, {
if (player distance barrel2 < 70) then {
hintsilent parsetext format [ "<t color='808080'>Algorithm database ready for update.</t>"];
};
}] call CBA_fnc_globalExecute;
mathvalue=false;
publicvariable "mathvalue";
xprocessing=false;
publicvariable "xprocessing";
disableUserInput false;
if (totalloadedsamples >= objectivesample) then {winner=true;publicvariable "winner";};
if (true) exitwith {};

















};