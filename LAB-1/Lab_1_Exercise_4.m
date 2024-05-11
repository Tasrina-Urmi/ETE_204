clc;
clear;
close all;

disp('(a)')


%{
(a) Set up a 6 by 8 matrix A in which all elements on the top, bottom, left and 
right edges are zero and all other elements are equal to 5. You should need 
only two commands.')
%}



A = 5 * ones(6, 8)  % Create a 6 by 8 matrix filled with 5s
A([1 end], :) = 0  % Set the top and bottom rows to zeros..Or A([1 6],:)
A(:, [1 end]) = 0  % Set the left and right columns to zeros..Or A(:, [1 8])

%{
5 * ones(6, 8): This creates a 6 by 8 matrix filled with 5s using the ones function to create a matrix of ones and then multiplying it by 5.

A([1 end], :) = 0: This sets the first and last rows of matrix A to zeros. [1 end] selects the first and last row, and : selects all columns.

A(:, [1 end]) = 0: This sets the first and last columns of matrix A to zeros. : selects all rows, and [1 end] selects the first and last column.

%}

disp('(b)');

%{
(b) Set up a row vector B containing the digits of your SID as elements. Now 
reverse the order of the digits in B, first using fliplr and then without using the 
MATLAB function fliplr. 
%}

 SID = '2108014';

 % Convert the SID string to an array of digits
 B = arrayfun(@str2num, num2str(SID));

 % Reverse the order of elements using fliplr
 B_reversed_fliplr = fliplr(B);

 % Now, let's reverse the order without using fliplr
 B_reversed_manual = B(end:-1:1);

 % Display the results
 disp('Original SID vector: ');
 disp(B);
 disp('Reversed using fliplr: ');
 disp(B_reversed_fliplr);
 disp('Reversed manually:');
 disp(B_reversed_manual);


 disp('(c)');

 %{
(c) Use the function magic to generate a 10 by 10 magic matrix C. A magic matrix 
is one where all rows, columns and diagonals add to the same number. Use the 
function sum to verify that all columns of C add to 505. Repeat for the rows. 
Repeat for the main diagonal with the help of the function diag.
 %}

fprintf('\n');
% Generate a 10-by-10 magic matrix

C = magic(10);
disp('Magic matrix C:');
disp(C);

col_sums=sum(C);
row_sums= sum(C,2); 

%{
The line row_sums = sum(C, 2); calculates the sum of each row in the matrix C.
The 2 as the second argument specifies that the summation should be done along the rows (dimension 2).
Specifically, 2 refers to the rows dimension.
%}

diagonal_sum= sum(diag(C));

disp(['Sum of all coloum of a magic matrix : ', mat2str(col_sums)]);
disp(['Sum of all row of a magic matrix : ', mat2str(row_sums)]);
disp(['Sum of diagonal element of a magic matrix : ', mat2str(diagonal_sum)])

 

disp('(d)');

%{
(d) Generate a table on screen with 10 rows and 3 columns. The first column 
contains the integers 1 to 10, the second contains the square root of the number 
in the first column and the third contains the square.
%}

% Generate integers from 1 to 10
integers = (1:10)';
%{
The apostrophe (') transposes the array, converting it from a row vector to a column vector.
The resulting integers variable contains the column vector [1; 2; 3; ...; 10].
%}

% Calculate square roots
sqrt_column = sqrt(integers);

% Calculate squares
squared_column = integers.^2;

% Combine the columns into a table
table_data = [integers, sqrt_column, squared_column];

% Display the table
disp('Integer | Square Root | Square');
disp(table_data);
