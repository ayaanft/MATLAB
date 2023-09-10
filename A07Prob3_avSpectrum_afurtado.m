%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% sorts a given frequency in MHz into its Frequency Use
%
% Assignment Information
%   Assignment:     A07, Problem 3
%   Author:         Ayaan Furtado-Tiwari, afurtado@purdue.edu
%   Team ID:        001-02
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Name, login@purdue [repeat for each]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% INITIALIZATION
%test cases to run through the selection structure
test_case1 = 2950;%Frequency (MHz)
test_case2 = 102.70;%Frequency (MHz)
test_case3 = 335.400;%Frequency (MHz)
test_case4 = 121.500;%Frequency (MHz)
test_case5 = 315.500;%Frequency (MHz)
test_case6 = 225.000;%Frequency (MHz)
test_case7 = 330.150;%Frequency (MHz)

%% ____________________
%% SELECTION STRUCTURE
n = test_case6; %test variable which will be set to each of the test cases when run
fprintf("\n Frequency Use: ")

if n >= 108.150 & n <= 117.975
    fprintf("Aircraft navigation systems\n")
elseif n >= 121.475 && n <= 121.525
    fprintf("Emergency frequency band\n")
elseif n >= 118.000 && n <= 136.975
    fprintf("VHF ground communications\n")
elseif (n > 225.000 && n < 328.600) && (n < 335.400 && n < 399.900)
    fprintf("UHF ground communications\n")
elseif n >= 328.600 && n <= 335.400
    fprintf("Instrument Landing System glideslope\n")
elseif n > 2700 && n < 3000
    fprintf("Airport and weather radars\n")
else
    fprintf("frequency does not fall into any uses listed in the table (found in problem statement)")
end

%% ____________________
%% RESULTS
%{
Test Case 1: 
Frequency Use: Airport and weather radars

Test Case 2: 
Frequency Use: frequency does not fall into any uses listed in the table (found in problem statement)

Test Case 3: 
Frequency Use: Instrument Landing System glideslope

Test Case 4: 
Frequency Use: Emergency frequency band

Test Case 5: 
Frequency Use: UHF ground communications

Test Case 6: 
Frequency Use: frequency does not fall into any uses listed in the table (found in problem statement)

Test Case 6:
Frequency Use: Instrument Landing System glideslope
%}

%% ____________________
%% ANALYSIS

% -- 1 
% No, not all of the conditions are tested. "VHF ground communications" has
% not been tested because Test Case 4 falls into "Emergency frequency
% band", which is a subset of "VHF ground communications". In order to test
% this case, a good test frequency would be 120.000 Mhz.
%




%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.