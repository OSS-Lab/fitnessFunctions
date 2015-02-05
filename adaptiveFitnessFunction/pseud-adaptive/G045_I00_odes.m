% File generated by Facile version 0.53a
%
function dydt = G045_I00_odes(t, y)

global event_flags;
global event_times

global ode_tot_cputime;
global ode_num_calls;
ode_start_time = cputime;
ode_num_calls = ode_num_calls + 1;
% state vector to node mapping
G0571R = y(1);
TG00001 = y(2);
G0571R_TG00001i01 = y(3);
TG00000 = y(4);
G0571R_TG00000i00 = y(5);
G0571T = y(6);
G0571T_TG00001i01 = y(7);
G0571T_TG00000i00 = y(8);
G0571R_LG0000i00 = y(9);
G0571R_LG0000_TG00001i01 = y(10);
G0571R_LG0000_TG00000i00 = y(11);
G0571T_LG0000i00 = y(12);
G0571T_LG0000_TG00001i01 = y(13);
G0571T_LG0000_TG00000i00 = y(14);
LG0000 = y(15);

% constants and constant expressions
global ode_rate_constants;
fb00 = ode_rate_constants(1);
bb00 = ode_rate_constants(2);
kp00 = ode_rate_constants(3);
bb01 = ode_rate_constants(4);
kp01 = ode_rate_constants(5);
fb01 = ode_rate_constants(6);
bb02 = ode_rate_constants(7);
kp02 = ode_rate_constants(8);
fb02 = ode_rate_constants(9);
kp03 = ode_rate_constants(10);
fb03 = ode_rate_constants(11);
bb03 = ode_rate_constants(12);
fb04 = ode_rate_constants(13);
bb04 = ode_rate_constants(14);
fu00 = ode_rate_constants(15);
bu00 = ode_rate_constants(16);
fu01 = ode_rate_constants(17);
bu01 = ode_rate_constants(18);
fu02 = ode_rate_constants(19);
bu02 = ode_rate_constants(20);
fu03 = ode_rate_constants(21);
fu04 = ode_rate_constants(22);
bu03 = ode_rate_constants(23);
fu05 = ode_rate_constants(24);
bu04 = ode_rate_constants(25);
clamp_sink_LG0000 = ode_rate_constants(26);



% dynamic rate expressions
clamp_source_LG0000 = (+(event_flags(1) && ~event_flags(2))*min((t-event_times(1))/1, 1)*2*4.0+event_flags(2)*max(1-(t-event_times(2))/1, 0)*2*4.0);

% differential equations for independent species
dydt(size(y,1),1) = 0;
dydt(1)= + bb00*G0571R_TG00001i01 + kp00*G0571R_TG00001i01 + bb01*G0571R_TG00000i00 + kp01*G0571R_TG00000i00 + bb03*G0571R_LG0000i00 + bu00*G0571T - fb00*G0571R*TG00001 - fb00*G0571R*TG00000 - fb03*G0571R*LG0000 - fu00*G0571R ;
dydt(2)= + bb00*G0571R_TG00001i01 + kp01*G0571R_TG00000i00 + bb02*G0571T_TG00001i01 + kp03*G0571T_TG00000i00 + bb00*G0571R_LG0000_TG00001i01 + kp01*G0571R_LG0000_TG00000i00 + bb02*G0571T_LG0000_TG00001i01 + kp03*G0571T_LG0000_TG00000i00 - fb00*G0571R*TG00001 - fb01*G0571T*TG00001 - fb00*G0571R_LG0000i00*TG00001 - fb01*G0571T_LG0000i00*TG00001 ;
dydt(3)= + fb00*G0571R*TG00001 + bb03*G0571R_LG0000_TG00001i01 + bu01*G0571T_TG00001i01 - bb00*G0571R_TG00001i01 - kp00*G0571R_TG00001i01 - fb03*LG0000*G0571R_TG00001i01 - fu03*G0571R_TG00001i01 ;
dydt(4)= + kp00*G0571R_TG00001i01 + bb01*G0571R_TG00000i00 + kp02*G0571T_TG00001i01 + bb00*G0571T_TG00000i00 + kp00*G0571R_LG0000_TG00001i01 + bb01*G0571R_LG0000_TG00000i00 + kp02*G0571T_LG0000_TG00001i01 + bb00*G0571T_LG0000_TG00000i00 - fb00*G0571R*TG00000 - fb02*G0571T*TG00000 - fb00*G0571R_LG0000i00*TG00000 - fb02*G0571T_LG0000i00*TG00000 ;
dydt(5)= + fb00*G0571R*TG00000 + bb03*G0571R_LG0000_TG00000i00 + bu02*G0571T_TG00000i00 - bb01*G0571R_TG00000i00 - kp01*G0571R_TG00000i00 - fb03*LG0000*G0571R_TG00000i00 - fu02*G0571R_TG00000i00 ;
dydt(6)= + bb02*G0571T_TG00001i01 + kp02*G0571T_TG00001i01 + bb00*G0571T_TG00000i00 + kp03*G0571T_TG00000i00 + bb04*G0571T_LG0000i00 + fu00*G0571R - fb01*G0571T*TG00001 - fb02*G0571T*TG00000 - fb04*G0571T*LG0000 - bu00*G0571T ;
dydt(7)= + fb01*G0571T*TG00001 + bb04*G0571T_LG0000_TG00001i01 + fu03*G0571R_TG00001i01 - bb02*G0571T_TG00001i01 - kp02*G0571T_TG00001i01 - fb04*LG0000*G0571T_TG00001i01 - bu01*G0571T_TG00001i01 ;
dydt(8)= + fb02*G0571T*TG00000 + bb04*G0571T_LG0000_TG00000i00 + fu02*G0571R_TG00000i00 - bb00*G0571T_TG00000i00 - kp03*G0571T_TG00000i00 - fb04*LG0000*G0571T_TG00000i00 - bu02*G0571T_TG00000i00 ;
dydt(9)= + bb00*G0571R_LG0000_TG00001i01 + kp00*G0571R_LG0000_TG00001i01 + bb01*G0571R_LG0000_TG00000i00 + kp01*G0571R_LG0000_TG00000i00 + fb03*G0571R*LG0000 + bu01*G0571T_LG0000i00 - fb00*G0571R_LG0000i00*TG00001 - fb00*G0571R_LG0000i00*TG00000 - bb03*G0571R_LG0000i00 - fu01*G0571R_LG0000i00 ;
dydt(10)= + fb00*G0571R_LG0000i00*TG00001 + fb03*LG0000*G0571R_TG00001i01 + bu04*G0571T_LG0000_TG00001i01 - bb00*G0571R_LG0000_TG00001i01 - kp00*G0571R_LG0000_TG00001i01 - bb03*G0571R_LG0000_TG00001i01 - fu05*G0571R_LG0000_TG00001i01 ;
dydt(11)= + fb00*G0571R_LG0000i00*TG00000 + fb03*LG0000*G0571R_TG00000i00 + bu03*G0571T_LG0000_TG00000i00 - bb01*G0571R_LG0000_TG00000i00 - kp01*G0571R_LG0000_TG00000i00 - bb03*G0571R_LG0000_TG00000i00 - fu04*G0571R_LG0000_TG00000i00 ;
dydt(12)= + bb02*G0571T_LG0000_TG00001i01 + kp02*G0571T_LG0000_TG00001i01 + bb00*G0571T_LG0000_TG00000i00 + kp03*G0571T_LG0000_TG00000i00 + fb04*G0571T*LG0000 + fu01*G0571R_LG0000i00 - fb01*G0571T_LG0000i00*TG00001 - fb02*G0571T_LG0000i00*TG00000 - bb04*G0571T_LG0000i00 - bu01*G0571T_LG0000i00 ;
dydt(13)= + fb01*G0571T_LG0000i00*TG00001 + fb04*LG0000*G0571T_TG00001i01 + fu05*G0571R_LG0000_TG00001i01 - bb02*G0571T_LG0000_TG00001i01 - kp02*G0571T_LG0000_TG00001i01 - bb04*G0571T_LG0000_TG00001i01 - bu04*G0571T_LG0000_TG00001i01 ;
dydt(14)= + fb02*G0571T_LG0000i00*TG00000 + fb04*LG0000*G0571T_TG00000i00 + fu04*G0571R_LG0000_TG00000i00 - bb00*G0571T_LG0000_TG00000i00 - kp03*G0571T_LG0000_TG00000i00 - bb04*G0571T_LG0000_TG00000i00 - bu03*G0571T_LG0000_TG00000i00 ;
dydt(15)= + bb03*G0571R_LG0000i00 + bb04*G0571T_LG0000i00 + bb03*G0571R_LG0000_TG00000i00 + bb03*G0571R_LG0000_TG00001i01 + bb04*G0571T_LG0000_TG00000i00 + bb04*G0571T_LG0000_TG00001i01 + clamp_source_LG0000 - fb03*G0571R*LG0000 - fb04*G0571T*LG0000 - fb03*LG0000*G0571R_TG00000i00 - fb03*LG0000*G0571R_TG00001i01 - fb04*LG0000*G0571T_TG00000i00 - fb04*LG0000*G0571T_TG00001i01 - clamp_sink_LG0000*LG0000 ;


ode_end_time = cputime;
ode_tot_cputime = ode_tot_cputime + (ode_end_time - ode_start_time);