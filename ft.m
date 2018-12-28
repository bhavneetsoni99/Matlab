function co = ft( t , c )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
c1 = c(1);
c2 = c(2);
c3 = c(3);
dc1 = -.013*c1-1000*c1*c3;
dc2 = -2500 *c2*c3;
dc3 = -.013*c1-1000*c1*c3-2500*c2*c3;
co = [dc1; dc2; dc3;];
end

