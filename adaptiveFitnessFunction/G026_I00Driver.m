% File generated by Facile version 0.53a
%
tic;
global ode_tot_cputime;
global ode_num_calls;
ode_tot_cputime = 0.0;
ode_num_calls = 0;

% initial values (free nodes only)
G0482 = 1.55101442088444;
TG00000 = 35;
G0482_TG00000i00 = 0;
TG00001 = 0;
G0964 = 4.63115321845824;
G0964_TG00001i01 = 0;
G0964_LG0000i00 = 0;
G0964_LG0000_TG00001i01 = 0;
G0964_TG00000i00 = 0;
G0964_TG00001_TG00000i00 = 0;
G0964_TG00001i00 = 0;
G0964_TG00001_TG00001i00 = 0;
G0241 = 2.55637542207457;
LG0000 = 0.001;
G0241_LG0000i00 = 0;
G0241_TG00000i00 = 0;
G0241_TG00001i00 = 0;
G0482_G0482i00 = 0;
G0482_LG0000i00 = 0;
G0964_G0964i00 = 0;
G0964_LG0000i01 = 0;
G0964_G0964_LG0000i00 = 0;
G0964_G0964_TG00000i00 = 0;
G0964_G0964_TG00001i00 = 0;
G0964_LG0000_LG0000i00 = 0;
G0964_LG0000_TG00000i00 = 0;
G0964_LG0000_TG00001i00 = 0;
if exist('ivalues') == 0
ivalues = [G0482 TG00000 G0482_TG00000i00 TG00001 G0964 G0964_TG00001i01 G0964_LG0000i00 G0964_LG0000_TG00001i01 ...
	G0964_TG00000i00 G0964_TG00001_TG00000i00 G0964_TG00001i00 G0964_TG00001_TG00001i00 G0241 LG0000 G0241_LG0000i00 G0241_TG00000i00 ...
	G0241_TG00001i00 G0482_G0482i00 G0482_LG0000i00 G0964_G0964i00 G0964_LG0000i01 G0964_G0964_LG0000i00 G0964_G0964_TG00000i00 G0964_G0964_TG00001i00 ...
	G0964_LG0000_LG0000i00 G0964_LG0000_TG00000i00 G0964_LG0000_TG00001i00];
end
% rate constants and constant expressions
fb00             = 3.98107170553497;
bb00             = 1.99526231496888;
kp00             = 0.186120718925869;
fb01             = 1.99526231496888;
bb01             = 1;
kp01             = 0.0742963950759495;
fb02             = 31.6227766016838;
bb02             = 3.98107170553497;
fb03             = 0.125594321575479;
fb04             = 0.0315478672240097;
bb03             = 0.001;
fb05             = 0.501187233627272;
fb06             = 0.0630957344480194;
clamp_sink_LG0000 = 4.0;
global ode_rate_constants;
ode_rate_constants = [fb00 bb00 kp00 fb01 bb01 kp01 fb02 bb02 fb03 fb04 bb03 fb05 ...
	fb06 clamp_sink_LG0000];

% time interval
t0= 0;
tf= 200000;

% call solver routine 
global event_times;
global event_flags;
ode_events = [0 0 0];
[t, y, intervals]= G026_I00_ode_event(@ode23s, @G026_I00_odes, [t0:1.0:tf], ivalues, odeset(), ode_events, [500.0], [0.001], [1e-06]);


% map free node state vector names
G0482 = y(:,1); TG00000 = y(:,2); G0482_TG00000i00 = y(:,3); TG00001 = y(:,4); G0964 = y(:,5); G0964_TG00001i01 = y(:,6); G0964_LG0000i00 = y(:,7); G0964_LG0000_TG00001i01 = y(:,8); G0964_TG00000i00 = y(:,9); G0964_TG00001_TG00000i00 = y(:,10); 
G0964_TG00001i00 = y(:,11); G0964_TG00001_TG00001i00 = y(:,12); G0241 = y(:,13); LG0000 = y(:,14); G0241_LG0000i00 = y(:,15); G0241_TG00000i00 = y(:,16); G0241_TG00001i00 = y(:,17); G0482_G0482i00 = y(:,18); G0482_LG0000i00 = y(:,19); G0964_G0964i00 = y(:,20); 
G0964_LG0000i01 = y(:,21); G0964_G0964_LG0000i00 = y(:,22); G0964_G0964_TG00000i00 = y(:,23); G0964_G0964_TG00001i00 = y(:,24); G0964_LG0000_LG0000i00 = y(:,25); G0964_LG0000_TG00000i00 = y(:,26); G0964_LG0000_TG00001i00 = y(:,27); 





if (ode_num_calls > 0)
  ode_avg_cputime = ode_tot_cputime/ode_num_calls*1000;
  str = sprintf('ODE STATS: num ode calls=%d, tot time=%f, avg time=%fms', ode_num_calls, ode_tot_cputime, ode_avg_cputime);
  disp (str)
end

% issue done message for calling/wrapper scripts
str = sprintf('Facile driver script done (elapsed time %f)',toc);
disp (str)


L=LG0000/10;
T=TG00001/35;

figure;

subplot(2,1,1);
plot(t,L);

subplot(2,1,2);
plot(t,T);
