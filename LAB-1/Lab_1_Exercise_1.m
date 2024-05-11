clc;
clear;
close all;

%Exercise 1 
% a.What are the values of 8/2 and 8\2? 
% b.Find the magnitude and phase in radians of 3+j6. 
% c.What are the real and imaginary parts of 5<1.2 , where the angle is in radians?

disp('a)');
res1 = 8/2;
res2 = 8\2;

disp('Values of 8/2 and 8\2');
disp(['8/2 = ',num2str(res1)]);
disp(['8\2 = ',num2str(res2)]);


disp('b)');
z = 3 + 6j;
magnitude = abs(z);
phase_rad = angle(z);

disp('Complex Number 3 +6j');
disp(['Magnitude = ',num2str(magnitude)]);
disp(['Phase = ',num2str( phase_rad)]);


disp('c)');
magnitude1 = 5;
phase_rad1 = 1.2;

real_value = magnitude1 * cos(phase_rad1);
imag_value = magnitude1 * sin(phase_rad1);

disp('Real and Imaginary part of 5<1.2:');

disp(['Real Part: ',num2str(real_value)]);
disp(['Imaginary Part: ',num2str(imag_value)]);







