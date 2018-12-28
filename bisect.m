function [root, ea, iter] = bisect(func, xl, xu, es, maxit, varargin)
% bisect: root location zeroes
%   [root, ea, iter] = bisect(func, xl, xu, es, maxit, p1, p2, ...);
%   uses bisection method to find the root of func
% input:
%   func = name of function
%   xl, xu = lower and upper guesses
%   es = desired relative error (default = 0.0001%)
%   maxit = maximum allowable iterations (default = 50)
%   p1, p2, ... = additional parameters used by func
% output;
%   root = real root
%   ea = approximate relative error (%)
%   iter = number of iterations

if nargin <3, error ('at least 3 input arguments required'), end
test = func(xl) * func(xu);
if test >0, error ('no sign change'), end
if (nargin<4 || isempty(es)), es = 0.0001; end
if (nargin<5 || isempty(maxit)), maxit=500; end
iter =0; xr=xl;

while(1)
    xrold = xr;
    xr = (xl + xu) /2;
    iter = iter+1;
    if xr ~=0, ea = abs( (xr-xrold)/xr)*100; end
    test = func(xl) * func(xr);
    if test < 0
        
        xu = xr;
    elseif test >0
        xl = xr;
    else 
        ea=0;
        if (func(xl)==0)
            xr = xl;
        elseif (func(xu)==0)
            xr =xu;
        end
    end
    if ea <=es || iter >=maxit, break, end
end 
root = xr;