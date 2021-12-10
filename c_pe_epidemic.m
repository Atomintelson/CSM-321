%% Clear
clear all 

%% Data import
data = xlsread('school_flu_data.xlsx');
yd = data(:,2);
tv = data(:,1);

%% Parammeter estimation
pFinal = c_z_parest;
beta = pFinal(1,1); 
gamma = pFinal(2,1);

%% ODE solving
tend = 15; %set the end time to run the simulation
u0 = [762; 1]; %set initial conditions as a column vector
[tsol, usol] = ode45(@(t,u) rhs(t, u, beta, gamma), [0, tend], u0);


%% Plotting
Ssol = usol(:, 1); Isol = usol(:, 2);
plot(tsol, Ssol, 'r'); 
hold on; 
plot(tsol, Isol, 'b');
plot(tv, yd, 'o')
xlabel('Time (Days)')
ylabel('Population size')
legend('Susceptible', 'Infected', 'School flu data')



