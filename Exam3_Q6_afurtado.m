%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%takes a data set and creates a linear and general model
%
% Assignment Information
%   Assignment:     Quiz 3, Problem 6
%   Author:         Ayaan Furtado-Tiwari, afurtado@purdue.edu
%   Team ID:        001-02
%   Academic Integrity:
%     [x] I worked alone on this problem and only used resourses
%        that meet academic integrity expectations.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% INITIALIZATION
data_set = readmatrix("Exam3_Q6_Data_34510680.csv");
voltage = data_set(:,1); %V
current = data_set(:,2);%mA

%% ____________________
%% DATA on SCALED PLOTS
%plot and determine which function type for the data
figure()
%Linear X, Linear Y
subplot(2,2,1)
plot(voltage,current,"ro")
title("Rectilinear Axes")
xlabel("Voltage (V)")
ylabel("Current (mA)")
grid on
%Logarithmic X, Linear Y
subplot(2,2,2)
plot(log10(voltage),current,"ro")
title("Semilog in X Axes")
xlabel("log(Voltage (V))")
ylabel("Current (mA)")
grid on
%Linear X, Logarithmic Y
subplot(2,2,3)
plot(voltage,log10(current),"ro")
title("Semilog in Y Axes")
xlabel("Voltage (V)")
ylabel("log(Current (mA))")
grid on
%Logarithmic X, Logarithmic Y
subplot(2,2,4)
plot(log10(voltage),log10(current),"ro")
title("Log-Log Axes")
xlabel("log(Voltage (V))")
ylabel("log(Current (mA))")
grid on

%figure title
sgtitle("Data Set: Exponential")


%% ____________________
%% LINEARIZATION CALCULATIONS
log_current = log(current);
model_coef = polyfit(voltage,log_current,1);
linear_model = polyval(model_coef,voltage);


%% ____________________
%% GENERAL MODEL CALCULATIONS
m = model_coef(1);
b = 10^model_coef(2);
general_model = b*10.^(voltage.*m);

%% ____________________
%% LINEARIZATION FIGURE DISPLAY
figure()
plot(voltage,log_current,"ro")
title("Linearized Data vs. Linearized Model")
xlabel("Voltage (V)")
ylabel("log(Current (mA))")
hold on
grid on
plot(voltage,linear_model,"b-")
hold off
legend("Linearized Data","Linearized Model")


%% ____________________
%% GENERAL MODEL FIGURE DISPLAY
figure()
plot(voltage,current,"ro")
title("Current(mA) based on Voltage (V)")
xlabel("Voltage (V)")
ylabel("Current (mA)")
hold on
grid on
plot(voltage,general_model)
hold off
legend("Original Data","General Model")


%% ____________________
%% ALL TEXT DISPLAYS
fprintf("Function Type: Exponential\n")
fprintf("Linear Model: log10(current) = %.2f * voltage + %.2f\n",model_coef(1),model_coef(2))
fprintf("General Model: current = %g * 10^(voltage * %.2f)\n",b,m)



%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.