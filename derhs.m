function ydot = derhs(t, y, p)
% RHS of the ODE
N = 763;
beta = p(1);
gamma = p(2);
ydot = zeros(2,1);
S = y(1);
I = y(2);
ydot(1) = -beta*S*I/N;
ydot(2) = beta*S*I/N - gamma*I;