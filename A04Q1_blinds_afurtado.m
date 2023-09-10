%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% script calculates necessary the solar radiation that is transmitted, absorbed, or reflected by a specific set of horizontal window blinds.
%
% Assignment Information
%   Assignment:     A04, Problem 1
%   Author:         Ayaan Furtado-Tiwari, afurtado@purdue.edu
%   Team ID:        ###-##
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Name, login@purdue [repeat for each]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% INITIALIZATION
s_s = 55; %slat spacing (mm)	
s_w = 60; %slat width (mm)
a_const = 0.37; %absorptivity constant
sh_a = 25 * pi/ 180; %shadow angle (rad)
sl_a = 45 * pi/180; %slat angle (rad)

%% ____________________
%% CALCULATIONS

%calculating the fractions of raditiona reflected by the slats
F1 = 0.5*(1 + (s_s/s_w) - sqrt(1 + (s_s/s_w)^2 + 2*(s_s/s_w)*sin(sl_a))); %fraction of radiation reflected by just lower slat
F2 = 0.5*((sqrt(1 + (s_s/s_w)^2 + 2*(s_s/s_w)*sin(sl_a)) ...
    + (sqrt(1 + (s_s/s_w)^2 - 2*(s_s/s_w)*sin(sl_a))) - 2*(s_s/s_w))); %fraction of radition reflected by both lower and upper slat together
F3 = 0.5*(1 + s_s/s_w - sqrt(1 + (s_s/s_w)^2 - 2*(s_s/s_w)*sin(sl_a)));%fraction of radition reflected by just the upper slat


%calculating transmission, absorbtion, and reflection of the slata
transmit = 1 - (s_w*sin(sh_a+sl_a))/(s_s*cos(sh_a)) ...
    *(1 - F1*(1-a_const) - ((F2*(1 - a_const)^2*(F3 + F1*F2*(1 - a_const)) ...
    /(1 - (F2^2)*(1 - a_const)^2)))); %calculating total raditation transmitted by the blinds
absorb = (a_const*s_w*sin(sh_a + sl_a))/(s_s*cos(sh_a)*(1 - F2*(1 - a_const))); %total fraction of radiation absorbed
reflect = 1 - absorb - transmit; %total reflected light fraction

%% ____________________
%% FORMATTED TEXT & FIGURE DISPLAYS
fprintf('\nTest Blind Results:\n')
fprintf('  Transmission = %2.4f\n  Absorption   = %2.4f\n  Reflection   = %2.4f\n\n',transmit,absorb,reflect)


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.


