%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description
% analyzes the distribution of elevators in NYC through the use of plots
%
% Assignment Information
%   Assignment:     A05, Problem 2
%   Author:         Ayaan Furtado-Tiwari, afurtado@purdue.edu
%   Team ID:        ###-##
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Name, login@purdue [repeat for each]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% INITIALIZATION
Data_NYC_elevators = readmatrix("Data_NYC_elevators.csv"); %importing the data file
DV_device = Data_NYC_elevators(:,1); %NYC Department of Buildings device identification number
device_type = Data_NYC_elevators(:,2); %type of elevator
borough = Data_NYC_elevators(:,3); %Section of NYC
zip_code = Data_NYC_elevators(:,4); %US postal zip code of elevator
latitude = Data_NYC_elevators(:,5); %latitude of elevator (degrees)
longitude = Data_NYC_elevators(:,6); %longitude of elevator (degrees)


%% ____________________
%% FIGURE 1
%plot latitude vs longitude of NYC elevators
figure()
plot(latitude,longitude,'mo')
title("Latitude vs Longitude of NYC elevators")
xlabel('Latitude (degrees)')
ylabel('Longitude (degrees)')
axis equal
grid on


%% ____________________
%% FIGURE 2 with CALCULATIONS 
%remove outlier point in latitude vs longitude plot

%remove outlier from latitude
latitude_min = min(latitude); %find smallest latitude value
latitude_NoOutlier_index = find(latitude>latitude_min); %find all indexes other than index of smallest value
latitude_NoOutlier = latitude(latitude_NoOutlier_index);%create new array with all points but the minimum

%remove outlier from longitude
longitude_min = min(longitude); %find smallest longitude value
longitude_NoOutlier_index = find(longitude>longitude_min); %find all indexes other than index of smallest value
longitude_NoOutlier = longitude(longitude_NoOutlier_index);%create new array with all points but the minimum


%plot latitude vs longitude without outliers 
figure()
plot(latitude_NoOutlier,longitude_NoOutlier,'mo','MarkerSize',1)
title("Latitude vs Longitude of NYC elevators (without Outlier)")
xlabel('Latitude (degrees)')
ylabel('Longitude (degrees)')
axis equal
grid on
%% ____________________
%% FIGURE 3 with CALCULATIONS
%create an two arrays for latitdue and longitude for elevators in Manhattan
manhattan_indexes = find((10001 <= zip_code & zip_code <= 10075) | zip_code == 10128 | zip_code == 10280); 
mahnattan_latitude = latitude(manhattan_indexes); 
manhattan_longitude = longitude(manhattan_indexes);

%plot latitude vs longitude for elevators in manhattan 
figure()
plot(mahnattan_latitude,manhattan_longitude,'mo','MarkerSize',1)
title("Latitude vs Longitude of Manhattan Elevators")
xlabel('Latitude (degrees)')
ylabel('Longitude (degrees)')
axis equal
grid on

%% ____________________
%% FORMATTED TEXT DISPLAYS
%output the number of elevators in Manhattan with professional communication
fprintf('\nNumber of elevators in Manhattan: %g \n',length(manhattan_indexes))



%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.