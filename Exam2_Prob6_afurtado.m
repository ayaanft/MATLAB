function Exam2_Prob6_afurtado(min_temp, min_TD, camera_names, temp_specs, TD_specs)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%identify a list of possible cameras from a catalog based on two criteria: TD threshold and operational temperature limit
%
% Function Call
% Exam2_Prob6_afurtado(min_temp, min_TD, camera_names, temp_specs, TD_specs)
%
% Input Arguments
% min_temp: the lowest acceptable operational temperature limit (deg C)
% min_TD: the lowest acceptable TD threshold (Gray)
% camera_names: Nx1 string vector where each element is the name of a camera model
% temp_specs: Nx1 vector where each element is the camera’s temperature limit (deg C)
% TD_specs: Nx1 vector where each element is the camera’s TD threshold (Gray)
%
% Output Arguments
% N/A
%
% Assignment Information
%   Author:         Ayaan Furtado-Tiwari, afurtado@purdue.edu
%   Academic Integrity:
%     [x] I worked alone on this problem and only used resourses
%        that meet academic integrity expectations.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
%check that inputs are within their respective catalog ranges
if max(temp_specs)< min_temp || min_temp < min(temp_specs)
    fprintf("Minimum temperature is outside catalog range.")
elseif max(TD_specs)< min_TD || min_TD < min(TD_specs)
    fprintf("Minimum TD is outside catalog range.")
end
camera_list_index = 1;

%% ____________________
%% CALCULATIONS
for index = 1:1:numel(camera_names)
    if TD_specs(index) >= min_TD
        if temp_specs(index) >= min_temp
            camera_list(camera_list_index) = camera_names(index);
            camera_list_index = camera_list_index + 1;
        end
    end
end

%% ____________________
%% FORMATTED TEXT/FIGURE DISPLAYS
if camera_list.length == 0
    fprintf("No cameras meet the input criteria.")
else
    disp(camera_list)
end





%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The function I am submitting
% is my own original work.



