
function [root, ea, iter] = fixed(func, xl, es, maxit, varargin)
% bisect: root location zeroes
%   [root, ea, iter] = fixed(func, xl, es, maxit, p1, p2, ...);
%   uses Fixed Point Iteration method to find the root of func input:
%   func = name of function
%   xl = first guess
%   es = desired relative error (default = 1%)
%   maxit = maximum allowable iterations (default = 500)
%   root = real root
%   ea = approximate relative error (%)
%   iter = number of iterations
if nargin <2, error ('at least 2 input arguments required'), end

if (nargin<3 || isempty(es)), es = 1; end
if (nargin<4 || isempty(maxit)), maxit=50; end
iter =0; xr=xl;

while(1)
    xrold = xr;
    xr = func (xrold) + xrold;
    iter = iter+1;
    ea = abs( (xr-xrold)/xr)*100;
        if ea <=es || iter >=maxit, break, end
end 
ea = ea
iter = iter
root = xr