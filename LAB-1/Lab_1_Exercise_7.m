clc;
clear;
close all;

%{
 Exercise 7: Use subplot plot x, y and z of Exercise 6 on separate axes in the same Figure window, 
one above the other. 
%}

% Define the range of t values
t = 0:0.05:5.0;

% Compute the functions
x = exp(-0.8 .* t);
y = cos(8 .* t);
z = 10 .* x .* y;

 

% Subplot 1: x
subplot(3, 1, 1); % 3 rows, 1 column, plot in the first subplot
plot(t, x);
plot(t, x, 'r', 'LineWidth', 2);
title('X vs time graph');
xlabel('Time');
ylabel('Value of x');
grid on;

% Subplot 2: y
subplot(3, 1, 2); % 3 rows, 1 column, plot in the second subplot
plot(t, y, 'g', 'LineWidth', 2);
title('Y vs time graph');
xlabel('Time');
ylabel('Value of y');
grid on;

% Subplot 3: z
subplot(3, 1, 3); % 3 rows, 1 column, plot in the third subplot
plot(t, z, 'b', 'LineWidth', 2);
title('Z vs time graph');
xlabel('Time');
ylabel('Value of z');
grid on;
