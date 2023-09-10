function Exam2_Q2_calcs_34510680(x)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% Function for Exam 2 - Problem 2
%
%Function Call:
%Exam2_Q2_calcs_34510680(x)
%
%Input Arguments:
%x
%
%Output Arguments:
%N/A
%
% Assignment Information
%   Author:         Ayaan Furtado-Tiwari, afurtado@purdue.edu
%   Academic Integrity:
%     [x] I worked alone on this problem and only used resourses
%        that meet academic integrity expectations.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% FLOWCHART TRANSLATION
if 4 < x && x < 30
   if x < 10
       y = x + 5;
       x = x^2;
   elseif x > 22
       fprintf("%.3f is out of bounds",x)
   elseif x > 18
       y = x^2 + 5;  
   end
else
    x = 0;
end




%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The function I am 
% submitting is my own original work.