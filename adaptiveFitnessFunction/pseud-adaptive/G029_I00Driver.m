% File generated by Facile version 0.53a
%
tic;
global ode_tot_cputime;
global ode_num_calls;
ode_tot_cputime = 0.0;
ode_num_calls = 0;

% initial values (free nodes only)
G0000 = 1.06265664397954;
TG00000 = 19.99999999999999;
G0000_TG00000i00 = 0;
TG00001 = 0;
G0241 = 5.67107889496187;
G0241_TG00001i00 = 0;
G0490R = 1.33690241173597;
G0490R_TG00001i01 = 0;
G0490R_TG00000i00 = 0;
G0490T = 0;
G0490T_TG00001i01 = 0;
G0490T_TG00000i00 = 0;
G0490R_G0490Ri00 = 0;
G0490R_G0490R_TG00001i00 = 0;
G0490R_G0490Ti00 = 0;
G0490R_G0490T_TG00001i00 = 0;
G0490T_G0490R_TG00001i00 = 0;
G0490R_LG0000i00 = 0;
G0490R_LG0000_TG00000i00 = 0;
G0490R_LG0000i01 = 0;
G0490R_LG0000_TG00001i01 = 0;
G0490T_G0490Ti00 = 0;
G0490T_G0490T_TG00001i00 = 0;
G0490T_LG0000i00 = 0;
G0490T_LG0000_TG00000i00 = 0;
G0490T_LG0000i01 = 0;
G0490T_LG0000_TG00001i01 = 0;
LG0000 = 0.001;
G0000_LG0000i00 = 0;
G0241_LG0000i00 = 0;
G0490R_G0490R_LG0000i00 = 0;
G0490R_G0490T_LG0000i00 = 0;
G0490T_G0490R_LG0000i00 = 0;
G0490T_G0490T_LG0000i00 = 0;
G0490R_LG0000_LG0000i00 = 0;
G0490T_LG0000_LG0000i00 = 0;
if exist('ivalues') == 0
ivalues = [G0000 TG00000 G0000_TG00000i00 TG00001 G0241 G0241_TG00001i00 G0490R G0490R_TG00001i01 ...
	G0490R_TG00000i00 G0490T G0490T_TG00001i01 G0490T_TG00000i00 G0490R_G0490Ri00 G0490R_G0490R_TG00001i00 G0490R_G0490Ti00 G0490R_G0490T_TG00001i00 ...
	G0490T_G0490R_TG00001i00 G0490R_LG0000i00 G0490R_LG0000_TG00000i00 G0490R_LG0000i01 G0490R_LG0000_TG00001i01 G0490T_G0490Ti00 G0490T_G0490T_TG00001i00 G0490T_LG0000i00 ...
	G0490T_LG0000_TG00000i00 G0490T_LG0000i01 G0490T_LG0000_TG00001i01 LG0000 G0000_LG0000i00 G0241_LG0000i00 G0490R_G0490R_LG0000i00 G0490R_G0490T_LG0000i00 ...
	G0490T_G0490R_LG0000i00 G0490T_G0490T_LG0000i00 G0490R_LG0000_LG0000i00 G0490T_LG0000_LG0000i00];
end
% rate constants and constant expressions
fb00             = 1;
bb00             = 0.0316227766016838;
kp00             = 0.1;
fb01             = 1.99526231496888;
bb01             = 1;
kp01             = 0.0317297226293716;
fb02             = 3.98107170553497;
bb02             = 1.99526231496888;
bb03             = 0.0630957344480193;
kp02             = 0.154057655541883;
fb03             = 0.251188643150958;
kp03             = 0.268010921925845;
fb04             = 1.99053585276749;
bb04             = 0.251188643150958;
fu00             = 89.7592425153894;
bu00             = 89.7592425153894;
fu01             = 36.9109671829072;
bu01             = 584.999406153452;
clamp_sink_LG0000 = 4.0;
global ode_rate_constants;
ode_rate_constants = [fb00 bb00 kp00 fb01 bb01 kp01 fb02 bb02 bb03 kp02 fb03 kp03 ...
	fb04 bb04 fu00 bu00 fu01 bu01 clamp_sink_LG0000];

% time interval
t0= 0;
tf= 200000;

% call solver routine 
global event_times;
global event_flags;
ode_events = [0 0 0];
[t, y, intervals]= G029_I00_ode_event(@ode23s, @G029_I00_odes, [t0:1.0:tf], ivalues, odeset(), ode_events, [500.0], [0.001], [1e-06]);


% map free node state vector names
G0000 = y(:,1); TG00000 = y(:,2); G0000_TG00000i00 = y(:,3); TG00001 = y(:,4); G0241 = y(:,5); G0241_TG00001i00 = y(:,6); G0490R = y(:,7); G0490R_TG00001i01 = y(:,8); G0490R_TG00000i00 = y(:,9); G0490T = y(:,10); 
G0490T_TG00001i01 = y(:,11); G0490T_TG00000i00 = y(:,12); G0490R_G0490Ri00 = y(:,13); G0490R_G0490R_TG00001i00 = y(:,14); G0490R_G0490Ti00 = y(:,15); G0490R_G0490T_TG00001i00 = y(:,16); G0490T_G0490R_TG00001i00 = y(:,17); G0490R_LG0000i00 = y(:,18); G0490R_LG0000_TG00000i00 = y(:,19); G0490R_LG0000i01 = y(:,20); 
G0490R_LG0000_TG00001i01 = y(:,21); G0490T_G0490Ti00 = y(:,22); G0490T_G0490T_TG00001i00 = y(:,23); G0490T_LG0000i00 = y(:,24); G0490T_LG0000_TG00000i00 = y(:,25); G0490T_LG0000i01 = y(:,26); G0490T_LG0000_TG00001i01 = y(:,27); LG0000 = y(:,28); G0000_LG0000i00 = y(:,29); G0241_LG0000i00 = y(:,30); 
G0490R_G0490R_LG0000i00 = y(:,31); G0490R_G0490T_LG0000i00 = y(:,32); G0490T_G0490R_LG0000i00 = y(:,33); G0490T_G0490T_LG0000i00 = y(:,34); G0490R_LG0000_LG0000i00 = y(:,35); G0490T_LG0000_LG0000i00 = y(:,36); 





if (ode_num_calls > 0)
  ode_avg_cputime = ode_tot_cputime/ode_num_calls*1000;
  str = sprintf('ODE STATS: num ode calls=%d, tot time=%f, avg time=%fms', ode_num_calls, ode_tot_cputime, ode_avg_cputime);
  disp (str)
end

% issue done message for calling/wrapper scripts
str = sprintf('Facile driver script done (elapsed time %f)',toc);
disp (str)
