clc;
clear;
close all;

%{
In MATLAB you can use a logical vector b to index a numeric vector V of the same 
length. V(b) will consist of only those elements of V corresponding to a 1 in b. For 
example if V = [1 2 3 4 5 6] and the logical vector b = [0 1 0 0 1 1], then V(b) = [2 
5 6]. 
Use the command x = rand(1, 10) generate a row vector containing 10 random 
numbers in the range 0 to 1.0. Now use commands (they could be combined into one 
command) which will remove all elements less than 0.5. Repeat for the case when 
only elements in the range 0.4 to 0.6 inclusive are to be retained.
%}

 
% Generate a row vector containing 10 random numbers in the range 0 to 1.0
x = rand(1, 10);

% Remove all elements less than 0.5
x_filtered_1 = x(x >= 0.5); %The logical vector acts as a mask, and x(x >= 0.5) selects only the elements of x where the mask is true.

% Display the result
disp('Elements greater than or equal to 0.5:')
disp(x_filtered_1)

% Repeat for the case when only elements in the range 0.4 to 0.6 inclusive are to be retained
x_filtered_2 = x(x >= 0.4 & x <= 0.6);

% Display the result
disp('Elements in the range 0.4 to 0.6:')
disp(x_filtered_2)
