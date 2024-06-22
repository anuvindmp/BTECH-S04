T0 = eye(4);
theta = pi/2;
R = trotz(theta); 
T1 = R; 
figure;
axis([-1 1 -1 1 -1 1]);
view(3);
grid on;
hold on;

trplot(T0, 'frame', '0', 'color', 'b', 'arrow', 'length', 0.5);
title('Rotation Animation using tranimate');

tranimate(T0, T1, 'frames', 50, 'rgb');

trplot(T1, 'frame', '1', 'color', 'r', 'arrow', 'length', 0.5);
hold off;
