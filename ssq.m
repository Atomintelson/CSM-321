function ss = ssq(tdata, ydata, p, y0)
% function to compute sum of squares
% of differences between function and data
% Input:
% beta,gamma = param values
% tdata = vector of t values
% ydata = vector of data values
% solve the ode
tvalues = [0; tdata];
[ts, y1] = ode45(@derhs, tvalues, y0, [], p);
ymodel = y1(2:end,2);
ss = sum( (ymodel-ydata).^2 );
