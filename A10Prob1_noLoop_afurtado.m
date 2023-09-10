%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% Script for A10 Problem 1: MATLAB Skills - Removing Loops
%
% Assignment Information
%   Assignment:     A10, Problem 1
%   Author:         Ayaan Furtado-Tiwari, afurtado@purdue.edu
%   Team ID:        001-02
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Name, login@purdue [repeat for each]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% SOLUTION WITH NO LOOP
%initialize var
vec = [-30, 34, 42, -13, 12, -41, 1, 45, 30, 38, 30];

%use find to replace if statement
%case 1: when -5 < vec(idx) < 37
case1_vec_indexes = find(vec > -5 & vec <37);
newvec_noLoop(case1_vec_indexes) = (3+(7./vec(case1_vec_indexes)))./(6.*(vec(case1_vec_indexes).^2)-5./vec(case1_vec_indexes));
%case 2: when NOT -5 < vec(idx) < 37
case2_vec_indexes = find(vec < -5 | vec > 37);
newvec_noLoop(case2_vec_indexes) = (2./vec(case2_vec_indexes) + 6./((vec(case2_vec_indexes)).^2))./(9./(vec(case2_vec_indexes)-2));



%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.