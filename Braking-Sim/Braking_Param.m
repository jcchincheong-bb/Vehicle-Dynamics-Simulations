m = 1500;           % Car mass [kg]
v0 = 100/3.6;       % Initial Velocity [m/s]
rw = 0.3;           % Wheel radius [m]
Jw = 0.8;           % Wheel mass MoI [kgm^2]
A = 2;              % Vehicle frontal area [m^2]
cw = 0.3;           % Drag coefficient [-]
p = 1.2;            % Air density [kg/m^3]
g = 9.81;           % gravitational constant [N/kg]
c1 = 0.86;          % Pacejka model coefficient 1
c2 = 33.82;         % Pacejka model coefficient 2
c3 = 0.36;          % Pacejka model coefficient 3
Mb = 5350;          % Braking Torque [Nm]
Kc = 20000;         % ABS Controller Gain [-]
 