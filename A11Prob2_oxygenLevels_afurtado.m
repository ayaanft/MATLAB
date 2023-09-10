%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% creates a model to predict concentration of dissolved oxygen giving
% temperature and analyzes its effectiveness using a graph, SSE,SST, and
% r^2
%
% Assignment Information
%   Assignment:     A11, Problem 2
%   Author:         Ayaan Furtado-Tiwari, afurtado@purdue.edu
%   Team ID:        001-02
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Name, login@purdue [repeat for each]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
%import data set
Data_DO_concentrations = readmatrix("Data_DO_concentrations.csv");
temp = Data_DO_concentrations(:,1);%Temperature (°C)
O2_conc = Data_DO_concentrations(:,2);%Concentration of Dissolved Oxygen (mg/L)


%% ____________________
%% REGRESSION CALCULATIONS
x_squared = temp.^2; 
xy = temp.*O2_conc;
x_bar = mean(temp);
y_bar = mean(O2_conc);
product_x_bar_y_bar = x_bar*y_bar;
xy_bar = mean(temp.*O2_conc);
x_squared_bar = mean(x_squared);
x_bar_squared = x_bar^2;

a = (product_x_bar_y_bar - xy_bar)/(x_bar_squared-x_squared_bar); %slope
b = y_bar - a*x_bar; %y-intercept
least_squares_model = a.*temp + b;

SSE = sum((O2_conc - least_squares_model).^2); 
SST = sum((O2_conc - y_bar).^2);
r_squared = 1 - SSE/SST;

%% ____________________
%% PREDICTION CALCULATIONS
%predict the Concentration of Dissolved Oxygen at 17 deg C and 45 deg C
%at 17 deg C
O2_conc_17C = a*17 + b;%mg/L
%at 45 deg C
O2_conc_45C = a*45 +b;%mg/L

%% ____________________
%% FORMATTED TEXT DISPLAYS
%output the linear model equation and the goodness of fit results
fprintf("Linear Model Equation: O2_Conc = %.3f(temp) + %.3f\n",a,b)
fprintf("SSE: %.3f\n",SSE)
fprintf("SST: %.3f\n",SST)
fprintf("r^2: %.3f\n",r_squared)

%% ____________________
%% FORMATTED FIGURE DISPLAYS
%plot data and model line on the same graph
figure()
plot(temp,O2_conc,"ob")
title("Least Squares Model vs Data")
xlabel("Temperature (deg C)")
ylabel("Concentration of Dissolved Oxygen (mg/L)")
hold on
plot(temp,least_squares_model)
hold off
legend("Collected Data","Least Squares Model")


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The script I am submitting
% is my own original work.



