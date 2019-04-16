
close all
clear
load('/usr/local/MATLAB/R2016b/licenses/short_project_1/SP_material/F_V_Human_Body.mat')


%HUMAN BODY
patch('Faces',F,'Vertices',V,'FaceColor','white')
axis equal
%axis ([20 -20 20 -20 20 -20])
hold on


%MESA OPERACIONES
X_m = [-6 6 6 -6];
Y_m = [0 0 20.7 20.7];
Z_m = [-2 -2 -2 -2];
C = [0.5];
% labelling
zlabel('z');ylabel('y');xlabel('x');
% drawing the figure
fill3(X_m,Y_m,Z_m,C,'FaceColor', [.37 .45 .64], 'FaceLighting', 'gouraud', 'EdgeColor', [.37 .45 .64]);
material metal;

%PATAS MESA OPERACIONES
[Xp1,Yp1,Zp1] = cylinder(0.3);
Zp1(2,:) = 5;
surface(Xp1+5,Yp1+20,Zp1-7,'FaceColor', [.37 .45 .64], 'EdgeColor', [.37 .45 .64]);

[Xp2,Yp2,Zp2] = cylinder(0.3);
Zp2(2,:) = 5;
surface(Xp2-5,Yp2+20,Zp2-7,'FaceColor', [.37 .45 .64], 'EdgeColor', [.37 .45 .64] );

[Xp3,Yp3,Zp3] = cylinder(0.3);
Zp3(2,:) = 5;
surface(Xp3+5,Yp3+1,Zp3-7,'FaceColor', [.37 .45 .64], 'EdgeColor', [.37 .45 .64] );

[Xp4,Yp4,Zp4] = cylinder(0.3);
Zp4(2,:) = 5;
surface(Xp4-5,Yp4+1,Zp4-7,'FaceColor', [.37 .45 .64], 'EdgeColor', [.37 .45 .64]);


%MESA AUXILIAR
X_ma = [-13 -8 -8 -13];
Y_ma = [23 23 28 28];
Z_ma = [-2 -2 -2 -2];
%C = [0.5];
% labelling
zlabel('z');ylabel('y');xlabel('x');
% drawing the figure
fill3(X_ma,Y_ma,Z_ma,C,'FaceColor', [.37 .45 .64], 'FaceLighting', 'gouraud', 'EdgeColor', [.37 .45 .64]);
material metal;

%PATAS MESA AUXILIAR
[Xpa1,Ypa1,Zpa1] = cylinder(0.3);
Zpa1(2,:) = 5;
surface(Xpa1-12.5,Ypa1+23.5,Zpa1-7,'FaceColor', [.37 .45 .64], 'EdgeColor', [.37 .45 .64]);

[Xpa2,Ypa2,Zpa2] = cylinder(0.3);
Zpa2(2,:) = 5;
surface(Xpa2-12.5,Ypa2+27.5,Zpa2-7,'FaceColor', [.37 .45 .64], 'EdgeColor', [.37 .45 .64] );

[Xpa3,Ypa3,Zpa3] = cylinder(0.3);
Zpa3(2,:) = 5;
surface(Xpa3-8.5,Ypa3+23.5,Zpa3-7,'FaceColor', [.37 .45 .64], 'EdgeColor', [.37 .45 .64] );

[Xpa4,Ypa4,Zpa4] = cylinder(0.3);
Zpa4(2,:) = 5;
surface(Xpa4-8.5,Ypa4+27.5,Zpa4-7,'FaceColor', [.37 .45 .64], 'EdgeColor', [.37 .45 .64]);

view(3);

