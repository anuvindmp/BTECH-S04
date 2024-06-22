vx = 1; % Translational velocity in x
vy = 2; % Translational velocity in y
omega = pi/6;
dt = 1;

theta = omega * dt;
R = [cos(theta), -sin(theta); sin(theta), cos(theta)];

t = [vx * dt; vy * dt];

T = [R, t; 0, 0, 1];
% Display the result
disp('Homogeneous transformation matrix T:');
disp(T);
% a point in homogeneous coordinates
point = [1; 1; 1];
transformed_point = T * point;
disp('Transformed point:');
disp(transformed_point);
