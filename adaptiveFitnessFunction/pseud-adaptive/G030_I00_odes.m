% File generated by Facile version 0.53a
%
function dydt = G030_I00_odes(t, y)

global event_flags;
global event_times

global ode_tot_cputime;
global ode_num_calls;
ode_start_time = cputime;
ode_num_calls = ode_num_calls + 1;
% state vector to node mapping
G0000 = y(1);
TG00000 = y(2);
G0000_TG00000i00 = y(3);
TG00001 = y(4);
G0241 = y(5);
G0241_TG00001i00 = y(6);
G0490 = y(7);
G0490_TG00000i00 = y(8);
G0000_G0000i00 = y(9);
G0000_G0490i00 = y(10);
LG0000 = y(11);
G0000_LG0000i00 = y(12);
G0241_LG0000i00 = y(13);
G0490_LG0000i00 = y(14);

% constants and constant expressions
global ode_rate_constants;
fb00 = ode_rate_constants(1);
bb00 = ode_rate_constants(2);
kp00 = ode_rate_constants(3);
fb01 = ode_rate_constants(4);
bb01 = ode_rate_constants(5);
kp01 = ode_rate_constants(6);
fb02 = ode_rate_constants(7);
bb02 = ode_rate_constants(8);
kp02 = ode_rate_constants(9);
fb03 = ode_rate_constants(10);
bb03 = ode_rate_constants(11);
fb04 = ode_rate_constants(12);
bb04 = ode_rate_constants(13);
clamp_sink_LG0000 = ode_rate_constants(14);



% dynamic rate expressions
clamp_source_LG0000 = (+(event_flags(1) && ~event_flags(2))*min((t-event_times(1))/1, 1)*5*4.0+event_flags(2)*max(1-(t-event_times(2))/1, 0)*5*4.0);

% differential equations for independent species
dydt(size(y,1),1) = 0;
dydt(1)= + bb00*G0000_TG00000i00 + kp00*G0000_TG00000i00 + bb03*G0000_G0000i00 + bb03*G0000_G0000i00 + bb04*G0000_G0490i00 + bb00*G0000_LG0000i00 - fb00*G0000*TG00000 - fb03*G0000*G0000 - fb03*G0000*G0000 - fb04*G0000*G0490 - fb00*G0000*LG0000 ;
dydt(2)= + bb00*G0000_TG00000i00 + kp01*G0241_TG00001i00 + bb02*G0490_TG00000i00 - fb00*G0000*TG00000 - fb02*G0490*TG00000 ;
dydt(3)= + fb00*G0000*TG00000 - bb00*G0000_TG00000i00 - kp00*G0000_TG00000i00 ;
dydt(4)= + kp00*G0000_TG00000i00 + bb01*G0241_TG00001i00 + kp02*G0490_TG00000i00 - fb01*G0241*TG00001 ;
dydt(5)= + bb01*G0241_TG00001i00 + kp01*G0241_TG00001i00 + bb01*G0241_LG0000i00 - fb01*G0241*TG00001 - fb01*G0241*LG0000 ;
dydt(6)= + fb01*G0241*TG00001 - bb01*G0241_TG00001i00 - kp01*G0241_TG00001i00 ;
dydt(7)= + bb02*G0490_TG00000i00 + kp02*G0490_TG00000i00 + bb04*G0000_G0490i00 + bb02*G0490_LG0000i00 - fb02*G0490*TG00000 - fb04*G0000*G0490 - fb02*G0490*LG0000 ;
dydt(8)= + fb02*G0490*TG00000 - bb02*G0490_TG00000i00 - kp02*G0490_TG00000i00 ;
dydt(9)= + fb03*G0000*G0000 - bb03*G0000_G0000i00 ;
dydt(10)= + fb04*G0000*G0490 - bb04*G0000_G0490i00 ;
dydt(11)= + bb00*G0000_LG0000i00 + bb01*G0241_LG0000i00 + bb02*G0490_LG0000i00 + clamp_source_LG0000 - fb00*G0000*LG0000 - fb01*G0241*LG0000 - fb02*G0490*LG0000 - clamp_sink_LG0000*LG0000 ;
dydt(12)= + fb00*G0000*LG0000 - bb00*G0000_LG0000i00 ;
dydt(13)= + fb01*G0241*LG0000 - bb01*G0241_LG0000i00 ;
dydt(14)= + fb02*G0490*LG0000 - bb02*G0490_LG0000i00 ;


ode_end_time = cputime;
ode_tot_cputime = ode_tot_cputime + (ode_end_time - ode_start_time);