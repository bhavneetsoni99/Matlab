%Problem 2
%Derive Plot of function Sin kx
% k =1. . . . 5
% x =0-2pi
k = [1;2;3;4;5]; % declaring values of k 1 thru 5
x = [0:.1:2*pi]; % declaring values of x 0 to 2pi at .1 intervals
sine = sin(k*x); % calculating values of sin (kx)
plot (x, sine) % plot of sin kx versues values of 

