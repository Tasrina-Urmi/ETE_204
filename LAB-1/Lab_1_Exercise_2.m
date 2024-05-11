clc;
clear;
close all;

%Exercise 2 
%In a circuit problem involving phasors, a voltage V is given by  %V = E + ZI 
%If  E = 100 + j10 V, I = 5 + j5 A and Z = 2 <40 (degree) ohm  , determine the magnitude and 
%phase (in degrees) of V. Remember to convert between degrees and radians!

 E = 100 + 10j
 I = 5 + 5j;
 Z_magnitude = 2;
 Z_phase = deg2rad(40);

 Z = 2 * exp(1i * deg2rad(40));   % Convert angle from degrees to radians

% Calculate V
V = Z * I + E;

% Magnitude of V
magnitude_V = abs(V);
% Phase of V in degrees
phase_V_degrees = rad2deg(angle(V));

% Display results
disp(['Magnitude of V: ',num2str(magnitude_V)]);
disp(['Phase of V: ',num2str(phase_V_degrees)]);




