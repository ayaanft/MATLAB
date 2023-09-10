%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% Script for MATLAB Skills - FOR Loop
%
% Assignment Information
%   Assignment:     A08, Problem 1
%   Author:         Ayaan Furtado-Tiwari, afurtado@purdue.edu
%   Team ID:        001-02
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Name, login@purdue [repeat for each]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ____________________
%% Initialization
M = 10;
N = 2;
S = 9;

%% ____________________
%% FOR LOOP
for Z = [7, 26, 28, 12, 20, 4, 16, 29, 25, 27, 25]
    T = Z - M;
    V = M*(N-Z);
    S = V + S - T;    
end
fprintf("\nS: %g\n",S)







%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.