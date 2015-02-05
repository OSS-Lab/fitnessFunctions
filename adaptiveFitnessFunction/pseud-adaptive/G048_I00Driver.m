% File generated by Facile version 0.53a
%
tic;
global ode_tot_cputime;
global ode_num_calls;
ode_tot_cputime = 0.0;
ode_num_calls = 0;

% initial values (free nodes only)
G0000 = 1.48943147721724;
TG00000 = 9.99999999999999;
G0000_TG00000i00 = 0;
TG00001 = 0;
G0241R = 2.42194470084959;
G0241R_TG00001i00 = 0;
G0241T = 0;
G0241T_TG00001i00 = 0;
G0490R = 1.41110755578985;
G0490R_TG00001i00 = 0;
G0490T = 0;
G0490T_TG00001i00 = 0;
LG0000 = 0.001;
G0000_LG0000i00 = 0;
G0241R_LG0000i00 = 0;
G0241T_LG0000i00 = 0;
G0490R_LG0000i00 = 0;
G0490T_LG0000i00 = 0;
if exist('ivalues') == 0
ivalues = [G0000 TG00000 G0000_TG00000i00 TG00001 G0241R G0241R_TG00001i00 G0241T G0241T_TG00001i00 ...
	G0490R G0490R_TG00001i00 G0490T G0490T_TG00001i00 LG0000 G0000_LG0000i00 G0241R_LG0000i00 G0241T_LG0000i00 ...
	G0490R_LG0000i00 G0490T_LG0000i00];
end
% rate constants and constant expressions
fb00             = 0.0630957344480194;
bb00             = 0.0630957344480193;
kp00             = 0.39649751448322;
fb01             = 1.99526231496888;
bb01             = 0.501187233627272;
kp01             = 0.0456903039243915;
fb02             = 3.98107170553497;
bb02             = 1.99526231496888;
kp02             = 0.00138280984651361;
fb03             = 7.94328234724282;
bb03             = 1;
kp03             = 0.0482263570834044;
bb04             = 3.98107170553497;
kp04             = 0.0195129342263596;
fu00             = 0.100225335130631;
bu00             = 2.49385928681132;
bu01             = 2.13993598573474;
fu01             = 0.0710739831413624;
bu02             = 3.52862155789429;
fu02             = 0.0128758281327338;
bu03             = 2.18372746331696;
clamp_sink_LG0000 = 4.0;
global ode_rate_constants;
ode_rate_constants = [fb00 bb00 kp00 fb01 bb01 kp01 fb02 bb02 kp02 fb03 bb03 kp03 ...
	bb04 kp04 fu00 bu00 bu01 fu01 bu02 fu02 bu03 clamp_sink_LG0000];

% time interval
t0= 0;
tf= 20000;

% call solver routine 
global event_times;
global event_flags;
ode_events = [0 0 0];
[t, y, intervals]= G048_I00_ode_event(@ode23s, @G048_I00_odes, [t0:1.0:tf], ivalues, odeset(), ode_events, [500.0], [0.001], [1e-06]);


% map free node state vector names
G0000 = y(:,1); TG00000 = y(:,2); G0000_TG00000i00 = y(:,3); TG00001 = y(:,4); G0241R = y(:,5); G0241R_TG00001i00 = y(:,6); G0241T = y(:,7); G0241T_TG00001i00 = y(:,8); G0490R = y(:,9); G0490R_TG00001i00 = y(:,10); 
G0490T = y(:,11); G0490T_TG00001i00 = y(:,12); LG0000 = y(:,13); G0000_LG0000i00 = y(:,14); G0241R_LG0000i00 = y(:,15); G0241T_LG0000i00 = y(:,16); G0490R_LG0000i00 = y(:,17); G0490T_LG0000i00 = y(:,18); 





if (ode_num_calls > 0)
  ode_avg_cputime = ode_tot_cputime/ode_num_calls*1000;
  str = sprintf('ODE STATS: num ode calls=%d, tot time=%f, avg time=%fms', ode_num_calls, ode_tot_cputime, ode_avg_cputime);
  disp (str)
end

% issue done message for calling/wrapper scripts
str = sprintf('Facile driver script done (elapsed time %f)',toc);
disp (str)
