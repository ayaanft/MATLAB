function [s,t,z] = A08Q2_UDFSkill_34510680(h,a,f)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%function call: A08Q2_UDFSkill_34510680(h,a,f)
%inputs: h,a,f
%outputs:s,t,z
%
%this script does some arithmetic with the inputs to calculate the outputs
%and also calculates for a local variable "u", which is printed to the
%command window
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%   Function template for MATLAB Skills - UDFs
%
% Assignment Information
%   Assignment:     A08, Problem 2
%   Author:         Ayaan Furtado-Tiwari, afurtado@purdue.edu
%   Team ID:        001-02
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Name, login@purdue [repeat for each]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% INITIALIZATION
s = f - 20;
t = (h / a) - 10;
z = t + s;

%% ____________________
%% CALCULATIONS
u = s * t - z;


%% ____________________
%% FORMATTED TEXT DISPLAYS
fprintf("\n u: %.2f\n",u)


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The function I am submitting
% is my own original work.



