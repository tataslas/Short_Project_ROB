close all
clear

cargaCrani;

Vc = Vc/600;
Vc = Vc*rotx(pi/2);
Vc = Vc*rotz(-pi/2);
Vc(:,1) = Vc(:,1)+1;

plotCrani
load('C:\Users\fgrub\Documents\MATLAB\SP_material/F_V_Human_Body.mat')
V = V/10;
V = V*rotz(-pi/2);
V(:,1) = V(:,1)+3;

%PUMA
mdl_puma560_Craigh
p560Craigh.plot(qz)	

%HUMAN BODY
patch('Faces',F,'Vertices',V,'FaceColor','white')
axis equal
%axis ([20 -20 20 -20 20 -20])
hold on


%MESA OPERACIONES

taula = [-6,0,-2;6,0,-2;6,20.7,-2;-6,20.7,-2];
taula = taula/10;
taula = taula*rotz(-pi/2);
taula(:,1) = taula(:,1) + 3;

C = [0.5];

% labelling
zlabel('z');ylabel('y');xlabel('x');
% drawing the figure
fill3(taula(:,1),taula(:,2),taula(:,3),C,'FaceColor', [.37 .45 .64], 'FaceLighting', 'gouraud', 'EdgeColor', [.37 .45 .64]);
material metal;

%PATAS MESA OPERACIONES
[Xp1,Yp1,Zp1] = cylinder(0.3);
Zp1(2,:) = 5;

surface((Xp1)/10 + 1,(Yp1)/10 + 0.5,(Zp1-7)/10,'FaceColor', [.37 .45 .64], 'EdgeColor', [.37 .45 .64]);

[Xp2,Yp2,Zp2] = cylinder(0.3);
Zp2(2,:) = 5;
surface((Xp2)/10 + 1,(Yp2)/10 - 0.5,(Zp2-7)/10,'FaceColor', [.37 .45 .64], 'EdgeColor', [.37 .45 .64] );

[Xp3,Yp3,Zp3] = cylinder(0.3);
Zp3(2,:) = 5;
surface((Xp3)/10 + 2.95,(Yp3)/10 + 0.5,(Zp3-7)/10,'FaceColor', [.37 .45 .64], 'EdgeColor', [.37 .45 .64] );

[Xp4,Yp4,Zp4] = cylinder(0.3);
Zp4(2,:) = 5;
surface((Xp4)/10 + 2.95,(Yp4)/10 - 0.5,(Zp4-7)/10,'FaceColor', [.37 .45 .64], 'EdgeColor', [.37 .45 .64]);


desplz_x = 1.5
desplz_y = 1.5
%MESA AUXILIAR
X_ma = [-13 -8 -8 -13];
Y_ma = [23 23 28 28];
Z_ma = [-2 -2 -2 -2];

X_ma = X_ma/10 + desplz_x;
Y_ma = Y_ma/10 - desplz_y;
Z_ma = Z_ma/10
%C = [0.5];
% labelling
zlabel('z');ylabel('y');xlabel('x');
% drawing the figure
fill3(X_ma,Y_ma,Z_ma,C,'FaceColor', [.37 .45 .64], 'FaceLighting', 'gouraud', 'EdgeColor', [.37 .45 .64]);
material metal;

%PATAS MESA AUXILIAR
[Xpa1,Ypa1,Zpa1] = cylinder(0.3);
Zpa1(2,:) = 5;
surface((Xpa1-12.5)/10+desplz_x,(Ypa1+23.5)/10-desplz_y,(Zpa1-7)/10,'FaceColor', [.37 .45 .64], 'EdgeColor', [.37 .45 .64]);

[Xpa2,Ypa2,Zpa2] = cylinder(0.3);
Zpa2(2,:) = 5;
surface((Xpa2-12.5)/10+desplz_x,(Ypa2+27.5)/10-desplz_y,(Zpa2-7)/10,'FaceColor', [.37 .45 .64], 'EdgeColor', [.37 .45 .64] );

[Xpa3,Ypa3,Zpa3] = cylinder(0.3);
Zpa3(2,:) = 5;
surface((Xpa3-8.5)/10+desplz_x,(Ypa3+23.5)/10-desplz_y,(Zpa3-7)/10,'FaceColor', [.37 .45 .64], 'EdgeColor', [.37 .45 .64] );

[Xpa4,Ypa4,Zpa4] = cylinder(0.3);
Zpa4(2,:) = 5;
surface((Xpa4-8.5)/10+desplz_x,(Ypa4+27.5)/10-desplz_y,(Zpa4-7)/10,'FaceColor', [.37 .45 .64], 'EdgeColor', [.37 .45 .64]);


view(3);