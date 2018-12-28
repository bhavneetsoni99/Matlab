function v= parachutistVel( )
%   v=parachutistVel(t,m) computes the velocity of a parachutist
% input
%   t = time (s)
%   m = mass (kg)
% output
%   v = downward velocity (m/s)

t=20;
m=60;

g = 9.81;   % gravity (m/s2)
cd = 12.5;  % %drag coefficient kg/s

v = g * m / cd * (1- exp((-cd / m) *t));


end

