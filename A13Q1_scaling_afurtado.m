%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% Template for A13 - Problem 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% INITIALIZATION
% DATA SET 1
x1 = [3, 5, 9, 15, 24, 41, 68, 114, 190, 316];
y1 = [16, 134, 253, 333, 461, 514, 669, 844, 936, 1067];

% DATA SET 2
x2 = [10, 120, 230, 340, 450, 560, 670, 780, 890, 1000];
y2 = [5, 7, 8, 19, 21, 39, 71, 132, 227, 311];


%% ____________________
%% FORMATTED FIGURES

% Formatted Figure 1 - DATA SET 1
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
sgtitle("Data Set 1: Logarithmic")

% Formatted Figure 2 - DATA SET 2
figure()
%Linear X, Linear Y
subplot(2,2,1)
plot(x2,y2,"ro")
title("Rectilinear Axes")
xlabel("X2")
ylabel("Y2")
%Logarithmic X, Linear Y
subplot(2,2,2)
plot(log10(x2),y2,"ro")
title("Semilog in X Axes")
xlabel("Log(X2)")
ylabel("Y2")
%Linear X, Logarithmic Y
subplot(2,2,3)
plot(x2,log10(y2),"ro")
title("Semilog in Y Axes")
xlabel("X2")
ylabel("Log(Y2)")
%Logarithmic X, Logarithmic Y
subplot(2,2,4)
plot(log10(x2),log10(y2),"ro")
title("Log-Log Axes")
xlabel("Log(X)")
ylabel("Log(Y)")

%figure title
sgtitle("Data Set 2: Exponential")



%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.







