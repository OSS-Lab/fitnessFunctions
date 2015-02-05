% File generated by Facile version 0.53a
%
function dydt = G083_I00_odes(t, y)

global event_flags;
global event_times

global ode_tot_cputime;
global ode_num_calls;
ode_start_time = cputime;
ode_num_calls = ode_num_calls + 1;
% state vector to node mapping
G0911R = y(1);
TG00001 = y(2);
G0911R_TG00001i01 = y(3);
TG00000 = y(4);
G0911R_TG00000i00 = y(5);
G0911T = y(6);
G0911T_TG00001i01 = y(7);
G0911T_TG00000i00 = y(8);
G0911R_LG0000i00 = y(9);
G0911R_LG0000_TG00001i01 = y(10);
G0911R_LG0000_TG00000i00 = y(11);
G0911T_LG0000i00 = y(12);
G0911T_LG0000_TG00001i01 = y(13);
G0911T_LG0000_TG00000i00 = y(14);
G0000R = y(15);
LG0000 = y(16);
G0000R_LG0000i00 = y(17);
G0000R_LG0000i01 = y(18);
G0000R_TG00000i00 = y(19);
G0000R_TG00000i01 = y(20);
G0000R_TG00001i00 = y(21);
G0000R_TG00001i01 = y(22);
G0000T = y(23);
G0000T_LG0000i00 = y(24);
G0000T_LG0000i01 = y(25);
G0000T_TG00000i00 = y(26);
G0000T_TG00000i01 = y(27);
G0000T_TG00001i00 = y(28);
G0000T_TG00001i01 = y(29);
G0000R_LG0000_LG0000i00 = y(30);
G0000R_LG0000_TG00000i00 = y(31);
G0000R_LG0000_TG00000i01 = y(32);
G0000R_LG0000_TG00000i02 = y(33);
G0000R_LG0000_TG00000i03 = y(34);
G0000R_LG0000_TG00001i00 = y(35);
G0000R_LG0000_TG00001i01 = y(36);
G0000R_LG0000_TG00001i02 = y(37);
G0000R_LG0000_TG00001i03 = y(38);
G0000T_LG0000_LG0000i00 = y(39);
G0000T_LG0000_TG00000i00 = y(40);
G0000T_LG0000_TG00000i01 = y(41);
G0000T_LG0000_TG00000i02 = y(42);
G0000T_LG0000_TG00000i03 = y(43);
G0000T_LG0000_TG00001i00 = y(44);
G0000T_LG0000_TG00001i01 = y(45);
G0000T_LG0000_TG00001i02 = y(46);
G0000T_LG0000_TG00001i03 = y(47);
G0000R_TG00000_TG00000i00 = y(48);
G0000R_TG00000_TG00001i00 = y(49);
G0000R_TG00001_TG00000i00 = y(50);
G0000T_TG00000_TG00000i00 = y(51);
G0000T_TG00000_TG00001i00 = y(52);
G0000T_TG00001_TG00000i00 = y(53);
G0000R_TG00001_TG00001i00 = y(54);
G0000T_TG00001_TG00001i00 = y(55);

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
kp03 = ode_rate_constants(12);
fb04 = ode_rate_constants(13);
fb05 = ode_rate_constants(14);
bb04 = ode_rate_constants(15);
fb06 = ode_rate_constants(16);
bb05 = ode_rate_constants(17);
fb07 = ode_rate_constants(18);
fb08 = ode_rate_constants(19);
fb09 = ode_rate_constants(20);
fb10 = ode_rate_constants(21);
bb06 = ode_rate_constants(22);
fu00 = ode_rate_constants(23);
bu00 = ode_rate_constants(24);
fu01 = ode_rate_constants(25);
bu01 = ode_rate_constants(26);
fu02 = ode_rate_constants(27);
bu02 = ode_rate_constants(28);
fu03 = ode_rate_constants(29);
bu03 = ode_rate_constants(30);
fu04 = ode_rate_constants(31);
bu04 = ode_rate_constants(32);
fu05 = ode_rate_constants(33);
bu05 = ode_rate_constants(34);
fu06 = ode_rate_constants(35);
bu06 = ode_rate_constants(36);
fu07 = ode_rate_constants(37);
fu08 = ode_rate_constants(38);
bu07 = ode_rate_constants(39);
fu09 = ode_rate_constants(40);
bu08 = ode_rate_constants(41);
clamp_sink_LG0000 = ode_rate_constants(42);



% dynamic rate expressions
clamp_source_LG0000 = (+(event_flags(1) && ~event_flags(2))*min((t-event_times(1))/1, 1)*2*4.0+event_flags(2)*max(1-(t-event_times(2))/1, 0)*2*4.0);

% differential equations for independent species
dydt(size(y,1),1) = 0;
dydt(1)= + bb00*G0911R_TG00001i01 + kp00*G0911R_TG00001i01 + bb01*G0911R_TG00000i00 + kp01*G0911R_TG00000i00 + bb05*G0911R_LG0000i00 + bu01*G0911T - fb00*G0911R*TG00001 - fb01*G0911R*TG00000 - fb09*G0911R*LG0000 - fu01*G0911R ;
dydt(2)= + bb00*G0911R_TG00001i01 + kp01*G0911R_TG00000i00 + bb02*G0911T_TG00001i01 + kp03*G0911T_TG00000i00 + bb00*G0911R_LG0000_TG00001i01 + kp01*G0911R_LG0000_TG00000i00 + bb02*G0911T_LG0000_TG00001i01 + kp03*G0911T_LG0000_TG00000i00 + bb01*G0000R_TG00001i00 + bb04*G0000R_TG00001i01 + bb03*G0000T_TG00001i00 + bb03*G0000T_TG00001i01 + bb01*G0000R_LG0000_TG00001i00 + bb04*G0000R_LG0000_TG00001i02 + bb01*G0000R_LG0000_TG00001i01 + bb04*G0000R_LG0000_TG00001i03 + bb04*G0000R_TG00001_TG00000i00 + bb01*G0000R_TG00000_TG00001i00 + bb04*G0000R_TG00001_TG00001i00 + bb01*G0000R_TG00001_TG00001i00 + bb03*G0000T_LG0000_TG00001i00 + bb03*G0000T_LG0000_TG00001i02 + bb03*G0000T_LG0000_TG00001i01 + bb03*G0000T_LG0000_TG00001i03 + bb03*G0000T_TG00001_TG00000i00 + bb03*G0000T_TG00000_TG00001i00 + bb03*G0000T_TG00001_TG00001i00 + bb03*G0000T_TG00001_TG00001i00 - fb00*G0911R*TG00001 - fb02*G0911T*TG00001 - fb00*G0911R_LG0000i00*TG00001 - fb02*G0911T_LG0000i00*TG00001 - fb02*G0000R*TG00001 - fb05*G0000R*TG00001 - fb08*G0000T*TG00001 - fb08*G0000T*TG00001 - fb02*TG00001*G0000R_LG0000i00 - fb05*TG00001*G0000R_LG0000i00 - fb02*TG00001*G0000R_LG0000i01 - fb05*TG00001*G0000R_LG0000i01 - fb05*TG00001*G0000R_TG00000i00 - fb02*TG00001*G0000R_TG00000i01 - fb05*TG00001*G0000R_TG00001i00 - fb02*TG00001*G0000R_TG00001i01 - fb08*TG00001*G0000T_LG0000i00 - fb08*TG00001*G0000T_LG0000i00 - fb08*TG00001*G0000T_LG0000i01 - fb08*TG00001*G0000T_LG0000i01 - fb08*TG00001*G0000T_TG00000i00 - fb08*TG00001*G0000T_TG00000i01 - fb08*TG00001*G0000T_TG00001i00 - fb08*TG00001*G0000T_TG00001i01 ;
dydt(3)= + fb00*G0911R*TG00001 + bb05*G0911R_LG0000_TG00001i01 + bu05*G0911T_TG00001i01 - bb00*G0911R_TG00001i01 - kp00*G0911R_TG00001i01 - fb09*LG0000*G0911R_TG00001i01 - fu05*G0911R_TG00001i01 ;
dydt(4)= + kp00*G0911R_TG00001i01 + bb01*G0911R_TG00000i00 + kp02*G0911T_TG00001i01 + bb03*G0911T_TG00000i00 + kp00*G0911R_LG0000_TG00001i01 + bb01*G0911R_LG0000_TG00000i00 + kp02*G0911T_LG0000_TG00001i01 + bb03*G0911T_LG0000_TG00000i00 + bb01*G0000R_TG00000i00 + bb04*G0000R_TG00000i01 + bb03*G0000T_TG00000i00 + bb03*G0000T_TG00000i01 + bb01*G0000R_LG0000_TG00000i00 + bb04*G0000R_LG0000_TG00000i02 + bb01*G0000R_LG0000_TG00000i01 + bb04*G0000R_LG0000_TG00000i03 + bb04*G0000R_TG00000_TG00000i00 + bb01*G0000R_TG00000_TG00000i00 + bb04*G0000R_TG00000_TG00001i00 + bb01*G0000R_TG00001_TG00000i00 + bb03*G0000T_LG0000_TG00000i00 + bb03*G0000T_LG0000_TG00000i02 + bb03*G0000T_LG0000_TG00000i01 + bb03*G0000T_LG0000_TG00000i03 + bb03*G0000T_TG00000_TG00000i00 + bb03*G0000T_TG00000_TG00000i00 + bb03*G0000T_TG00000_TG00001i00 + bb03*G0000T_TG00001_TG00000i00 - fb01*G0911R*TG00000 - fb03*G0911T*TG00000 - fb01*G0911R_LG0000i00*TG00000 - fb03*G0911T_LG0000i00*TG00000 - fb02*G0000R*TG00000 - fb05*G0000R*TG00000 - fb08*G0000T*TG00000 - fb08*G0000T*TG00000 - fb02*TG00000*G0000R_LG0000i00 - fb05*TG00000*G0000R_LG0000i00 - fb02*TG00000*G0000R_LG0000i01 - fb05*TG00000*G0000R_LG0000i01 - fb05*TG00000*G0000R_TG00000i00 - fb02*TG00000*G0000R_TG00000i01 - fb05*TG00000*G0000R_TG00001i00 - fb02*TG00000*G0000R_TG00001i01 - fb08*TG00000*G0000T_LG0000i00 - fb08*TG00000*G0000T_LG0000i00 - fb08*TG00000*G0000T_LG0000i01 - fb08*TG00000*G0000T_LG0000i01 - fb08*TG00000*G0000T_TG00000i00 - fb08*TG00000*G0000T_TG00000i01 - fb08*TG00000*G0000T_TG00001i00 - fb08*TG00000*G0000T_TG00001i01 ;
dydt(5)= + fb01*G0911R*TG00000 + bb05*G0911R_LG0000_TG00000i00 + bu01*G0911T_TG00000i00 - bb01*G0911R_TG00000i00 - kp01*G0911R_TG00000i00 - fb09*LG0000*G0911R_TG00000i00 - fu01*G0911R_TG00000i00 ;
dydt(6)= + bb02*G0911T_TG00001i01 + kp02*G0911T_TG00001i01 + bb03*G0911T_TG00000i00 + kp03*G0911T_TG00000i00 + bb06*G0911T_LG0000i00 + fu01*G0911R - fb02*G0911T*TG00001 - fb03*G0911T*TG00000 - fb10*G0911T*LG0000 - bu01*G0911T ;
dydt(7)= + fb02*G0911T*TG00001 + bb06*G0911T_LG0000_TG00001i01 + fu05*G0911R_TG00001i01 - bb02*G0911T_TG00001i01 - kp02*G0911T_TG00001i01 - fb10*LG0000*G0911T_TG00001i01 - bu05*G0911T_TG00001i01 ;
dydt(8)= + fb03*G0911T*TG00000 + bb06*G0911T_LG0000_TG00000i00 + fu01*G0911R_TG00000i00 - bb03*G0911T_TG00000i00 - kp03*G0911T_TG00000i00 - fb10*LG0000*G0911T_TG00000i00 - bu01*G0911T_TG00000i00 ;
dydt(9)= + bb00*G0911R_LG0000_TG00001i01 + kp00*G0911R_LG0000_TG00001i01 + bb01*G0911R_LG0000_TG00000i00 + kp01*G0911R_LG0000_TG00000i00 + fb09*G0911R*LG0000 + bu04*G0911T_LG0000i00 - fb00*G0911R_LG0000i00*TG00001 - fb01*G0911R_LG0000i00*TG00000 - bb05*G0911R_LG0000i00 - fu04*G0911R_LG0000i00 ;
dydt(10)= + fb00*G0911R_LG0000i00*TG00001 + fb09*LG0000*G0911R_TG00001i01 + bu08*G0911T_LG0000_TG00001i01 - bb00*G0911R_LG0000_TG00001i01 - kp00*G0911R_LG0000_TG00001i01 - bb05*G0911R_LG0000_TG00001i01 - fu09*G0911R_LG0000_TG00001i01 ;
dydt(11)= + fb01*G0911R_LG0000i00*TG00000 + fb09*LG0000*G0911R_TG00000i00 + bu04*G0911T_LG0000_TG00000i00 - bb01*G0911R_LG0000_TG00000i00 - kp01*G0911R_LG0000_TG00000i00 - bb05*G0911R_LG0000_TG00000i00 - fu04*G0911R_LG0000_TG00000i00 ;
dydt(12)= + bb02*G0911T_LG0000_TG00001i01 + kp02*G0911T_LG0000_TG00001i01 + bb03*G0911T_LG0000_TG00000i00 + kp03*G0911T_LG0000_TG00000i00 + fb10*G0911T*LG0000 + fu04*G0911R_LG0000i00 - fb02*G0911T_LG0000i00*TG00001 - fb03*G0911T_LG0000i00*TG00000 - bb06*G0911T_LG0000i00 - bu04*G0911T_LG0000i00 ;
dydt(13)= + fb02*G0911T_LG0000i00*TG00001 + fb10*LG0000*G0911T_TG00001i01 + fu09*G0911R_LG0000_TG00001i01 - bb02*G0911T_LG0000_TG00001i01 - kp02*G0911T_LG0000_TG00001i01 - bb06*G0911T_LG0000_TG00001i01 - bu08*G0911T_LG0000_TG00001i01 ;
dydt(14)= + fb03*G0911T_LG0000i00*TG00000 + fb10*LG0000*G0911T_TG00000i00 + fu04*G0911R_LG0000_TG00000i00 - bb03*G0911T_LG0000_TG00000i00 - kp03*G0911T_LG0000_TG00000i00 - bb06*G0911T_LG0000_TG00000i00 - bu04*G0911T_LG0000_TG00000i00 ;
dydt(15)= + bb03*G0000R_LG0000i00 + bb03*G0000R_LG0000i01 + bb01*G0000R_TG00000i00 + bb04*G0000R_TG00000i01 + bb01*G0000R_TG00001i00 + bb04*G0000R_TG00001i01 + bu00*G0000T - fb04*G0000R*LG0000 - fb04*G0000R*LG0000 - fb02*G0000R*TG00000 - fb05*G0000R*TG00000 - fb02*G0000R*TG00001 - fb05*G0000R*TG00001 - fu00*G0000R ;
dydt(16)= + bb03*G0000R_LG0000i00 + bb03*G0000R_LG0000i01 + bb05*G0000T_LG0000i00 + bb04*G0000T_LG0000i01 + bb05*G0911R_LG0000i00 + bb06*G0911T_LG0000i00 + bb03*G0000R_LG0000_LG0000i00 + bb03*G0000R_LG0000_LG0000i00 + bb03*G0000R_LG0000_TG00000i00 + bb03*G0000R_LG0000_TG00000i01 + bb03*G0000R_LG0000_TG00000i02 + bb03*G0000R_LG0000_TG00000i03 + bb03*G0000R_LG0000_TG00001i00 + bb03*G0000R_LG0000_TG00001i01 + bb03*G0000R_LG0000_TG00001i02 + bb03*G0000R_LG0000_TG00001i03 + bb04*G0000T_LG0000_LG0000i00 + bb05*G0000T_LG0000_LG0000i00 + bb05*G0000T_LG0000_TG00000i00 + bb04*G0000T_LG0000_TG00000i01 + bb05*G0000T_LG0000_TG00000i02 + bb04*G0000T_LG0000_TG00000i03 + bb05*G0000T_LG0000_TG00001i00 + bb04*G0000T_LG0000_TG00001i01 + bb05*G0000T_LG0000_TG00001i02 + bb04*G0000T_LG0000_TG00001i03 + bb05*G0911R_LG0000_TG00000i00 + bb05*G0911R_LG0000_TG00001i01 + bb06*G0911T_LG0000_TG00000i00 + bb06*G0911T_LG0000_TG00001i01 + clamp_source_LG0000 - fb04*G0000R*LG0000 - fb04*G0000R*LG0000 - fb06*G0000T*LG0000 - fb07*G0000T*LG0000 - fb09*G0911R*LG0000 - fb10*G0911T*LG0000 - fb04*LG0000*G0000R_LG0000i00 - fb04*LG0000*G0000R_LG0000i01 - fb04*LG0000*G0000R_TG00000i00 - fb04*LG0000*G0000R_TG00000i00 - fb04*LG0000*G0000R_TG00000i01 - fb04*LG0000*G0000R_TG00000i01 - fb04*LG0000*G0000R_TG00001i00 - fb04*LG0000*G0000R_TG00001i00 - fb04*LG0000*G0000R_TG00001i01 - fb04*LG0000*G0000R_TG00001i01 - fb07*LG0000*G0000T_LG0000i00 - fb06*LG0000*G0000T_LG0000i01 - fb06*LG0000*G0000T_TG00000i00 - fb07*LG0000*G0000T_TG00000i00 - fb06*LG0000*G0000T_TG00000i01 - fb07*LG0000*G0000T_TG00000i01 - fb06*LG0000*G0000T_TG00001i00 - fb07*LG0000*G0000T_TG00001i00 - fb06*LG0000*G0000T_TG00001i01 - fb07*LG0000*G0000T_TG00001i01 - fb09*LG0000*G0911R_TG00000i00 - fb09*LG0000*G0911R_TG00001i01 - fb10*LG0000*G0911T_TG00000i00 - fb10*LG0000*G0911T_TG00001i01 - clamp_sink_LG0000*LG0000 ;
dydt(17)= + fb04*G0000R*LG0000 + bb03*G0000R_LG0000_LG0000i00 + bb01*G0000R_LG0000_TG00000i00 + bb04*G0000R_LG0000_TG00000i02 + bb01*G0000R_LG0000_TG00001i00 + bb04*G0000R_LG0000_TG00001i02 + bu02*G0000T_LG0000i00 - bb03*G0000R_LG0000i00 - fb04*LG0000*G0000R_LG0000i00 - fb02*TG00000*G0000R_LG0000i00 - fb05*TG00000*G0000R_LG0000i00 - fb02*TG00001*G0000R_LG0000i00 - fb05*TG00001*G0000R_LG0000i00 - fu02*G0000R_LG0000i00 ;
dydt(18)= + fb04*G0000R*LG0000 + bb03*G0000R_LG0000_LG0000i00 + bb01*G0000R_LG0000_TG00000i01 + bb04*G0000R_LG0000_TG00000i03 + bb01*G0000R_LG0000_TG00001i01 + bb04*G0000R_LG0000_TG00001i03 + bu02*G0000T_LG0000i01 - bb03*G0000R_LG0000i01 - fb04*LG0000*G0000R_LG0000i01 - fb02*TG00000*G0000R_LG0000i01 - fb05*TG00000*G0000R_LG0000i01 - fb02*TG00001*G0000R_LG0000i01 - fb05*TG00001*G0000R_LG0000i01 - fu02*G0000R_LG0000i01 ;
dydt(19)= + fb02*G0000R*TG00000 + bb03*G0000R_LG0000_TG00000i00 + bb03*G0000R_LG0000_TG00000i01 + bb04*G0000R_TG00000_TG00000i00 + bb04*G0000R_TG00001_TG00000i00 + bu00*G0000T_TG00000i00 - bb01*G0000R_TG00000i00 - fb04*LG0000*G0000R_TG00000i00 - fb04*LG0000*G0000R_TG00000i00 - fb05*TG00000*G0000R_TG00000i00 - fb05*TG00001*G0000R_TG00000i00 - fu00*G0000R_TG00000i00 ;
dydt(20)= + fb05*G0000R*TG00000 + bb03*G0000R_LG0000_TG00000i02 + bb03*G0000R_LG0000_TG00000i03 + bb01*G0000R_TG00000_TG00000i00 + bb01*G0000R_TG00000_TG00001i00 + bu03*G0000T_TG00000i01 - bb04*G0000R_TG00000i01 - fb04*LG0000*G0000R_TG00000i01 - fb04*LG0000*G0000R_TG00000i01 - fb02*TG00000*G0000R_TG00000i01 - fb02*TG00001*G0000R_TG00000i01 - fu03*G0000R_TG00000i01 ;
dydt(21)= + fb02*G0000R*TG00001 + bb03*G0000R_LG0000_TG00001i00 + bb03*G0000R_LG0000_TG00001i01 + bb04*G0000R_TG00000_TG00001i00 + bb04*G0000R_TG00001_TG00001i00 + bu00*G0000T_TG00001i00 - bb01*G0000R_TG00001i00 - fb04*LG0000*G0000R_TG00001i00 - fb04*LG0000*G0000R_TG00001i00 - fb05*TG00000*G0000R_TG00001i00 - fb05*TG00001*G0000R_TG00001i00 - fu00*G0000R_TG00001i00 ;
dydt(22)= + fb05*G0000R*TG00001 + bb03*G0000R_LG0000_TG00001i02 + bb03*G0000R_LG0000_TG00001i03 + bb01*G0000R_TG00001_TG00000i00 + bb01*G0000R_TG00001_TG00001i00 + bu03*G0000T_TG00001i01 - bb04*G0000R_TG00001i01 - fb04*LG0000*G0000R_TG00001i01 - fb04*LG0000*G0000R_TG00001i01 - fb02*TG00000*G0000R_TG00001i01 - fb02*TG00001*G0000R_TG00001i01 - fu03*G0000R_TG00001i01 ;
dydt(23)= + bb05*G0000T_LG0000i00 + bb04*G0000T_LG0000i01 + bb03*G0000T_TG00000i00 + bb03*G0000T_TG00000i01 + bb03*G0000T_TG00001i00 + bb03*G0000T_TG00001i01 + fu00*G0000R - fb06*G0000T*LG0000 - fb07*G0000T*LG0000 - fb08*G0000T*TG00000 - fb08*G0000T*TG00000 - fb08*G0000T*TG00001 - fb08*G0000T*TG00001 - bu00*G0000T ;
dydt(24)= + fb06*G0000T*LG0000 + bb04*G0000T_LG0000_LG0000i00 + bb03*G0000T_LG0000_TG00000i00 + bb03*G0000T_LG0000_TG00000i02 + bb03*G0000T_LG0000_TG00001i00 + bb03*G0000T_LG0000_TG00001i02 + fu02*G0000R_LG0000i00 - bb05*G0000T_LG0000i00 - fb07*LG0000*G0000T_LG0000i00 - fb08*TG00000*G0000T_LG0000i00 - fb08*TG00000*G0000T_LG0000i00 - fb08*TG00001*G0000T_LG0000i00 - fb08*TG00001*G0000T_LG0000i00 - bu02*G0000T_LG0000i00 ;
dydt(25)= + fb07*G0000T*LG0000 + bb05*G0000T_LG0000_LG0000i00 + bb03*G0000T_LG0000_TG00000i01 + bb03*G0000T_LG0000_TG00000i03 + bb03*G0000T_LG0000_TG00001i01 + bb03*G0000T_LG0000_TG00001i03 + fu02*G0000R_LG0000i01 - bb04*G0000T_LG0000i01 - fb06*LG0000*G0000T_LG0000i01 - fb08*TG00000*G0000T_LG0000i01 - fb08*TG00000*G0000T_LG0000i01 - fb08*TG00001*G0000T_LG0000i01 - fb08*TG00001*G0000T_LG0000i01 - bu02*G0000T_LG0000i01 ;
dydt(26)= + fb08*G0000T*TG00000 + bb05*G0000T_LG0000_TG00000i00 + bb04*G0000T_LG0000_TG00000i01 + bb03*G0000T_TG00000_TG00000i00 + bb03*G0000T_TG00001_TG00000i00 + fu00*G0000R_TG00000i00 - bb03*G0000T_TG00000i00 - fb06*LG0000*G0000T_TG00000i00 - fb07*LG0000*G0000T_TG00000i00 - fb08*TG00000*G0000T_TG00000i00 - fb08*TG00001*G0000T_TG00000i00 - bu00*G0000T_TG00000i00 ;
dydt(27)= + fb08*G0000T*TG00000 + bb05*G0000T_LG0000_TG00000i02 + bb04*G0000T_LG0000_TG00000i03 + bb03*G0000T_TG00000_TG00000i00 + bb03*G0000T_TG00000_TG00001i00 + fu03*G0000R_TG00000i01 - bb03*G0000T_TG00000i01 - fb06*LG0000*G0000T_TG00000i01 - fb07*LG0000*G0000T_TG00000i01 - fb08*TG00000*G0000T_TG00000i01 - fb08*TG00001*G0000T_TG00000i01 - bu03*G0000T_TG00000i01 ;
dydt(28)= + fb08*G0000T*TG00001 + bb05*G0000T_LG0000_TG00001i00 + bb04*G0000T_LG0000_TG00001i01 + bb03*G0000T_TG00000_TG00001i00 + bb03*G0000T_TG00001_TG00001i00 + fu00*G0000R_TG00001i00 - bb03*G0000T_TG00001i00 - fb06*LG0000*G0000T_TG00001i00 - fb07*LG0000*G0000T_TG00001i00 - fb08*TG00000*G0000T_TG00001i00 - fb08*TG00001*G0000T_TG00001i00 - bu00*G0000T_TG00001i00 ;
dydt(29)= + fb08*G0000T*TG00001 + bb05*G0000T_LG0000_TG00001i02 + bb04*G0000T_LG0000_TG00001i03 + bb03*G0000T_TG00001_TG00000i00 + bb03*G0000T_TG00001_TG00001i00 + fu03*G0000R_TG00001i01 - bb03*G0000T_TG00001i01 - fb06*LG0000*G0000T_TG00001i01 - fb07*LG0000*G0000T_TG00001i01 - fb08*TG00000*G0000T_TG00001i01 - fb08*TG00001*G0000T_TG00001i01 - bu03*G0000T_TG00001i01 ;
dydt(30)= + fb04*LG0000*G0000R_LG0000i00 + fb04*LG0000*G0000R_LG0000i01 + bu06*G0000T_LG0000_LG0000i00 - bb03*G0000R_LG0000_LG0000i00 - bb03*G0000R_LG0000_LG0000i00 - fu06*G0000R_LG0000_LG0000i00 ;
dydt(31)= + fb04*LG0000*G0000R_TG00000i00 + fb02*TG00000*G0000R_LG0000i00 + bu02*G0000T_LG0000_TG00000i00 - bb03*G0000R_LG0000_TG00000i00 - bb01*G0000R_LG0000_TG00000i00 - fu07*G0000R_LG0000_TG00000i00 ;
dydt(32)= + fb04*LG0000*G0000R_TG00000i00 + fb02*TG00000*G0000R_LG0000i01 + bu02*G0000T_LG0000_TG00000i01 - bb03*G0000R_LG0000_TG00000i01 - bb01*G0000R_LG0000_TG00000i01 - fu02*G0000R_LG0000_TG00000i01 ;
dydt(33)= + fb04*LG0000*G0000R_TG00000i01 + fb05*TG00000*G0000R_LG0000i00 + bu07*G0000T_LG0000_TG00000i02 - bb03*G0000R_LG0000_TG00000i02 - bb04*G0000R_LG0000_TG00000i02 - fu08*G0000R_LG0000_TG00000i02 ;
dydt(34)= + fb04*LG0000*G0000R_TG00000i01 + fb05*TG00000*G0000R_LG0000i01 + bu07*G0000T_LG0000_TG00000i03 - bb03*G0000R_LG0000_TG00000i03 - bb04*G0000R_LG0000_TG00000i03 - fu08*G0000R_LG0000_TG00000i03 ;
dydt(35)= + fb04*LG0000*G0000R_TG00001i00 + fb02*TG00001*G0000R_LG0000i00 + bu02*G0000T_LG0000_TG00001i00 - bb03*G0000R_LG0000_TG00001i00 - bb01*G0000R_LG0000_TG00001i00 - fu07*G0000R_LG0000_TG00001i00 ;
dydt(36)= + fb04*LG0000*G0000R_TG00001i00 + fb02*TG00001*G0000R_LG0000i01 + bu02*G0000T_LG0000_TG00001i01 - bb03*G0000R_LG0000_TG00001i01 - bb01*G0000R_LG0000_TG00001i01 - fu02*G0000R_LG0000_TG00001i01 ;
dydt(37)= + fb04*LG0000*G0000R_TG00001i01 + fb05*TG00001*G0000R_LG0000i00 + bu07*G0000T_LG0000_TG00001i02 - bb03*G0000R_LG0000_TG00001i02 - bb04*G0000R_LG0000_TG00001i02 - fu08*G0000R_LG0000_TG00001i02 ;
dydt(38)= + fb04*LG0000*G0000R_TG00001i01 + fb05*TG00001*G0000R_LG0000i01 + bu07*G0000T_LG0000_TG00001i03 - bb03*G0000R_LG0000_TG00001i03 - bb04*G0000R_LG0000_TG00001i03 - fu08*G0000R_LG0000_TG00001i03 ;
dydt(39)= + fb07*LG0000*G0000T_LG0000i00 + fb06*LG0000*G0000T_LG0000i01 + fu06*G0000R_LG0000_LG0000i00 - bb04*G0000T_LG0000_LG0000i00 - bb05*G0000T_LG0000_LG0000i00 - bu06*G0000T_LG0000_LG0000i00 ;
dydt(40)= + fb06*LG0000*G0000T_TG00000i00 + fb08*TG00000*G0000T_LG0000i00 + fu07*G0000R_LG0000_TG00000i00 - bb05*G0000T_LG0000_TG00000i00 - bb03*G0000T_LG0000_TG00000i00 - bu02*G0000T_LG0000_TG00000i00 ;
dydt(41)= + fb07*LG0000*G0000T_TG00000i00 + fb08*TG00000*G0000T_LG0000i01 + fu02*G0000R_LG0000_TG00000i01 - bb04*G0000T_LG0000_TG00000i01 - bb03*G0000T_LG0000_TG00000i01 - bu02*G0000T_LG0000_TG00000i01 ;
dydt(42)= + fb06*LG0000*G0000T_TG00000i01 + fb08*TG00000*G0000T_LG0000i00 + fu08*G0000R_LG0000_TG00000i02 - bb05*G0000T_LG0000_TG00000i02 - bb03*G0000T_LG0000_TG00000i02 - bu07*G0000T_LG0000_TG00000i02 ;
dydt(43)= + fb07*LG0000*G0000T_TG00000i01 + fb08*TG00000*G0000T_LG0000i01 + fu08*G0000R_LG0000_TG00000i03 - bb04*G0000T_LG0000_TG00000i03 - bb03*G0000T_LG0000_TG00000i03 - bu07*G0000T_LG0000_TG00000i03 ;
dydt(44)= + fb06*LG0000*G0000T_TG00001i00 + fb08*TG00001*G0000T_LG0000i00 + fu07*G0000R_LG0000_TG00001i00 - bb05*G0000T_LG0000_TG00001i00 - bb03*G0000T_LG0000_TG00001i00 - bu02*G0000T_LG0000_TG00001i00 ;
dydt(45)= + fb07*LG0000*G0000T_TG00001i00 + fb08*TG00001*G0000T_LG0000i01 + fu02*G0000R_LG0000_TG00001i01 - bb04*G0000T_LG0000_TG00001i01 - bb03*G0000T_LG0000_TG00001i01 - bu02*G0000T_LG0000_TG00001i01 ;
dydt(46)= + fb06*LG0000*G0000T_TG00001i01 + fb08*TG00001*G0000T_LG0000i00 + fu08*G0000R_LG0000_TG00001i02 - bb05*G0000T_LG0000_TG00001i02 - bb03*G0000T_LG0000_TG00001i02 - bu07*G0000T_LG0000_TG00001i02 ;
dydt(47)= + fb07*LG0000*G0000T_TG00001i01 + fb08*TG00001*G0000T_LG0000i01 + fu08*G0000R_LG0000_TG00001i03 - bb04*G0000T_LG0000_TG00001i03 - bb03*G0000T_LG0000_TG00001i03 - bu07*G0000T_LG0000_TG00001i03 ;
dydt(48)= + fb05*TG00000*G0000R_TG00000i00 + fb02*TG00000*G0000R_TG00000i01 + bu03*G0000T_TG00000_TG00000i00 - bb04*G0000R_TG00000_TG00000i00 - bb01*G0000R_TG00000_TG00000i00 - fu03*G0000R_TG00000_TG00000i00 ;
dydt(49)= + fb05*TG00000*G0000R_TG00001i00 + fb02*TG00001*G0000R_TG00000i01 + bu03*G0000T_TG00000_TG00001i00 - bb04*G0000R_TG00000_TG00001i00 - bb01*G0000R_TG00000_TG00001i00 - fu03*G0000R_TG00000_TG00001i00 ;
dydt(50)= + fb02*TG00000*G0000R_TG00001i01 + fb05*TG00001*G0000R_TG00000i00 + bu03*G0000T_TG00001_TG00000i00 - bb01*G0000R_TG00001_TG00000i00 - bb04*G0000R_TG00001_TG00000i00 - fu03*G0000R_TG00001_TG00000i00 ;
dydt(51)= + fb08*TG00000*G0000T_TG00000i00 + fb08*TG00000*G0000T_TG00000i01 + fu03*G0000R_TG00000_TG00000i00 - bb03*G0000T_TG00000_TG00000i00 - bb03*G0000T_TG00000_TG00000i00 - bu03*G0000T_TG00000_TG00000i00 ;
dydt(52)= + fb08*TG00000*G0000T_TG00001i00 + fb08*TG00001*G0000T_TG00000i01 + fu03*G0000R_TG00000_TG00001i00 - bb03*G0000T_TG00000_TG00001i00 - bb03*G0000T_TG00000_TG00001i00 - bu03*G0000T_TG00000_TG00001i00 ;
dydt(53)= + fb08*TG00000*G0000T_TG00001i01 + fb08*TG00001*G0000T_TG00000i00 + fu03*G0000R_TG00001_TG00000i00 - bb03*G0000T_TG00001_TG00000i00 - bb03*G0000T_TG00001_TG00000i00 - bu03*G0000T_TG00001_TG00000i00 ;
dydt(54)= + fb05*TG00001*G0000R_TG00001i00 + fb02*TG00001*G0000R_TG00001i01 + bu03*G0000T_TG00001_TG00001i00 - bb04*G0000R_TG00001_TG00001i00 - bb01*G0000R_TG00001_TG00001i00 - fu03*G0000R_TG00001_TG00001i00 ;
dydt(55)= + fb08*TG00001*G0000T_TG00001i00 + fb08*TG00001*G0000T_TG00001i01 + fu03*G0000R_TG00001_TG00001i00 - bb03*G0000T_TG00001_TG00001i00 - bb03*G0000T_TG00001_TG00001i00 - bu03*G0000T_TG00001_TG00001i00 ;


ode_end_time = cputime;
ode_tot_cputime = ode_tot_cputime + (ode_end_time - ode_start_time);
