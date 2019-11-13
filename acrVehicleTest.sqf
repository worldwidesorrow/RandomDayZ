/*
	Spawns ACR vehicles near the hangars at the NWAF for testing. Credit sam563 for the classname list.
	Place file on the root of the dayz_server PBO and place this line at the bottom of server_functions.sqf:
	call compile preprocessFileLineNumbers "\z\addons\dayz_server\acrVehicleTest.sqf";
	Created 13-11-2019 by JasonTM
*/                                                   
                       
private ["_serverCreateVehicles","_veh"];

_serverCreateVehicles = {
	{		
		_veh = (_x select 0) createVehicle [0,0,0];
		_veh setDir (_x select 2);
		_veh setPos (_x select 1);
		dayz_serverObjectMonitor set [count dayz_serverObjectMonitor,_veh];
	} count _this;
};

[
	["Octavia_ACR", [4880.7427, 10062.665],-120],
	["LandRover_Ambulance_ACR", [4945.0786, 9952.0859],-120],
	["T810Reammo_ACR", [4940.4438, 9960.0059],-120],
	["T810Refuel_ACR", [4935.5151, 9968.4619],-120],
	["T810Repair_ACR", [4931.7256, 9974.7529],-120],
	["T810_ACR", [4927.6328, 9981.9941],-120],
	["T810A_MG_ACR", [4923.3657, 9989.5391],-120],
	["T810_Open_ACR", [4919.5132, 9996.1533],-120],
	["T810_Des_ACR", [4911.8096, 10009.37],-120],
	["T810_Open_Des_ACR", [4915.7358, 10002.608],-120],
	["T810A_Des_MG_ACR", [4908.6348, 10014.595],-120],
	["UAZ_Unarmed_ACR", [4905.168, 10020.571],-120],
	["Dingo_GL_DST_ACR", [4901.7461, 10025.951],-120],
	["Dingo_DST_ACR", [4899.1494, 10030.695],-120],
	["BMP2_Des_ACR", [4896.0854, 10036.043],-120],
	["BRDM2_Desert_ACR", [4893.0889, 10041.288],-120],
	["M1114_AGS_ACR", [4889.7686, 10046.819],-120],
	["M1114_DSK_ACR", [4887.1748, 10052.063],-120],
	["RM70_ACR", [4884.1533, 10056.983],-120],
	["L159_ACR", [4868.3062, 10084.35],-120],
	["L39_ACR", [4855.2651, 10106.632],-120],
	["L39_2_ACR", [4844.0181, 10126.604],-120],
	["Mi24_D_CZ_ACR", [4832.7134, 10146.007],-120]
] call _serverCreateVehicles;
