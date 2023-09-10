%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%Analyzes data from a USDA internet survey in 2021
% Assignment Information
%   Assignment:     A05, Problem 3
%   Author:         Ayaan FUrtado-Tiwari, afurtado@purdue.edu
%   Team ID:        ###-##
%   Academic Integrity:
%     [x] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Mihika Sane, sane@purdue [repeat for each]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% INITIALIZATION
usada_data = readmatrix("data_usda_internet_survey_2021.csv");
state_name = usada_data(2:end,1); 
state_id = usada_data(2:end,2); 
total_farms_2019 = usada_data(2:end,3);
total_farms_2021 = usada_data(2:end,4);
average_farm_size_2019 = usada_data(2:end,5);%acres
average_farm_size_2021 = usada_data(2:end,6);%acres
farm_internet_access_2019 = usada_data(2:end,7);%percent
farm_internet_access_2021 = usada_data(2:end,8);%percent
farm_internet_purchase_2019 = usada_data(2:end,9);%farms using internet access to purchase agricultural needs (percent)
farm_internet_purchase_2021 = usada_data(2:end,10);%farms using internet access to purchase agricultural needs (percent)
farm_internet_marketing_2019 = usada_data(2:end,11);%farms using internet access to conduct agricultural marketing (percent)
farm_internet_marketing_2021 = usada_data(2:end,12);%farms using internet access to conduct agricultural marketing (percent)
farm_computer_2021 = usada_data(2:end,13);%farms with a computer or latop (percent)
farm_smartphone_2021 = usada_data(2:end,14);%percent
farm_tablet_2021 = usada_data(2:end,15);%farms with a tablet or other wireless comnpute (percent)
farm_precision_agriculture = usada_data(2:end,16);%farms using precision agriculture to manage crops or livestock (percent)


%% ____________________
%% CALCULATIONS
%A) Calculates the number of states that saw a decrease in the number of farms from 2019 to 2021
total_farms_decrease_indexes = find(total_farms_2021<total_farms_2019);

%B) Calculates state ids with more than 8 percentage point increase between 2019 and
%2021 and had at least 85 percent of farms with internet acess in 2021
states_answer_B_indexes = find(((farm_internet_access_2021 - farm_internet_access_2019) > 8) & (farm_internet_access_2021 > 85));
states_answer_B = state_id(states_answer_B_indexes);

%C)Calculates the states that had a 2021 average farm size between 195 and 1000
%acres and over 80 percent of their farms had access to a computer/laptop
%or a smartphone
states_answer_C_indexes = find(((average_farm_size_2021>195)&(average_farm_size_2021 <= 1000))&((farm_computer_2021>80)|(farm_smartphone_2021>80)));

%D)Calculates the states with the 4 highest use of agricultural precision practices, and their
%corresponding percentages
[highest_argiculutural_precision, highest_argiculutural_precision_indexes] = maxk(farm_precision_agriculture,4);
highest_agri_prescion_states = state_id(highest_argiculutural_precision_indexes);

%E) Total number of farms in Indiana, Illinois, Michigan, and Wisconsin in
%2021
indiana_state_index = find(state_id == 14);
illinois_state_index = find(state_id == 13);
michigan_state_index = find(state_id == 22);
wisconsin_state_index = find(state_id == 49);
 
total_farms_midwest = (total_farms_2021(indiana_state_index) + total_farms_2021(illinois_state_index) + total_farms_2021(michigan_state_index) + total_farms_2021(wisconsin_state_index));



%% ____________________
%% FORMATTED TEXT DISPLAYS
%print the answers to the questions in a proffessional and easy to read
%format
fprintf("%g states saw a decrease in the number of farms from 2019 to 2021\n\n",length(total_farms_decrease_indexes))
fprintf("The state IDs for the states that saw an increase in internet access of more than 8 percentage points between 2019 and 2021 and had atleast 85 percent of farms with internet access in 2021 are as follows: ")
fprintf('%g, ', states_answer_B(1:end-1));
fprintf('%g\n\n', states_answer_B(end));
fprintf("%g states had a 2021 average farm size between 195 and 1000 acres (inclusive of 1000 only), and had over 80 percent of their farms with access to a computer/laptop or a smartphone\n\n",length(states_answer_C_indexes))
fprintf("The 4 states with the highest use of agricultural precision practices are as follows: %i(%i),%i(%i),%i(%i),%i(%i)\n\n",highest_agri_prescion_states(1),highest_argiculutural_precision(1),highest_agri_prescion_states(2),highest_argiculutural_precision(2),highest_agri_prescion_states(3),highest_argiculutural_precision(3),highest_agri_prescion_states(4),highest_argiculutural_precision(4))
fprintf("The total number of farms in Indiana, Illinois, Michigan, and Wisconsin is %i\n",total_farms_midwest)
%% ____________________
%% RESULTS
%{25 states saw a decrease in the number of farms from 2019 to 2021 
% 
% The state IDs for the states that saw an increase in internet access of more than 8 percentage points between 2019 and 2021 and had atleast 85 percent of farms with internet access in 2021 are as follows: 13, 16
% 
% 11 states had a 2021 average farm size between 195 and 1000 acres (inclusive of 1000 only), and had over 80 percent of their farms with access to a computer/laptop or a smartphone
% 
% The 4 states with the highest use of agricultural precision practices are as follows: 34(54),41(53),15(52),27(51)
% 
% The total number of farms in Indiana, Illinois, Michigan, and Wisconsin is 236100 

%}


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.