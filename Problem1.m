% Solutions to the Problems in Computational Problem Solving in Civil Engineering Home Work 1
% Problem 1
%          Information provided is as follows
A = [10 -3; 4 2];
B = [1 0; -1 2];
v = [1; 2];
w = [1; 1];
% a) v'w
vT = v'; % vT is the transpose of marice v
vTw=vT*w % Solution to Problem 1 Part a)


%b) vw'
wT = w'; % wT is the transpose of matrice w
vwT = v * wT % Solution to Problem 1 Part b)



% c) Av
Av = A*v % Av is the product of A and v Solution to problem 1 Part c



% d) A'v
AT = A'; % AT is the transpose of A
ATv = AT * v % ATv is the the product of A' and v Solution to part d



% e) A*B
AB = A * B % AB is the product of A and B matrice, Solution to part e



% f) B*A
BA = B * A % AB is the product of A and B matrice, Solution to part f




% g) A^2
AA = A * A % AA is the A^2, Solution to part g



% h) By = w

y = B\w % y is the vector such that B*y = w, Solution to part h

