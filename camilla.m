close all
clear

cargaCrani;

Vc = Vc/600;
Vc(:,1) = Vc(:,1)+2;

%B=eul2tr(0.4,0.5,0.3)

%th_y=atan2(Vc(1,3),Vc(3,3)) % rotation arount X of {WRF}. Pay attention to sign
%Vc=troty(th_y)*Vc; % notice premultiplication. i.e around X {WRF}. Now Z of{B4} is coplanar to the plane XZ of {WRF}

%Vc = Vc+1;

plotCrani
load('C:\Users\fgrub\Documents\MATLAB\SP_material/F_V_Human_Body.mat')
V = V/10;
V(:,2) = V(:,2)-2;
V(:,1) = V(:,1)+2;

%PUMA
mdl_puma560_Craigh
p560Craigh.plot(qz)	

%HUMAN BODY
patch('Faces',F,'Vertices',V,'FaceColor','white')
axis equal
%axis ([20 -20 20 -20 20 -20])
hold on

desplz_x = 2;
desplz_y = 2;
%MESA OPERACIONES
X_m = [-6 6 6 -6];
Y_m = [0 0 20.7 20.7];
Z_m = [-2 -2 -2 -2];
C = [0.5];

X_m = (X_m/10) + desplz_x; %le sumo 1 para colocarlo donde quiero, en las patas igual
Y_m = (Y_m/10) - desplz_y;
Z_m = Z_m/10;

% labelling
zlabel('z');ylabel('y');xlabel('x');
% drawing the figure
fill3(X_m,Y_m,Z_m,C,'FaceColor', [.37 .45 .64], 'FaceLighting', 'gouraud', 'EdgeColor', [.37 .45 .64]);
material metal;

%PATAS MESA OPERACIONES
[Xp1,Yp1,Zp1] = cylinder(0.3);
Zp1(2,:) = 5;

surface((Xp1+5)/10+desplz_x,(Yp1+20)/10-desplz_y,(Zp1-7)/10,'FaceColor', [.37 .45 .64], 'EdgeColor', [.37 .45 .64]);

[Xp2,Yp2,Zp2] = cylinder(0.3);
Zp2(2,:) = 5;
surface((Xp2-5)/10+desplz_x,(Yp2+20)/10-desplz_y,(Zp2-7)/10,'FaceColor', [.37 .45 .64], 'EdgeColor', [.37 .45 .64] );

[Xp3,Yp3,Zp3] = cylinder(0.3);
Zp3(2,:) = 5;
surface((Xp3+5)/10+desplz_x,(Yp3+1)/10-desplz_y,(Zp3-7)/10,'FaceColor', [.37 .45 .64], 'EdgeColor', [.37 .45 .64] );

[Xp4,Yp4,Zp4] = cylinder(0.3);
Zp4(2,:) = 5;
surface((Xp4-5)/10+desplz_x,(Yp4+1)/10-desplz_y,(Zp4-7)/10,'FaceColor', [.37 .45 .64], 'EdgeColor', [.37 .45 .64]);


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