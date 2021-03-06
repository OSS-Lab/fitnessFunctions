% File generated by Facile version 0.53a
%
tic;
global ode_tot_cputime;
global ode_num_calls;
ode_tot_cputime = 0.0;
ode_num_calls = 0;

% initial values (free nodes only)
G0241 = 12.2455004778482;
TG00001 = 0;
G0241_TG00001i00 = 0;
TG00000 = 19.99999999999999;
G0490 = 2.29458321470371;
G0490_TG00001i01 = 0;
G0490_TG00000i00 = 0;
G0241_G0490i00 = 0;
G0241_G0490_TG00000i00 = 0;
G0490_LG0000i00 = 0;
G0490_LG0000_TG00000i00 = 0;
G0490_LG0000i01 = 0;
G0490_LG0000_TG00001i01 = 0;
G0000 = 0.0317297226293716;
G0000_G0241i00 = 0;
LG0000 = 0.001;
G0000_LG0000i00 = 0;
G0000_TG00000i00 = 0;
G0000_TG00001i00 = 0;
G0241_G0241i00 = 0;
G0241_LG0000i00 = 0;
G0241_G0490_LG0000i00 = 0;
G0490_LG0000_LG0000i00 = 0;
if exist('ivalues') == 0
ivalues = [G0241 TG00001 G0241_TG00001i00 TG00000 G0490 G0490_TG00001i01 G0490_TG00000i00 G0241_G0490i00 ...
	G0241_G0490_TG00000i00 G0490_LG0000i00 G0490_LG0000_TG00000i00 G0490_LG0000i01 G0490_LG0000_TG00001i01 G0000 G0000_G0241i00 LG0000 ...
	G0000_LG0000i00 G0000_TG00000i00 G0000_TG00001i00 G0241_G0241i00 G0241_LG0000i00 G0241_G0490_LG0000i00 G0490_LG0000_LG0000i00];
end
% rate constants and constant expressions
fb00             = 7.94328234724282;
bb00             = 0.501187233627272;
kp00             = 0.00196451401732681;
fb01             = 3.98107170553497;
kp01             = 0.00231012970008316;
fb02             = 15.8489319246111;
bb01             = 0.251188643150958;
kp02             = 0.0334908898004629;
fb03             = 1.99526231496888;
fb04             = 7.92446596230555;
bb02             = 0.00398107170553497;
fb05             = 31.6227766016838;
clamp_sink_LG0000 = 4.0;
global ode_rate_constants;
ode_rate_constants = [fb00 bb00 kp00 fb01 kp01 fb02 bb01 kp02 fb03 fb04 bb02 fb05 ...
	clamp_sink_LG0000];

% time interval
t0= 0;
tf= 200000;

% call solver routine 
global event_times;
global event_flags;
ode_events = [0 0 0];
[t, y, intervals]= G034_I00_ode_event(@ode23s, @G034_I00_odes, [t0:1.0:tf], ivalues, odeset(), ode_events, [500.0], [0.001], [1e-06]);


% map free node state vector names
G0241 = y(:,1); TG00001 = y(:,2); G0241_TG00001i00 = y(:,3); TG00000 = y(:,4); G0490 = y(:,5); G0490_TG00001i01 = y(:,6); G0490_TG00000i00 = y(:,7); G0241_G0490i00 = y(:,8); G0241_G0490_TG00000i00 = y(:,9); G0490_LG0000i00 = y(:,10); 
G0490_LG0000_TG00000i00 = y(:,11); G0490_LG0000i01 = y(:,12); G0490_LG0000_TG00001i01 = y(:,13); G0000 = y(:,14); G0000_G0241i00 = y(:,15); LG0000 = y(:,16); G0000_LG0000i00 = y(:,17); G0000_TG00000i00 = y(:,18); G0000_TG00001i00 = y(:,19); G0241_G0241i00 = y(:,20); 
G0241_LG0000i00 = y(:,21); G0241_G0490_LG0000i00 = y(:,22); G0490_LG0000_LG0000i00 = y(:,23); 





if (ode_num_calls > 0)
  ode_avg_cputime = ode_tot_cputime/ode_num_calls*1000;
  str = sprintf('ODE STATS: num ode calls=%d, tot time=%f, avg time=%fms', ode_num_calls, ode_tot_cputime, ode_avg_cputime);
  disp (str)
end

% issue done message for calling/wrapper scripts
str = sprintf('Facile driver script done (elapsed time %f)',toc);
disp (str)

