function dydt = G059_I00_odes(t, y, rateconstants)

global event_flags;
global event_times

% state vector to node mapping
G0636R = y(1);
TG00001 = y(2);
G0636R_TG00001i00 = y(3);
TG00000 = y(4);
G0636T = y(5);
G0636T_TG00001i00 = y(6);
G0875R = y(7);
G0875R_TG00000i00 = y(8);
G0875T = y(9);
G0875T_TG00000i00 = y(10);
G0875R_LG0000i00 = y(11);
G0875R_LG0000_TG00000i00 = y(12);
G0875T_LG0000i00 = y(13);
G0875T_LG0000_TG00000i00 = y(14);
LG0000 = y(15);

% constants
fb00 = rateconstants(1);
bb00 = rateconstants(2);
kp00 = rateconstants(3);
fb01 = rateconstants(4);
bb01 = rateconstants(5);
kp01 = rateconstants(6);
fb02 = rateconstants(7);
bb02 = rateconstants(8);
kp02 = rateconstants(9);
fb03 = rateconstants(10);
bb03 = rateconstants(11);
kp03 = rateconstants(12);
fb04 = rateconstants(13);
bb04 = rateconstants(14);
fb05 = rateconstants(15);
bb05 = rateconstants(16);
fu00 = rateconstants(17);
bu00 = rateconstants(18);
fu01 = rateconstants(19);
bu01 = rateconstants(20);
fu02 = rateconstants(21);
bu02 = rateconstants(22);
fu03 = rateconstants(23);
bu03 = rateconstants(24);
fu04 = rateconstants(25);
bu04 = rateconstants(26);
fu05 = rateconstants(27);
bu05 = rateconstants(28);
clamp_sink_LG0000 = rateconstants(29);



% expressions
clamp_source_LG0000 = (+(event_flags(1) && ~event_flags(4))*min((t-event_times(1))/1000, 1)*3.33333333333333*4.0+event_flags(4)*max(1-(t-event_times(4))/1000, 0)*3.33333333333333*4.0+(event_flags(2) && ~event_flags(5))*min((t-event_times(2))/1000, 1)*3.33333333333333*4.0+event_flags(5)*max(1-(t-event_times(5))/1000, 0)*3.33333333333333*4.0+(event_flags(3) && ~event_flags(6))*min((t-event_times(3))/1000, 1)*3.33333333333333*4.0+event_flags(6)*max(1-(t-event_times(6))/1000, 0)*3.33333333333333*4.0);

% differential equations for independent species
dydt(1)= + bb00*G0636R_TG00001i00 + kp00*G0636R_TG00001i00 + bu00*G0636T - fb00*G0636R*TG00001 - fu00*G0636R ;
dydt(2)= + bb00*G0636R_TG00001i00 + bb01*G0636T_TG00001i00 + kp02*G0875R_TG00000i00 + kp03*G0875T_TG00000i00 + kp02*G0875R_LG0000_TG00000i00 + kp03*G0875T_LG0000_TG00000i00 - fb00*G0636R*TG00001 - fb01*G0636T*TG00001 ;
dydt(3)= + fb00*G0636R*TG00001 + bu02*G0636T_TG00001i00 - bb00*G0636R_TG00001i00 - kp00*G0636R_TG00001i00 - fu02*G0636R_TG00001i00 ;
dydt(4)= + kp00*G0636R_TG00001i00 + kp01*G0636T_TG00001i00 + bb02*G0875R_TG00000i00 + bb03*G0875T_TG00000i00 + bb02*G0875R_LG0000_TG00000i00 + bb03*G0875T_LG0000_TG00000i00 - fb02*G0875R*TG00000 - fb03*G0875T*TG00000 - fb02*G0875R_LG0000i00*TG00000 - fb03*G0875T_LG0000i00*TG00000 ;
dydt(5)= + bb01*G0636T_TG00001i00 + kp01*G0636T_TG00001i00 + fu00*G0636R - fb01*G0636T*TG00001 - bu00*G0636T ;
dydt(6)= + fb01*G0636T*TG00001 + fu02*G0636R_TG00001i00 - bb01*G0636T_TG00001i00 - kp01*G0636T_TG00001i00 - bu02*G0636T_TG00001i00 ;
dydt(7)= + bb02*G0875R_TG00000i00 + kp02*G0875R_TG00000i00 + bb04*G0875R_LG0000i00 + bu01*G0875T - fb02*G0875R*TG00000 - fb04*G0875R*LG0000 - fu01*G0875R ;
dydt(8)= + fb02*G0875R*TG00000 + bb04*G0875R_LG0000_TG00000i00 + bu04*G0875T_TG00000i00 - bb02*G0875R_TG00000i00 - kp02*G0875R_TG00000i00 - fb04*LG0000*G0875R_TG00000i00 - fu04*G0875R_TG00000i00 ;
dydt(9)= + bb03*G0875T_TG00000i00 + kp03*G0875T_TG00000i00 + bb05*G0875T_LG0000i00 + fu01*G0875R - fb03*G0875T*TG00000 - fb05*G0875T*LG0000 - bu01*G0875T ;
dydt(10)= + fb03*G0875T*TG00000 + bb05*G0875T_LG0000_TG00000i00 + fu04*G0875R_TG00000i00 - bb03*G0875T_TG00000i00 - kp03*G0875T_TG00000i00 - fb05*LG0000*G0875T_TG00000i00 - bu04*G0875T_TG00000i00 ;
dydt(11)= + bb02*G0875R_LG0000_TG00000i00 + kp02*G0875R_LG0000_TG00000i00 + fb04*G0875R*LG0000 + bu03*G0875T_LG0000i00 - fb02*G0875R_LG0000i00*TG00000 - bb04*G0875R_LG0000i00 - fu03*G0875R_LG0000i00 ;
dydt(12)= + fb02*G0875R_LG0000i00*TG00000 + fb04*LG0000*G0875R_TG00000i00 + bu05*G0875T_LG0000_TG00000i00 - bb02*G0875R_LG0000_TG00000i00 - kp02*G0875R_LG0000_TG00000i00 - bb04*G0875R_LG0000_TG00000i00 - fu05*G0875R_LG0000_TG00000i00 ;
dydt(13)= + bb03*G0875T_LG0000_TG00000i00 + kp03*G0875T_LG0000_TG00000i00 + fb05*G0875T*LG0000 + fu03*G0875R_LG0000i00 - fb03*G0875T_LG0000i00*TG00000 - bb05*G0875T_LG0000i00 - bu03*G0875T_LG0000i00 ;
dydt(14)= + fb03*G0875T_LG0000i00*TG00000 + fb05*LG0000*G0875T_TG00000i00 + fu05*G0875R_LG0000_TG00000i00 - bb03*G0875T_LG0000_TG00000i00 - kp03*G0875T_LG0000_TG00000i00 - bb05*G0875T_LG0000_TG00000i00 - bu05*G0875T_LG0000_TG00000i00 ;
dydt(15)= + bb04*G0875R_LG0000i00 + bb05*G0875T_LG0000i00 + bb04*G0875R_LG0000_TG00000i00 + bb05*G0875T_LG0000_TG00000i00 + clamp_source_LG0000 - fb04*G0875R*LG0000 - fb05*G0875T*LG0000 - fb04*LG0000*G0875R_TG00000i00 - fb05*LG0000*G0875T_TG00000i00 - clamp_sink_LG0000*LG0000 ;
dydt = dydt(:);

