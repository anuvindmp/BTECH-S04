A = [0, 0];
B = [1, 1];
C = [5, 2];
theta = 45;
theta_rad = deg2rad(theta);
R = trot2(theta_rad);
vertices = [A; B; C; A];
vertices_hom = [vertices, ones(size(vertices, 1), 1)];
vertices_transformed_hom = (R * vertices_hom')';
vertices_transformed = vertices_transformed_hom(:, 1:2);
figure;
hold on;
axis equal;
plot(vertices(:, 1), vertices(:, 2), 'b-', 'LineWidth', 2, 'DisplayName', 'Original Triangle');
plot(vertices(:, 1), vertices(:, 2), 'bo', 'MarkerFaceColor', 'b');
text(vertices(:, 1), vertices(:, 2), {'A', 'B', 'C', 'A'}, 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right');
plot(vertices_transformed(:, 1), vertices_transformed(:, 2), 'r-', 'LineWidth', 2, 'DisplayName', 'Transformed Triangle');
plot(vertices_transformed(:, 1), vertices_transformed(:, 2), 'ro', 'MarkerFaceColor', 'r');
text(vertices_transformed(:, 1), vertices_transformed(:, 2), {'A''', 'B''', 'C''', 'A'''}, 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'left');
title('Original and Rotated Triangles');
legend('show');
hold off;
function R = trot2(theta)
   R = [cos(theta) -sin(theta) 0;
        sin(theta) cos(theta) 0;
        0 0 1];
end

