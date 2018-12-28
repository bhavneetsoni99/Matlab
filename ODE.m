% oDE examples

dydt=@(t,y) 4*exp(0.8*t)-0.5*y;
[t,y]=ode45(dydt, [0 4],2);
plot(t,y)

hold on;

[t,y]=ode23(dydt, [0 4],2);
plot(t,y,'r')
hold on;

[t,y]=ode113(dydt, [0 4],2);
plot(t,y,'g')
hold off;

%% here is for ODE system -- page 518

[t,y]=ode45(@pre, [0 20], [2,1]);
plot(t,y)
hold off;

%% here is for stiff nonstiff --page 529

% first mu=1;
[t,y]=ode45(@vanderpol, [0 20], [1 1], [], 1);
plot(t, y(:,1),'-',t, y(:,2), '+')
legend('y1', 'y2');

hold off;
% now mu=1000
[t,y]=ode45(@vanderpol, [0 20], [1 1], [], 1000);
plot(t, y(:,1),'-',t, y(:,2), '--')
legend('y1', 'y2');

hold off;
% now mu=1000
[t,y]=ode23s(@vanderpol, [0 6000], [1 1], [], 1000);
subplot(2,1,1)
plot(t, y(:,1),'-')
subplot(2,1,2)
plot(t, y(:,2),'g')
