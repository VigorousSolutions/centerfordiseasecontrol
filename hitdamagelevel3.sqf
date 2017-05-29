_chuck = _this select 0;
_lal = random 330;
_val = round _lal;
_chuck setdammage .4;
_num = floor random 2;
_chuck allowdammage false;
_zop = floor random 4;
if (_zop == 0) then {_chuck switchmove "ActsPercMrunSlowWrflDf_FlipFlopPara";};
if (_zop == 1) then {_chuck switchmove "AmovPercMstpSlowWrflDnon_ActsPpneMstpSlowWrflDr_GrenadeEscape";};
if (_zop == 2) then {_chuck switchmove "ActsPercMrunSlowWrflDf_TumbleOver";};
if (_zop == 2) then {_chuck switchmove "ActsPercMstpSnonWpstDnon_sceneBardak02";};
if (player distance _chuck < 85) then {
_yuz = ceil random 3;
playsound format ["z_grunt%1", _yuz];
};
_objPosition = getPos (_this select 0);
_objposition = (_objposition select 2);
if (_objposition>=.001 && alive _chuck) exitwith {
               _obj = vehicle (_this select 0);
               _pos = position _obj;
               _velocity = [0,0,.1];
               _color = [.45, 0, 0];
               _alpha = .4;
               _ps11 = "#particlesource" createVehicleLocal _pos;  
               _ps11 setParticleParams [["\Ca\Data\ParticleEffects\Universal\universal.p3d", 16, 4, 12], "", "Billboard", 1, 4, [0, 0, .2], _velocity, 1, 2, 1, 0, [.02 + (random .05)], [_color + [0], _color + [_alpha], _color + [0]], [1000], 1, 0, "", "", _obj];
               _ps11 setParticleRandom [.1, [0, 0, 0], [random .3, random .3, random 3.5], 1, 0, [0, 0, .2, 1.1], 0, 0];
               _ps11 setParticleCircle [0, [0, 0, 0]];
               _ps11 setDropInterval .01;
			sleep random 5;
			_chuck allowdammage true;	
if (!alive _chuck) then {deletevehicle _ps11;};			
sleep 2;
if (!alive _chuck) then {deletevehicle _ps11;};			
sleep 2;
if (!alive _chuck) then {deletevehicle _ps11;};			
sleep 2;
_chuck switchmove "";
if (!alive _chuck) then {deletevehicle _ps11;};			
sleep 2;

deletevehicle _ps11;
_chuck allowdammage true;
};
if (_objposition<0.0001 && alive _chuck) exitwith {
               _obj = vehicle (_this select 0);
               _pos = position _obj;
               _velocity = [0,0,.1];
               _color = [.5, 0, 0];
               _alpha = .3;
               _ps11 = "#particlesource" createVehicleLocal _pos;  
               _ps11 setParticleParams [["\Ca\Data\ParticleEffects\Universal\universal.p3d", 16, 4, 12], "", "Billboard", 1, 4, [0, 0, 1.3], _velocity, 1, 2, 1, 0, [.02 + (random .05)], [_color + [0], _color + [_alpha], _color + [0]], [1000], 1, 0, "", "", _obj];
               _ps11 setParticleRandom [.1, [0, 0, 0], [random .3,random .3, random 3.5], 1, 0, [0, 0, .2, 1.1], 0, 0];
               _ps11 setParticleCircle [0, [0, 0, 0]];
               _ps11 setDropInterval .01;
			sleep 1;
			sleep random 5;
			_chuck allowdammage true;	
if (!alive _chuck) then {deletevehicle _ps11;};			
sleep 2;
if (!alive _chuck) then {deletevehicle _ps11;};			
sleep 2;
if (!alive _chuck) then {deletevehicle _ps11;};			
sleep 2;
if (!alive _chuck) then {deletevehicle _ps11;};	
_chuck allowdammage true;		
_chuck switchmove "";
sleep 2;
if (!alive _chuck) then {deletevehicle _ps11;};			
sleep 2;
if (!alive _chuck) then {deletevehicle _ps11;};			
sleep 2;



deletevehicle _ps11;
};
else exitwith{};
