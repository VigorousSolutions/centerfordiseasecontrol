//gooncorp
//2013


               _pos = position p1;
               _velocity = [1, 1, 1];
               _color = [1, 0, 0];
               _alpha = 1;
			   zgroup = group p1;
			   			   
	

				
               ps2 = "#particlesource" createVehicleLocal _pos;  
               ps2 setParticleParams [["\Ca\Data\ParticleEffects\Universal\universal.p3d", 16, 18, 4], "", "Billboard", 1, 5, [0, 0, 0], [0, 0, 0],1, 1, 1, 0, [5], [_color + [0], _color + [_alpha], _color + [0]], [1000], .1, 0, "", "", _obj];
               ps2 setParticleRandom [0, [0, 0, 0], [0, 0, 0], 1, 0, [.03, 0, .1, 28], 0, 0];
               ps2 setParticleCircle [0, [0, 0, -3]];
               ps2 setDropInterval .01;
			   
			   
			   while {true} do {
			   {
			   ps2 setpos getpos _x;
			   sleep .05;
			   } foreach units zgroup;
			   
			   sleep .3;
			   };
			   


		

