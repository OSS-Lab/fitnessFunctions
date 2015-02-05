% File generated by Facile version 0.53a
%
tic;
global ode_tot_cputime;
global ode_num_calls;
ode_tot_cputime = 0.0;
ode_num_calls = 0;

% initial values (free nodes only)
G0000R = 1.10659389469887;
TG00000 = 19.99999999999999;
G0000R_TG00000i00 = 0;
TG00001 = 0;
G0000T = 0;
G0000T_TG00000i00 = 0;
G0241 = 2.26380340952145;
G0241_TG00001i00 = 0;
G0490 = 1.10659389469887;
G0490_TG00001i00 = 0;
LG0000 = 0.001;
G0000R_LG0000i00 = 0;
G0000T_LG0000i00 = 0;
G0241_G0241i00 = 0;
G0241_G0490i00 = 0;
G0241_LG0000i00 = 0;
G0490_G0490i00 = 0;
G0490_LG0000i00 = 0;
if exist('ivalues') == 0
ivalues = [G0000R TG00000 G0000R_TG00000i00 TG00001 G0000T G0000T_TG00000i00 G0241 G0241_TG00001i00 ...
	G0490 G0490_TG00001i00 LG0000 G0000R_LG0000i00 G0000T_LG0000i00 G0241_G0241i00 G0241_G0490i00 G0241_LG0000i00 ...
	G0490_G0490i00 G0490_LG0000i00];
end
% rate constants and constant expressions
fb00             = 0.501187233627272;
bb00             = 0.251188643150958;
kp00             = 2.48825238006028;
fb01             = 0.251188643150958;
kp01             = 0.00360732067352488;
fb02             = 251.188643150958;
bb01             = 3.98107170553497;
kp02             = 0.234153938071853;
fb03             = 501.187233627272;
bb02             = 1.99526231496888;
fb04             = 0.00792446596230555;
bb03             = 0.0158489319246111;
fb05             = 0.00794328234724282;
bb04             = 0.0316227766016838;
fb06             = 0.00199053585276748;
bb05             = 0.0630957344480193;
fu00             = 4.24195427069203;
bu00             = 4.8553105030699;
fu01             = 2.3304977090916;
bu01             = 5.32230436442354;
clamp_sink_LG0000 = 4.0;
global ode_rate_constants;
ode_rate_constants = [fb00 bb00 kp00 fb01 kp01 fb02 bb01 kp02 fb03 bb02 fb04 bb03 ...
	fb05 bb04 fb06 bb05 fu00 bu00 fu01 bu01 clamp_sink_LG0000];

% time interval
t0= 0;
tf= 200000;

% call solver routine 
global event_times;
global event_flags;
ode_events = [0 0 0];
[t, y, intervals]= G052_I00_ode_event(@ode23s, @G052_I00_odes, [t0:1.0:tf], ivalues, odeset(), ode_events, [500.0], [0.001], [1e-06]);


% map free node state vector names
G0000R = y(:,1); TG00000 = y(:,2); G0000R_TG00000i00 = y(:,3); TG00001 = y(:,4); G0000T = y(:,5); G0000T_TG00000i00 = y(:,6); G0241 = y(:,7); G0241_TG00001i00 = y(:,8); G0490 = y(:,9); G0490_TG00001i00 = y(:,10); 
LG0000 = y(:,11); G0000R_LG0000i00 = y(:,12); G0000T_LG0000i00 = y(:,13); G0241_G0241i00 = y(:,14); G0241_G0490i00 = y(:,15); G0241_LG0000i00 = y(:,16); G0490_G0490i00 = y(:,17); G0490_LG0000i00 = y(:,18); 





if (ode_num_calls > 0)
  ode_avg_cputime = ode_tot_cputime/ode_num_calls*1000;
  str = sprintf('ODE STATS: num ode calls=%d, tot time=%f, avg time=%fms', ode_num_calls, ode_tot_cputime, ode_avg_cputime);
  disp (str)
end

% issue done message for calling/wrapper scripts
str = sprintf('Facile driver script done (elapsed time %f)',toc);
disp (str)

