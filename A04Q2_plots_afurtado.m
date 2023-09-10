%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% Script for MATLAB Skills - Plots
%
% Assignment Information
%   Assignment:     A04, Problem 2
%   Author:         Ayaan Furtado-Tiwari, afurtado@purdue.edu
%   Team ID:        ###-##
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Name, login@purdue [repeat for each]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% INITIALIZATION

% X data: cost in US dollars
x = [28, 29, 31, 33, 35, 37, 38, 40, 42, 44, 46, 47];
% Y data: volume in cubic meters
y1 = [8374, 8145, 7957, 5609, 5106, 4731, 3628, 3570, 3161, 3015, 2109, 1567];
y2 = [16175, 13630, 12722, 10645, 9977, 8891, 7357, 6968, 5743, 4423, 3870, 3609];

%% ____________________
%% FIGURE 1
%plot y1 vs x
figure()
plot(y1,x,'ms')
title("Y1: Volume in cubic meters and cost in US dollars")
xlabel('Volume(m^3)')
ylabel('Cost (US Dollars)')
grid on


%% ____________________
%% FIGURE 2
figure()
%plot y1 vs x
subplot(2,1,1);
plot(y1,x,'ms');
title("Y1: Volume in cubic meters and cost in US dollars")
xlabel('Volume(m^3)')
ylabel('Cost (US Dollars)')
grid on

%plot y2 vs x in the same figure below the first graph
subplot(2,1,2);
plot(y2,x,'ms');
title("Y2: Volume in cubic meters and cost in US dollars")
xlabel('Volume(m^3)')
ylabel('Cost (US Dollars)')
grid on

%% ____________________
%% FIGURE 3
%plot y1 vs x and y2 vs x on the same graph
figure()
plot(y1,x,'rs');
title({'Y1 vs Y2','Volume in cubic meters and cost in US dollars'})
xlabel('Volume(m^3)')
ylabel('Cost (US Dollars)')
grid on

hold on
plot(y2,x,'bd')
legend("Y1", "Y2")
hold off

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.





