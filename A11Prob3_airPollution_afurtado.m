function A11Prob3_airPollution_afurtado
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%creates two models for two respective data sets and performs linear
%regression and outputs the results of said calculations
%
% Function Call
% A11Prob3_airPollution_afurtado ()
%
% Input Arguments
% N/A
%
% Output Arguments
% N/A
%
% Assignment Information
%   Assignment:     A11, Problem 3
%   Author:         Ayaan Furtado-Tiwari, afurtado@purdue.edu
%   Team ID:        001-02
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Name, login@purdue [repeat for each]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
%import CO2 data set
CO2_data = readmatrix("Data_NOAA_ESRL_co2_trend_1980-2022-global.csv");
CO2_decimal_year = CO2_data(58:end,3);
CO2_average = CO2_data(58:end,4);%ppm

%import N2O data set
N2O_data = readmatrix("Data_NOAA_ESRL_n2o_trend_2001-2022.txt");
N2O_decimal_year = N2O_data(28:end,3);
N2O_average = N2O_data(28:end,4);%ppb

%% ____________________
%% CALCULATIONS
%calculate linear regression for CO2 data
CO2_x_squared = CO2_decimal_year.^2; 
CO2_xy = CO2_decimal_year.*CO2_average;
CO2_x_bar = mean(CO2_decimal_year);
CO2_y_bar = mean(CO2_average);
CO2_product_x_bar_y_bar = CO2_x_bar*CO2_y_bar;
CO2_xy_bar = mean(CO2_xy);
CO2_x_squared_bar = mean(CO2_x_squared);
CO2_x_bar_squared = CO2_x_bar^2;

CO2_a = (CO2_product_x_bar_y_bar - CO2_xy_bar)/(CO2_x_bar_squared-CO2_x_squared_bar); %slope
CO2_b = CO2_y_bar - CO2_a*CO2_x_bar; %y-intercept
CO2_least_squares_model = CO2_a.*CO2_decimal_year + CO2_b;

%find goodness of fit for CO2 data
CO2_SSE = sum((CO2_average - CO2_least_squares_model).^2); 
CO2_SST = sum((CO2_average - CO2_y_bar).^2);
CO2_r_squared = 1 - CO2_SSE/CO2_SST;

%calculate linear regression for N2O data
N2O_x_squared = N2O_decimal_year.^2; 
N2O_xy = N2O_decimal_year.*N2O_average;
N2O_x_bar = mean(N2O_decimal_year);
N2O_y_bar = mean(N2O_average);
N2O_product_x_bar_y_bar = N2O_x_bar*N2O_y_bar;
N2O_xy_bar = mean(N2O_xy);
N2O_x_squared_bar = mean(N2O_x_squared);
N2O_x_bar_squared = N2O_x_bar^2;

N2O_a = (N2O_product_x_bar_y_bar - N2O_xy_bar)/(N2O_x_bar_squared-N2O_x_squared_bar); %slope
N2O_b = N2O_y_bar - N2O_a*N2O_x_bar; %y-intercept
N2O_least_squares_model = N2O_a.*N2O_decimal_year + N2O_b;

%find goodness of fit for N2O data
N2O_SSE = sum((N2O_average - N2O_least_squares_model).^2); 
N2O_SST = sum((N2O_average - N2O_y_bar).^2);
N2O_r_squared = 1 - N2O_SSE/N2O_SST;


%% ____________________
%% FORMATTED TEXT DISPLAYS
%output the linear model equation and the goodness of fit results
%for CO2 data
fprintf("CO2 Linear Regression: \n")
fprintf("Linear Model Equation: CO2_average = %.3f(CO2_decimal_year) + %.3f\n",CO2_a,CO2_b)
fprintf("SSE: %.3f\n",CO2_SSE)
fprintf("SST: %.3f\n",CO2_SST)
fprintf("r^2: %.3f\n",CO2_r_squared)

%for N2O data
fprintf("\nN2O Linear Regression: \n")
fprintf("Linear Model Equation: N2O_average = %.3f(N2O_decimal_year) + %.3f\n",N2O_a,N2O_b)
fprintf("SSE: %.3f\n",N2O_SSE)
fprintf("SST: %.3f\n",N2O_SST)
fprintf("r^2: %.3f\n",N2O_r_squared)

%% ____________________
%% FORMATTED FIGURE DISPLAYS
%plot both data sets and their respective least squares models in one
%figure
figure()
%plot CO2 data and the CO2 least squares model on the same graph
subplot(2,1,1)
plot(CO2_decimal_year,CO2_average,"ob")
title("CO2 Data: Least Squares Model vs Data")
xlim([1980 2025])
xlabel("Decimal Year")
ylabel("Average CO2 (ppm)")
hold on
plot(CO2_decimal_year,CO2_least_squares_model)
hold off
legend("Collected Data","Least Squares Model")

%plot N2O data and the N2O least squares model on the same graph
subplot(2,1,2)
plot(N2O_decimal_year,N2O_average,"ob")
title("N2O Data: Least Squares Model vs Data")
xlim([1980 2025])
xlabel("Decimal Year")
ylabel("Average N2O (ppb)")
hold on
plot(N2O_decimal_year,N2O_least_squares_model)
hold off
legend("Collected Data","Least Squares Model")

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The function I am submitting
% is my own original work.



