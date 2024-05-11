clc;
clear;
close all;

%{
Logical operations on arrays produce logical arrays. As an example, suppose we have 
two numerical vectors x and y. The command 
>> b = x > y 
creates a logical vector b, of the same length, which contains a 1 in those positions 
where the element of x is greater than the element of y. 
Suppose we have a vector y of the same length as x. How could you determine the 
number of elements of y which are equal to the corresponding elements of x? If x = 
[0 5 -3 7 1 8 10] and y = [1 5 3 0 0 8 -2], for example, the answer should be 2. 
%}


% Given vectors x and y
x = [0 5 -3 7 1 8 10];
y = [1 5 3 0 0 8 -2];

% Element-wise comparison
matching_elements = (x == y);

% Count the number of matching elements
num_matching_elements = sum(matching_elements);

disp(['Number of matching elements in y and x: ', num2str(num_matching_elements)]);
