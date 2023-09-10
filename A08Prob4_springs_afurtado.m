function [wire_length,spring_mass] = A08Prob4_springs_afurtado(diameters,num_coils)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%the function takes in a vector containing the inner and outer diameter of
%a spring and a scalar value of the number of coils in the spring. It then
%checks if the inputs meet certain requirements and output a message and
%appropriate values for wire length and spring mass or calculates the wire
%length and spring mass according to their given formulas using the inputs.
%
% Function Call
%A08Prob4_springs_afurtado(diameters,num_coils)
%
% Input Arguments
%diameters: a two element vector with values between 2.5 and 30 cm
%num_coils: a scalar value greater than 4
%
% Output Arguments
%wire_length: the length of the wire (cm)
%spring_mass: the mass of the spring (g)
%
% Assignment Information
%   Assignment:     A08, Problem 4
%   Author:         Ayaan, afurtado@purdue.edu
%   Team ID:        001-02
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Name, login@purdue [repeat for each]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
inner_diameter = diameters(1);%cm
outer_diameter = diameters(2);%cm
spring_metal_density = 7.861; %g/cm^3


%% ____________________
%% CALCULATIONS
if((length(diameters) ~= 2) || ~isscalar(num_coils))
    fprintf("\n The inputs are not in a valid form.\n Please input a 2-element vector for diameters and a scalar for the number of coils.\n")
    wire_length = -110;%cm
    spring_mass = -110;%g
elseif (inner_diameter > 0.95*outer_diameter)
    fprintf("The inner diameter cannot be greater than 95 percent of the outer diameter.\n")
    wire_length = -27;%cm
    spring_mass = -27;%g
elseif (~((inner_diameter >= 2.5) && (inner_diameter <= 30))|| ~((outer_diameter >= 2.5) && (outer_diameter <= 30)))
    fprintf("Both elements within the diameter vectors must be lengths between 2.5 cm and 30 cm, inclusive.\n")
    wire_length = -99;%cm
    spring_mass = -99;%g
elseif (num_coils < 4)
    fprintf("The spring must have at least 4 coils.\n")
    wire_length = -78;%cm
    spring_mass = -78;%g
else
    wire_length = (pi*num_coils*(outer_diameter + inner_diameter))/2;%cm
    spring_mass = spring_metal_density*wire_length*((outer_diameter-inner_diameter)^2);%g
end


%% ____________________
%% FORMATTED TEXT DISPLAY
fprintf("Wire Length: %2.f cm\n",wire_length)
fprintf("Spring Mass: %2.f g\n",spring_mass)

%% ____________________
%% RESULTS
%Test Case 1:
%[out1,out2] = A08Prob4_springs_afurtado([10 12],10);
%Wire Length: 346 cm
%Spring Mass: 10866 g
%
%Test Case 2:
%[out1,out2] = A08Prob4_springs_afurtado([2.5 3],6);
%Wire Length: 52 cm
%Spring Mass: 102 g
%
%Test Case 3:
%[out1,out2] = A08Prob4_springs_afurtado([15.75,20],3);
%The spring must have at least 4 coils.
%Wire Length: -78 cm
%Spring Mass: -78 g
%
%Test Case 4:
%[out1,out2] = A08Prob4_springs_afurtado([5 5.6 6.2],12);
% The inputs are not in a valid form.
% Please input a 2-element vector for diameters and a scalar for the number of coils.
%Wire Length: -110 cm
%Spring Mass: -110 g
%
%Test Case 5:
%[out1,out2] = A08Prob4_springs_afurtado([14.5 15],10);
%The inner diameter cannot be greater than 95 percent of the outer diameter.
%Wire Length: -27 cm
%Spring Mass: -27 g
%
%Test Case 6:
%[out1,out2] = A08Prob4_springs_afurtado([6.5 5],8);
%The inner diameter cannot be greater than 95 percent of the outer diameter.
%Wire Length: -27 cm
%Spring Mass: -27 g
%
%Test Case 7:
%[out1,out2] = A08Prob4_springs_afurtado([0.5 2],15);
%Both elements within the diameter vectors must be lengths between 2.5 cm and 30 cm, inclusive.
%Wire Length: -99 cm
%Spring Mass: -99 g

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The function I am submitting
% is my own original work.



