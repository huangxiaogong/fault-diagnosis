function [ F ] = EquationSet1( x )
%EQUATIONSET1 Summary of this function goes here
%   Detailed explanation goes here

debug = false;

phi = deg2rad(17);
theta = deg2rad(3);
g = 9.81;
Faz = -34.1;
aym = 1.8;
azm = 0.75;
Ftz = 0;

if debug fprintf('input vector size: %d,%d\n',size(x)); end

Fy = x(1);
m = x(2);
Fgz = x(3);
Fz = x(4);
Fgy = x(5);

F(1) = -Fy + m*aym + sin(phi)*cos(theta)*m*g;
F(2) = -m + Fgz/(cos(phi)*cos(theta)*g);
F(3) = -Fgz + Fz - Faz - Ftz;
F(4) = -Fz + azm*m - cos(phi)*cos(theta)*m*g;
F(5) = -Fgy + sin(phi)*cos(theta)*m*g;

end

