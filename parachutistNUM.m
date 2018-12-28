function velNUM = parachutistNUM (dt, ti, tf, vi)
% parachutistNUM : Euler solution for parachutist velocity problem
% input:

%   dt = time step (s)
%   ti = initial time (s)
%   tf = end time (s)
%   vi = initial value of dependent variable (velocity) (m/s)
%output:
%   velNUM = velocity from ti to tf (m/s)
global g cd m

    g = 9.8;  %gravity: m/s2
    m = 60.0; 
    cd = 12.5;  %drag coefficient kg/s

t(1) = ti;
v(1) = vi;
n = (tf-ti) / dt ;
for i = 1:n
    dvdt = deriv(v(i));
    v(i+1) = v(i) + dvdt * dt;
    t(i+1) = t(i) + dt;
end
velNUM = v;
plot(t,velNUM)
end


function dv = deriv(vv)
global g m cd
    dv = g - cd * vv / m;
end