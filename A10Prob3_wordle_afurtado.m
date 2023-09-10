function A10Prob3_wordle_afurtado
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% takes user input to run a version of wordle with 6 maximum guesses
%
% Function Call
%A10Prob3_wordle_afurtado()
%
% Input Arguments
% N/A
%
% Output Arguments
% N/A
%
% Assignment Information
%   Assignment:     A10, Problem 3
%   Author:         Ayaan Furtado-Tiwari, afurtado@purdue.edu
%   Team ID:        001-02
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Mihika Sane, sane@purdue
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
%get word from word generator function
solution_word = wordle_dictionary(4004);

%get guess from user
guess_counter = 1;
fprintf("Guess %i: ", guess_counter)
guess_word = input("",'s');

guess_result = '00000';

%% ____________________
%% CALCULATIONS
while guess_counter < 7
    if length(guess_word) ~= 5
        fprintf("Your guess was invalid.\n")
        guess_word = input("Please guess a 5-letter word: ",'s');
    elseif ~strcmp(solution_word, guess_word)
        for x = 1:1:5
            if guess_word(x) == solution_word(x)
                guess_result(x) = guess_word(x);
            elseif ismember(guess_word(x), solution_word)
                guess_result(x) = '*';      
            else
                guess_result(x) = '-';
            end 
        end
        fprintf("Result %i: ",guess_counter)
        disp(guess_result)
        guess_counter = guess_counter + 1;
        if guess_counter == 7
            fprintf("You are out of guesses!\n")
            fprintf("Solution Word: ")
            disp(solution_word)
            guess_counter = guess_counter + 1;
        else
            fprintf("Guess %i: ", guess_counter)
            guess_word = input("",'s');
        end
    else
        fprintf("Correct! You got the word!\n")
        fprintf("Solution Word: ")
        disp(solution_word)
        guess_counter = 8;
    end
end



%% ____________________
%% FORMATTED TEXT/FIGURE DISPLAYS




%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The function I am submitting
% is my own original work.



