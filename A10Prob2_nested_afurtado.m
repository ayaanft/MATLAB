%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% Script for A10 Problem 2: MATLAB Skills - Nested Loops
%
% Assignment Information
%   Assignment:     A10, Problem 2
%   Author:         Ayaan Furtado-Tiwari, afurtado@purdue.edu
%   Team ID:        001-02
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Name, login@purdue [repeat for each]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% FLOWCHART TRANSLATION
%initialize vars
a=0;
b=9;
count_outer = 0;
total_iterations = 0;
sum_ab = a+b;

while (sum_ab < 1000)
    count_outer = count_outer + 1;
    a = a+1;
    for c = 2:5:22
        a = 2*a + c;
        b = 7*c;
        sum_ab = a+b;
        total_iterations = total_iterations + 1;
    end
end

fprintf("Number of Outer Loop Iterations: %.2f\n",count_outer)
fprintf("Total Number of Iterations: %.2f\n", total_iterations)
fprintf("Final Sum of A and B: %.2f\n", sum_ab)



%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.