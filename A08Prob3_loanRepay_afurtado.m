%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%calculates cummulative total payments and cummulative principle payments on a amoritized loan and plots the two vectors on one set of axis 
%
% Assignment Information
%   Assignment:     A08, Problem 3
%   Author:         Ayaan Furtado-Tiwari, afurtado@purdue.edu
%   Team ID:        001-02
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Mihika Sane, sane@purdue
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% INITIALIZATION
r = 0.10/12;%periodic interest rate per month (percent)
n = 180;%number of total payments for the life of the loan (payments)
P = 500000;%principle amount of the loan (dollars)

%% ____________________
%% CALCULATIONS
A = (P*(r*(1+r)^n))/((1+r)^n-1); %fixed payment amount per month (dollars)
A_cummulative = [];
S_cummulative_temp = [];

for t = 1:1:n
    A_cummulative(t) = A*t; %cummulative amount of monthly payments (dollars)
    S_cummulative_temp(t) = A*((1+r)^(-(n-t+1)));%amount of principle paid during t month (dollars)
    S_cummulative(t) = sum(S_cummulative_temp);%cummulative amount of principle paid monthly (dollars)
end

%% ____________________
%% FORMATTED FIGURE DISPLAY
%plots cummulative total payments vs cummulative principle payments on a
%set of axis
figure()
plot(1:180,A_cummulative);
title({'Cummulative Total Payments (Dollars)'; 'vs. Cummulative Principal Payments (Dollars)'})
xlabel("Number of Months")
ylabel("Dollars")
hold on
plot(1:180, S_cummulative)
legend("Cummulative Total Payments","Cummulative Principle Payments",'Location',"northwest")
hold off



%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.







