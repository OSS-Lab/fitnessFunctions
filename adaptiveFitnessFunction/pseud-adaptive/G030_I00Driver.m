% File generated by Facile version 0.53a
%
tic;
global ode_tot_cputime;
global ode_num_calls;
ode_tot_cputime = 0.0;
ode_num_calls = 0;

% initial values (free nodes only)
G0000 = 2.20347691230698;
TG00000 = 19.99999999999999;
G0000_TG00000i00 = 0;
TG00001 = 0;
G0241 = 2.11598798071781;
G0241_TG00001i00 = 0;
G0490 = 1.00677529813686;
G0490_TG00000i00 = 0;
G0000_G0000i00 = 0;
G0000_G0490i00 = 0;
LG0000 = 0.001;
G0000_LG0000i00 = 0;
G0241_LG0000i00 = 0;
G0490_LG0000i00 = 0;
if exist('ivalues') == 0
ivalues = [G0000 TG00000 G0000_TG00000i00 TG00001 G0241 G0241_TG00001i00 G0490 G0490_TG00000i00 ...
	G0000_G0000i00 G0000_G0490i00 LG0000 G0000_LG0000i00 G0241_LG0000i00 G0490_LG0000i00];
end
% rate constants and constant expressions
fb00             = 1;
bb00             = 0.0158489319246111;
kp00             = 0.0456903039243915;
fb01             = 15.8489319246111;
bb01             = 0.251188643150958;
kp01             = 0.0444727353047711;
fb02             = 0.125892541179417;
bb02             = 7.94328234724282;
kp02             = 0.072316522949358;
fb03             = 31.5478672240097;
bb03             = 3.98107170553497;
fb04             = 0.501187233627272;
bb04             = 0.125892541179417;
clamp_sink_LG0000 = 4.0;
global ode_rate_constants;
ode_rate_constants = [fb00 bb00 kp00 fb01 bb01 kp01 fb02 bb02 kp02 fb03 bb03 fb04 ...
	bb04 clamp_sink_LG0000];

% time interval
t0= 0;
tf= 20000;

% call solver routine 
global event_times;
global event_flags;
ode_events = [0 0 0];
[t, y, intervals]= G030_I00_ode_event(@ode23s, @G030_I00_odes, [t0:1.0:tf], ivalues, odeset(), ode_events, [500.0], [0.001], [1e-06]);


% map free node state vector names
G0000 = y(:,1); TG00000 = y(:,2); G0000_TG00000i00 = y(:,3); TG00001 = y(:,4); G0241 = y(:,5); G0241_TG00001i00 = y(:,6); G0490 = y(:,7); G0490_TG00000i00 = y(:,8); G0000_G0000i00 = y(:,9); G0000_G0490i00 = y(:,10); 
LG0000 = y(:,11); G0000_LG0000i00 = y(:,12); G0241_LG0000i00 = y(:,13); G0490_LG0000i00 = y(:,14); 





if (ode_num_calls > 0)
  ode_avg_cputime = ode_tot_cputime/ode_num_calls*1000;
  str = sprintf('ODE STATS: num ode calls=%d, tot time=%f, avg time=%fms', ode_num_calls, ode_tot_cputime, ode_avg_cputime);
  disp (str)
end

% issue done message for calling/wrapper scripts
str = sprintf('Facile driver script done (elapsed time %f)',toc);
disp (str)
