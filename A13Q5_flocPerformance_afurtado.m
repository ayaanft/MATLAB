 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%takes a data set and creates a linear and general model
%
% Assignment Information
%   Assignment:     13, Problem 5
%   Author:         Ayaan Furtado-Tiwari, afurtado@purdue.edu
%   Team ID:        001-02
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Name, login@purdue [repeat for each]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
data_set = readmatrix("Data_flocSettlement.xlsx");
conc = data_set(:,1);%Concentration (g/L)
vel = data_set(:,2);%Settling Velocity (m/hr)

%% ____________________
%% DATA on SCALED PLOTS
%plot and determine which function type for the data
figure()
%Linear X, Linear Y
subplot(2,2,1)
plot(conc,vel,"ro")
title("Rectilinear Axes")
xlabel("Concentration (g/L)")
ylabel("Settling Velocities (m/hr)")
%Logarithmic X, Linear Y
subplot(2,2,2)
plot(log10(conc),vel,"ro")
title("Semilog in X Axes")
xlabel("log(Concentration (g/L))")
ylabel("Settling Velocities (m/hr)")
%Linear X, Logarithmic Y
subplot(2,2,3)
plot(conc,log10(vel),"ro")
title("Semilog in Y Axes")
xlabel("Concentration (g/L)")
ylabel("log(Settling Velocities (m/hr))")
%Logarithmic X, Logarithmic Y
subplot(2,2,4)
plot(log10(conc),log10(vel),"ro")
title("Log-Log Axes")
xlabel("log(Concentration (g/L))")
ylabel("log(Settling Velocities (m/hr))")

%figure title
sgtitle("Data Set: Exponential")


%% ____________________
%% LINEARIZATION CALCULATIONS
log_vel = log(vel);
model_coef = polyfit(conc,log_vel,1);
linear_model = polyval(model_coef,conc);



%% ____________________
%% GENERAL MODEL CALCULATIONS
m = model_coef(1);
b = 10^model_coef(2);
general_model = b*10.^(conc.*m);

%% ____________________
%% LINEARIZATION FIGURE DISPLAY
figure()
plot(conc,log_vel,"ro")
title("Linearized Data vs. Linearized Model")
xlabel("Concentration (g/L)")
ylabel("log(Settling Velocities (m/hr))")
hold on
plot(conc,linear_model)
hold off
legend("Linearized Data","Linearized Model")

%% ____________________
%% GENERAL MODEL FIGURE DISPLAY
figure()
plot(conc,vel,"ro")
title("Settling Velocities (m/hr) based on Concentration (g/L)")
xlabel("Concentration (g/L)")
ylabel("Settling Velocities (m/hr)")
hold on
plot(conc,general_model)
hold off
legend("Original Data","General Model")

%% ____________________
%% ALL TEXT DISPLAYS
fprintf("Function Type: Exponential\n")
fprintf("Linear Model: log10(vel) = %.2f * conc + %.2f\n",model_coef(1),model_coef(2))
fprintf("General Model: vel = %.2f * 10^(conc * %.2f)\n",general_model_coef(2),general_model_coef(1))

%% ____________________
%% ANALYSIS

% -- Text displays from Command Window
% Function Type: Exponential
% Linear Model: log10(vel) = -0.66 * conc + 2.37
% General Model: vel = -17027.26 * 10^(conc * 595.08)

% -- Q1
%As seen in Figure 1, the only graph where the data is linear is the semilog in Y axes. 
%Consequently, the data set follows an exponential curve, as a linear data set would be linear on the rectilinear graph, a logarithmic data set would be linear on the semilog in X axes graph, and a power data set would be linear on the log-log graph.

% -- Q2
vel_1 = b*10^(2.5*m);
vel_2 = b*10^(12.5*m);
%At 2.5 g/L, the predicted settling velocity is 5.07997869453598 m/hr and at 12.5, the predicted settling velocity is 1.159247118991113e-06 m/hr. 
%


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.