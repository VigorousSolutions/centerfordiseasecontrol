_chuck = _this select 0;
_lal = random 329;
_val = ceil _lal;
_chuck setdammage .4;
_num = floor random 2;



_chuck addaction ["tissue", "tissue.gooncorp.sqf"];

if (random 1 < .5) then {
_chuck say3d "z_grunt1";

} else {
_chuck say3d "z_grunt3";
};

