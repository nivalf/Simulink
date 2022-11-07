% Script to set the values
% and run the model 'positioning_system_model'

clear;

%Predefined values
R = 10 * 10^3;
P = 100 * 10^3;
C = 0.33 * 10^-6;
ks = 52.5;          % rad/sV
km = 5 * 10^-3;     % m/rad
E = 10;             % V
d = 1;              % m

deadband_width = 0.02;

% sat_upper_limit = 100;

sim('positioning_system_model');

plot(ScopeData(:,1),ScopeData(:,2))
xlabel('time')
ylabel('y')
title('Scope data log')

hold on;

deadband_width = 0.0;

% sat_upper_limit = 100;

sim('positioning_system_model');

plot(ScopeData(:,1),ScopeData(:,2))

legend('with backlash','without backlash','Location','northeast');


