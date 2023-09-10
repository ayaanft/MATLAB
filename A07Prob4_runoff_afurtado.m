 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132  
% Program Description 
% calculates how much acreage to convert from paved acreage to greenspace
% acreage to control runoff
%
% Assignment Information
%   Assignment:     A07, Problem 4
%   Author:         Ayaan Furtado-TIwari, afurtadon@purdue.edu
%   Team ID:        001-02
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Name, login@purdue [repeat for each]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% INITIALIZATION
rainfall_intensity_data = readmatrix("PF_Intensity_English_PDS.csv");
ARI_data = rainfall_intensity_data(12,2:end); %by duration for ARI (years)
five_minute_intensity = rainfall_intensity_data(13,2:end); %ranigall intensity at 5-min duration (in/hr)

%% ____________________
%% CALCULATIONS
k = 1; %counter for while loop

while k > 0
    prompt = "Please choose an ARI:";
    user_ARI = input(prompt);

    if (ismember(user_ARI,ARI_data))
        user_rainfall_intensity = five_minute_intensity(find(user_ARI == ARI_data));%in/hr
        paved_acreage_initial = 50;%acres
        greenspace_acreage = 0;%acres
        runoff_flow_rate_pavedOnly = 0.9*user_rainfall_intensity*50; %ft^3/sec
        runoff_flow_rate_updated = runoff_flow_rate_pavedOnly;%ft^3/sec
        paved_acreage_final = paved_acreage_initial; %acres

        while runoff_flow_rate_updated > 200 & paved_acreage_final > 0
            paved_acreage_final = paved_acreage_final - 0.25; %acres
            greenspace_acreage = greenspace_acreage + 0.25; %acres
            runoff_flow_rate_updated = (0.9*user_rainfall_intensity*paved_acreage_final) + (0.45*user_rainfall_intensity*greenspace_acreage);
        end

%% ____________________
%% FORMATTED TEXT DISPLAYS

        if runoff_flow_rate_updated > 200
            fprintf("Total area availabe is too small to attain runoff flow target.\n")
        else
            fprintf("Number of Acres of Greenspace: %g\n",greenspace_acreage)
            fprintf("Estimated Runoff Flow Rate: %g \n",runoff_flow_rate_updated)
        end

        k = -1;
    else
        fprintf("That ARI value is invalid.\n")

    end
end


%% ____________________
%% RESULTS 

% -- Test Case 1
% Please choose an ARI:1
% Number of Acres of Greenspace: 6.75
% Estimated Runoff Flow Rate: 199.741 

% -- Test Case 2
% Please choose an ARI:10
% Number of Acres of Greenspace: 41.25
% Estimated Runoff Flow Rate: 199.603 

% -- Test Case 3
% Please choose an ARI:100
% Total area availabe is too small to attain runoff flow target.



%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.