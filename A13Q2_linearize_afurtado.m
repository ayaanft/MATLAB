%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% Template for A13 - Problem 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% INITIALIZATION
% DATA SET 1
% Function type: Power
x1 = [6, 34, 59, 88, 110, 142, 176, 202, 232, 258];
y1 = [2, 90, 428, 966, 1909, 3272, 5139, 7437, 9662, 12824];

% DATA SET 2
% Function type: Logarithmic
x2 = [3, 5, 9, 16, 23, 37, 69, 116, 186, 333];
y2 = [13, 114, 239, 305, 411, 553, 685, 837, 910, 927];



%% ____________________
%% Data Linearization Calculations
%DATA SET 1: Power = log-log
log_x1 = log(x1);
log_y1 = log(y1);
data_set1_coef = polyfit(log_x1,log_y1,1);
data_set1_model = polyval(data_set1_coef,log_x1);

%DATA SET 2: Logarithmic = Semilog in x-axis
log_x2 = log(x2);
data_set2_coef = polyfit(log_x2,y2,1);
data_set2_model = polyval(data_set2_coef,log_x2);
%% ____________________
%% Text Display
%Data Set 1
fprintf("Data Set 1\n")
fprintf("Function Type: Power\n")
fprintf("log10(y1) = %.2f * log10(x1) + %.2f\n\n",data_set1_coef(1),data_set1_coef(2))
%Data Set 2
fprintf("Data Set 2\n")
fprintf("Function Type: Logarithmic\n")
fprintf("y2 = %.2f * log10(x2) + %.2f\n",data_set2_coef(1),data_set2_coef(2))

%% ____________________
%% Figure Display
%Data Set 1
figure()
plot(log_x1,log_y1,"ro")
title("Data Set 1: Linearized Data vs. Polyfit Model")
xlabel("X1")
ylabel("Y1")
hold on
plot(log_x1,data_set1_model)
hold off
legend("Linearized Data","Polyfit Model")

%Data Set 2
figure()
plot(log_x2, y2,"ro")
title("Data Set 2: Linearized Data vs. Polyfit Model")
xlabel("Log(X2)")
ylabel("Y2")
hold on
plot(log_x2,data_set2_model)
hold off
legend("Linearized Data","Polyfit Model")

%% ____________________
%% RESULTS
% Data Set 1
% Function Type: Power
% log10(y1) = 2.35 * log10(x1) + -3.58
%
% Data Set 2
% Function Type: Logarithmic
% y2 = 211.36 * log10(x2) + -228.63



%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.







