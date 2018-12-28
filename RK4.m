function [ output_args ] = RK4(intcond, bound, stepsize)
% intcond is a Matrix [x y] inital conditions
% bound is the boundary condition for x
% 

dydx = @(x,y) (1+2*x)*y^.5;

h = stepsize;
n = (bound - intcond(1))/h;

i =1;
x (i) = intcond(1);
y (i)= intcond (2);


for i = 1:n

k1 = dydx (x(i),y(i));
k2 = dydx (x (i)+.5*h , y(i)+.5*h*k1);
k3 = dydx (x (i)+.5*h , y(i)+.5*h*k2);
k4 =dydx (x (i)+h , y(i)+h*k3);

x (i+1) = x (i)+h;
y (i+1)= y (i) + (k1 + 2*k2 + 2*k3 + k4)*h/6;
end
x
y


end

