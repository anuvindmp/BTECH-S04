R = rpy2r(30, 30, -20, 'deg');
disp('Rotation Matrix R:');
disp(R);

rpy_angles = tr2rpy(R, 'deg');
disp('Roll-Pitch-Yaw angles from Rotation Matrix:');
disp(rpy_angles);

figure;
plot3([0 R(1,1)], [0 R(2,1)], [0 R(3,1)], 'r'); % X-axis
hold on;
plot3([0 R(1,2)], [0 R(2,2)], [0 R(3,2)], 'g'); % Y-axis
plot3([0 R(1,3)], [0 R(2,3)], [0 R(3,3)], 'b'); % Z-axis
xlabel('X'); ylabel('Y'); zlabel('Z');
title('Rotation Matrix Axes');
legend('X-axis', 'Y-axis', 'Z-axis');
grid on;
axis equal;

