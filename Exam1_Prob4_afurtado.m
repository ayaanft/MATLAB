%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% compares a linear and quadratic model to a data set about deflation after
% applied force graphically and mathematically in order to determine the more effective model. 
%
% Assignment Information
%   Author:         Ayaan Furtado-Tiwari, afurtado@purdue.edu
%   Academic Integrity:
%     [x] I worked alone on this problem and only used resourses
%        that meet academic integrity expectations.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% INITIALIZATION
data_set = readmatrix("Exam1_Prob4_data_34510680.csv"); %imported data set
applied_force = data_set(:,1);%force applied to the object (N)
test_2_deflation = data_set(:,3);%amount deflated after force was applies (mm)

%% ____________________
%% CALCULATIONS
%calculate prediction models
linear_fit_model = 0.914.*applied_force - 15.2;%linear model of predicted deflation after applied force (mm)
quadratic_fit_model = 0.00934.*(applied_force.^2) - 0.142.*applied_force + 2.76;%quadratic model of predicted deflation after applied force (mm)

%calculate mean for Test 2
test_2_mean = mean(test_2_deflation);%mm

%calculate SSE for each model
linear_model_SSE = sum((linear_fit_model - test_2_mean).^2,'all');%SSE of linear model compared to Deflation Test 2 (mm^2)
quadratic_model_SSE = sum((quadratic_fit_model - test_2_mean).^2,'all');%SSE of quadratic model compared to Deflation Test 2 (mm^2)





%% ____________________
%% FORMATTED FIGURE DISPLAYS
figure()
%plot linear model vs data from Test 2 on top plot
subplot(2,1,1);
plot(applied_force,test_2_deflation,'bo','MarkerSize',4);
title("Linear Model vs. Deflation Test 2")
xlabel('Applied Force (N)')
ylabel('Deflation (mm)')
hold on
plot(applied_force,linear_fit_model);
hold off
grid on

%plot quadratic model vs data from Test 2 in the same figure below the first graph
subplot(2,1,2);
plot(applied_force,test_2_deflation,'bo','MarkerSize',4);
title("Quadratic Model vs. Deflation Test 2")
xlabel('Applied Force (N)')
ylabel('Deflation (mm)')
hold on
plot(applied_force,quadratic_fit_model);
hold off
grid on


%% ____________________
%% FORMATTED TEXT DISPLAYS
fprintf("Normalized SSE for the linear model: %.3f mm^2\n",linear_model_SSE)
fprintf("Normalized SSE for the quadratic model: %.3f mm^2\n",quadratic_model_SSE)

if linear_model_SSE > quadratic_model_SSE
    fprintf("The quadratic fit is better.\n")
else
    fprintf("The linear fit is better.\n")
end


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.