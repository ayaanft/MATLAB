%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% calculates standard deviation of color of pixels in given potato image
% and classifies it into a USADA category.
%
% Assignment Information
%   Author:         Ayaan Furtado-Tiwari, afurtado@purdue.edu
%   Academic Integrity:
%     [x] I worked alone on this problem and only used resourses
%        that meet academic integrity expectations.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% There is no INITIALIZATION section. The variable "potato_gray" is already
% in your workspace. Use that variable in your calculations.

%% ____________________
%% CALCULATIONS
%calculates standard deviation of color of the sample potato
potato_gray_stdev = std(potato_gray(:));



%% ____________________
%% FORMATTED TEXT DISPLAYS
fprintf("Color Standard Deviation: %.3f\n",potato_gray_stdev)

%Determine which USADA grade the potato falls under
if potato_gray_stdev < 0.092
    fprintf("USADA grade: US No. 1\n")
elseif potato_gray_stdev >= 0.092 && 0.125 >= potato_gray_stdev
    fprintf("USADA grade: US No. 2\n")
else
    fprintf("USADA grade: Off-grade\n")
end


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.