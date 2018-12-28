function [ output_args ] = sr(a,b)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

y = [.75 1.25 1.45 1.25 .85 .55 .35 .28 .18];
x = [.1 .2 .4 .6 .9 1.3 1.5 1.7 1.8];

for i = 1:9
yo(i) =(y(i)-a*x(i)*exp(b*x(i)))^2;
end
sr = sum (yo)
end

