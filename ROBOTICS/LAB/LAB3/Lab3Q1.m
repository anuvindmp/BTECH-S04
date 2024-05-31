translation = transl2(2, 3);
rotation = trot2(30, 'deg');
HT = translation * rotation;
disp('Homogeneous Transformation Matrix (HT):');
disp(HT);
figure;
trplot2(HT, 'frame', 'B', 'color', 'g');
