
%Human body
patch('Faces',F,'Vertices',V,'FaceColor','green')
axis equal
%axis ([20 -20 20 -20 20 -20])
hold on


X = [-6 6 6 -6];
Y = [0 0 20.7 20.7];
Z_0 = [-1.6 -1.6 -2.1 -2.1];

C = [0.5];

%figure
%axis ([-0.5 1.5 -0.5 1.5 -0.5 1.5])
% labelling
zlabel('z');ylabel('y');xlabel('x');
% Create title
title('Mesa');
% drawing the figure
fill3(X,Y,Z_0,C);

%alpha 0.2
view() 