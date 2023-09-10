%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%creates a model to predict resevoir capacity during a given year
%
% Assignment Information
%   Assignment:     Quiz 3, Problem 2
%   Author:         Ayaan Furtado-Tiwari, afurtado@purdue.edu
%   Team ID:        001-02
%   Academic Integrity:
%     [x] I worked alone on this problem and only used resourses
%        that meet academic integrity expectations.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% INITIALIZATION
data_set = readmatrix("Exam3_Q2_Data_34510680.csv");
years = data_set(:,1);%years elapsed starting at year 0 (years)
resv_capacity = data_set(:,2);%total resevoir capacity over the years (acre-feet)


%% ____________________
%% LINEAR REGRESSION CALCULATIONS
x_squared = years.^2; 
xy = years.*resv_capacity;
x_bar = mean(years);
y_bar = mean(resv_capacity);
product_x_bar_y_bar = x_bar*y_bar;
xy_bar = mean(xy);
x_squared_bar = mean(x_squared);
x_bar_squared = x_bar^2;

a = (product_x_bar_y_bar - xy_bar)/(x_bar_squared-x_squared_bar); %slope
b = y_bar - a*x_bar; %y-intercept
least_squares_model = a.*years + b;



%% ____________________
%% PART A - TEXT DISPLAY (Least Squares Model)
fprintf("Linear Model Equation: Resv Capacity = %.3f(years) + %.3f\n",a,b)


%% ____________________
%% PART B - PREDICTION CALCULATIONS
%predict the total Resvoir Capacity at 21.5 years and 35.9 years
%at 21.5 years
resv_capacity_21_half = a*21.5 + b;%acre-feet
disp(resv_capacity_21_half)
%at 35.9 years
resv_capacity_35_nine = a*35.9 +b;%acre-feet
disp(resv_capacity_35_nine)

%% ____________________
%% PART C - FIGURE DISPLAY
figure()
plot(years,resv_capacity,"ob")
title("Least Squares Model vs Data")
xlabel("Years Elapsed (years)")
ylabel("Total Resevoir Capacity (acre-feet)")
hold on
plot(years,least_squares_model)
hold off
legend("Collected Data","Least Squares Model")
grid on


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.