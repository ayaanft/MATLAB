%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Script for MATLAB Skills - WHILE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% WHILE LOOP
%initializing variables
k = 0;
A = 7;
B = 243;

%selection structure: while loop
while A < 93 || B > 51
    C = B/A;
    A = A/0.65;
    B = B - 19;
    k = k + 1;
end

%output the number of interations and the value of C
fprintf("Final Value of C: %g\n",C)
fprintf("\nNumber of Iterations: %g\n",k)





%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.