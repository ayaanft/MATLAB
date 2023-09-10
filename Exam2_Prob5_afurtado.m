%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% predicta the number of months needed to meet a desired target revenue from selling the chocolates
%
% Assignment Information
%   Author:         Ayaan Furtado-Tiwari, afurtado@purdue.edu
%   Academic Integrity:
%     [x] I worked alone on this problem and only used resourses
%        that meet academic integrity expectations.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% INITIALIZATION
target_rev = 1074966;%Target Revenue ($)
sale_price = 6.61;%Sale price per box ($)
max_time = 33;%Maximum time to reach target (months)

%initialize data from monthly sales file
monthly_sales = readmatrix("Exam2_monthlySales_34510680.csv"); %estimated boxes sold per month(boxes)
monthly_sales_dollars = monthly_sales.* sale_price;

%intialize counter for how long it takes to reach goal
months = 0;
%initialize current revenue at month 0
current_rev = 0;%($)

%% ____________________
%% LOOP
while current_rev < target_rev
    months = months + 1;
    current_rev = monthly_sales_dollars(months) + current_rev;
end

%% ____________________
%% TEXT DISPLAYS
if current_rev >= target_rev && 33 >= months
    fprintf("Predicted Revenue: $%.2f\n",current_rev)
    fprintf("Number of Months Taken: %.2f months\n",months)
else
    fprintf("Target revenue not met.")
    fprintf("Predicted Revenue: $%.2f\n",current_rev)
    fprintf("Number of Months Checked: %.2f months\n",months)
end

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.