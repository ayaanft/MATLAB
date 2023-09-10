%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%takes in data set and creates a linear and general model
%
% Assignment Information
%   Assignment:     A13, Problem 4
%   Author:         Ayaan Furtado-Tiwari, afurtado@purdue.edu
%   Team ID:        001-02
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Name, login@purdue [repeat for each]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% INITIALIZATION
% DATA SET
x1 = [5, 19, 31, 45, 55, 71, 88, 100, 115, 127, 141, 143];
y1 = [32, 613, 2263, 5289, 10005, 16382, 23239, 32935, 44530, 59441, 69999, 90322];

%% ____________________
%% PLOTS WITH AXIS SCALING
%plot and determine which function type for the data
figure()
%Linear X, Linear Y
subplot(2,2,1)
plot(x1,y1,"ro")
title("Rectilinear Axes")
xlabel("X1")
ylabel("Y1")
%Logarithmic X, Linear Y
subplot(2,2,2)
plot(log10(x1),y1,"ro")
title("Semilog in X Axes")
xlabel("Log(X1)")
ylabel("Y1")
%Linear X, Logarithmic Y
subplot(2,2,3)
plot(x1,log10(y1),"ro")
title("Semilog in Y Axes")
xlabel("X1")
ylabel("Log(Y1)")
%Logarithmic X, Logarithmic Y
subplot(2,2,4)
plot(log10(x1),log10(y1),"ro")
title("Log-Log Axes")
xlabel("X1")
ylabel("Y1")

%figure title
sgtitle("Data Set: Power")

%% ____________________
%% LINEARIZED MODEL

%%% DATA LINEARIZATION & MODEL
log_x1 = log(x1);
log_y1 = log(y1);
model_coef = polyfit(log_x1,log_y1,1);
linear_model = polyval(model_coef,log_x1);

%%% TEXT DISPLAY
fprintf("Function Type: Power\n")
fprintf("Linear Model: log10(y1) = %.2f * log10(x1) + %.2f\n",model_coef(1),model_coef(2))

%%% FIGURE DISPLAY
figure()
plot(log_x1,log_y1,"ro")
title("Linearized Data vs. Linearized Model")
xlabel("log(X1)")
ylabel("log(Y1)")
hold on
plot(log_x1,linear_model)
hold off
legend("Linearized Data","Linearized Model")


%% ____________________
%% DETERMINE MODEL

%%% PARAMETER IDENTIFICATION
m = model_coef(1);
b = 10^(model_coef(2));
general_model = b*(x1.^(m));

%%% TEXT DISPLAY
fprintf("General Model: y1 = %.2f * x1^(%.2f)\n",b,m)

%%% FIGURE DISPLAY
figure()
plot(x1,y1,"ro")
title("Data Set vs. General Model")
xlabel("X1")
ylabel("Y1")
hold on
plot(x1,general_model)
hold off
legend("Data Set","General Model")



%% ____________________
%% ANALYSIS




%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.