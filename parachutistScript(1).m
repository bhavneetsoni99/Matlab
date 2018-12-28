% a sample script file to calculate the velocity of a falling parachutist
clc;
clear;

g = 9.8;  %gravity: m/s2
m = 68.1;  % mass: kg
t = 12;    %time: s
cd = 12.5;  %drag coefficient kg/s

v = g * m / cd * (1- exp((-cd / m) *t))


