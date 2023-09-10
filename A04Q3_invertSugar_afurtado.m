%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%Calculates and graphs statistics relevant to Sugar Inversion for the
%Data_sucrose data set
%
% Assignment Information
%   Assignment:     A04, Problem 3
%   Author:         Ayaan Furtado-Tiwari, afurtado@purdue.edu
%   Team ID:        ###-##
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Name, login@purdue [repeat for each]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%% ____________________
%% STEP 1
%import data set
Data_sucrose = readmatrix("Data_sucrose.csv"); 
time = Data_sucrose(:,1); %time at which data was recorded (min)
Test1_Concentration = Data_sucrose(:,2);%concentration of first test (M)
Test2_Concentration = Data_sucrose(:,3);%concentration of second test (M)
Test3_Concentration = Data_sucrose(:,4);%concentration of third test (M)

%% ____________________
%% STEP 2
%calculate model line by plugging in all times into model equation
model_concentration_vec = 0.5867.*(exp(-0.060.*time)); %M

%plot graph of raw data from all tests on one set of axis
figure()
plot(time,Test1_Concentration,'ro');
title({'Sugar Inversion Tests','Time in minutes and Concentration in molarity'})
xlabel('Time(min)')
ylabel('Concentration(M)')
grid on

hold on
plot(time,Test2_Concentration,'bo')
plot(time,Test3_Concentration,'go')
plot(time,model_concentration_vec)
legend("Test 1", "Test 2","Test 3","Model")
hold off


%% ____________________
%% STEP 3
%Calculations for Mean and Standard Deviation

Concentration_data = Data_sucrose(:,2:4); %data set without the time columnn
mean_concentration_vec = mean(Concentration_data,2); %calculates the mean at each time
standard_dev_vec = std(Concentration_data,0,2); %calculates the standard deviation at each time

%% ____________________
%% STEP 4
%plot mean concentration (M) vs time (min) with error bars
figure()
plot(time,mean_concentration_vec);
title({'Sugar Inversion Tests Variation','Time in minutes and Concentration in molarity'})
xlabel('Time(min)')
ylabel('Mean Concentration(M)')
grid on

hold on
plot(time,model_concentration_vec,'g')
errorbar(time,mean_concentration_vec,standard_dev_vec,'r*')
legend('Mean Concentration','Model','Standard Deviation')
hold off


%% ____________________
%% STEP 5
%determine average rate of change in concentration for first 10 mins
[end_time_row,end_time_col] = find(Data_sucrose==10);
[start_time_row,start_time_col] = find(Data_sucrose==1);

%calculate rate of change for each test and model
Test1_ROC = (Data_sucrose(end_time_row,2) - Data_sucrose(start_time_row,2))/9; % M/min
Test2_ROC = (Data_sucrose(end_time_row,3) - Data_sucrose(start_time_row,3))/9; % M/min
Test3_ROC = (Data_sucrose(end_time_row,4) - Data_sucrose(start_time_row,4))/9; % M/min
Model_ROC = (model_concentration_vec(end_time_row) - model_concentration_vec(start_time_row))/9; % M/min

%print the rates of change
fprintf('\nAverage rate of change in sucrose concentration per minute for the first 10 minutes:\n')
fprintf('  Test 1 = %2.4f M/min\n  Test 2   = %2.4f M/min\n  Test 3   = %2.4f M/min\n  Model   = %2.4f M/min\n\n',round(Test1_ROC,2),round(Test2_ROC,2),round(Test3_ROC,2),round(Model_ROC,2))


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.

