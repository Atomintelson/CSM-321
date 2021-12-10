function udash = rhs(t, u, beta, gamma)
N = 763;
S=u(1); I=u(2);
lambda = beta*I; %force of infection
Sdash = -lambda*S/N;
Idash = lambda*S/N - gamma*I;
udash = [Sdash; Idash];
end