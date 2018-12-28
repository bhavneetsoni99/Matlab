function [ Integral_args ] = trapezoidalintegration( fu, l , u, NSec,varargin )
%UNTITLED Summary of this function goes here
% Funciton calculates integration of a fuction using trapezoidal rule
% fu is the input function cooresponding to x
% l and u are the boundary conditions
% l is the lower boundary condtion
% u is the upper boundary condition  
% NSec is the number of sections to be used
if nargin <3, error ('at least 3 input arguments required'), end

if (nargin<4 || isempty(NSec)), NSec = 1; end
 
step = (u - l)/NSec

lb = l;



for  i = 1:1:NSec
   
ub = (lb + step);
I (i) = step *((fu(ub)+fu(lb))/2);

lb = ub;
end
Integral = sum (I)
end


