clc;
clear;

rho=1.23; mu=1.79e-5; D=0.005; v=40; e=0.0015/1000;
Re=rho*v*D/mu;

g=@(f)(1/sqrt(f)+2*log10(e/(3.7*D)+2.51/(Re*sqrt(f))));
fplot(g, [0.008 0.8]), grid, xlabel('f'),ylabel('g(f)')

dg=@(f) -2/log(10)*1.255/Re*f^(3/2)/(e/D/3.7 ...
        +2.51/Re/sqrt(f))-0.5/f^(3/2);
%% -------------------------------------------    
[f ea iter]=newtonraph(g,dg,0.008)
%% -------------------------------------------
[f ea iter]=newtonraph(g,dg,0.08,0.01,200)

%% --------------------------------
%better initial guess
[f ea iter]=newtonraph(g,dg,0.03,0.01,200)

%% bisection
[root, ea, iter] = bisect(g, 0, 0.08)

%% false position
[root,ea,iter]=MYfalse(g,0,0.1)

%% modified secant method
[root,ea,iter]=msecant(g,0.008)

%% fzero function

fzero(g,0.008)
fzero(g,0.08)

%% --------------

%take home message:
%%% Even MATLAB is not foolproof
%%%%no single method that works best for all problems.
%%% it is important to understand the strength and weakness of different
%%% method


