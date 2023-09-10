%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Script for MATLAB Skills - Selection Structure
%
% Author:   Ayaan-Furtado-Tiwari, afurtado@purdue.edu
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% SELECTION STRUCTURE

A = 0;

if A > 289
    A = A - 62;
elseif A > 81 && A < 121
    A = A^1.25;
elseif A <= 29 || A >= 279
    A = A/5;
elseif A < 69 || A >= 227
    A = A + 97;
else 
    fprintf("%i is invalid\n", A)
end

%used to test the selection structure
%fprintf("A: %g\n",A)




%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.