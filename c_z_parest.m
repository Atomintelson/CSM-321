function params = c_z_parest
% read the data points from an excel file
data = xlsread('school_flu_data.xlsx');
yd = data(:,2);
tv = data(:,1);

%set initial conditions
N = 763;
i0 = 1;
s0 = N-i0;
y0 = [s0; i0];
beta0 = 1.0;
gamma0 = 1/2;
pGuess = [beta0; gamma0];

myf = @(p) (ssq(tv, yd, p, y0));
pmin = fminsearch(myf, pGuess);
params = pmin;


