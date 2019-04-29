%Execute
close all
clear

% CARGA CRANI
[Vc, Fc, Nc, Crani] = stlRead('Crani.stl');

%Escalar, mover, rotar crani
Vc = Vc/600;
Vc = Vc*rotx(pi/2);
Vc = Vc*rotz(-pi/2);
Vc = Vc*rotx(pi/4);
Vc = Vc*roty(-pi/4);
Vc(:,1) = Vc(:,1)+0.7;

%pintar crani
zlabel('z');ylabel('y');xlabel('x');
stlPlot(Vc, Fc, Crani)

%PUMA
mdl_puma560
% p560.tool = transl(-0.5,-0,-0)
p560.plot(qz, 'nojoints')



%HUMAN BODY
load('F_V_Human_Body.mat')
V = V/10;
V = V*rotz(-pi/2);
V(:,1) = V(:,1)+2.7;
%stlPlot(V,F,'Willy')

axis equal
hold on


%Hacemos los calculos y dibujamos los fiducials
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%CALCULOS PARA CONSEGUIR EL PUNTO DE REFERENCIA ENTRE EL DICOM Y EL CRANEO
%EN MATLAB

coordMIN = min(Vc)
coordMAX = max(Vc)

Xmin = coordMIN(1)
Ymin = coordMIN(2)
Zmin = coordMIN(3)

Xmax = coordMAX(1)
Ymax = coordMAX(2)
Zmax = coordMAX(3)

%Altura, anchura y fondo del crani en el modelo de matlab
alturaCrani = Xmax - Xmin
anchoCrani = Ymax - Ymin
fondoCrani = Zmax - Zmin

%Medidas del maximo de altura, anchura y fondo del craneo en el dicom
mmDicomAltura = 112 * 1.4
mmDicomAncho = 154*0.9524
mmDicomFondo = 198*0.9524

%Correspondencia de 1mm del dicom con coordenadas del matlab
digits(6)
mmCoord_X = vpa(alturaCrani/mmDicomAltura)
mmCoord_Y = vpa(alturaCrani/mmDicomAltura)
mmCoord_Z = vpa(alturaCrani/mmDicomAltura)

%CALCULO DEL CENTRO DEL CRANI
%Centro del crani en matlab
XcentroCrani = Xmin
YcentroCrani = Ymin + (anchoCrani/2)
ZcentroCrani = Zmin + (fondoCrani/2)

%Centro superior crani modelo
centroCrani = [XcentroCrani,YcentroCrani,ZcentroCrani]

%Centro crani dicom
XcentroDicom = 0
YcentroDicom = 124.86*0.9524
ZcentroDicom = 149.71*0.9524

%Operaciones de transformación para calculo del origen
Xorigen = XcentroCrani
Yorigen = YcentroCrani - (YcentroDicom * mmCoord_Y)
Zorigen = ZcentroCrani - (ZcentroDicom * mmCoord_Z)

%Origen de coordenadas en modelo de matlab
digits(4)
origen = vpa([Xorigen,Yorigen,Zorigen])

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%HACER QUE EL PUMA VAYA A LOS FIDUCIALS

%Coordenadas de los fiducials en el Dicom
tor1Dicom = [19*1.4,197.4538,114]
tor2Dicom = [48*1.4,175.3122,194.7039]
tor3Dicom = [81*1.4,88,198.5589]

%Pasamos los puntos de los fiducials de mm de Dicom a coordenadas de la
%escena
tor1Dicom(1) = (tor1Dicom(1) * mmCoord_X) + origen(1)
tor1Dicom(2) = -((tor1Dicom(2) * mmCoord_Y) + origen(2))
tor1Dicom(3) = -((tor1Dicom(3) * mmCoord_Z) + origen(3))

tor2Dicom(1) = (tor2Dicom(1) * mmCoord_X) + origen(1)
tor2Dicom(2) = -((tor2Dicom(2) * mmCoord_Y) + origen(2))
tor2Dicom(3) = -((tor2Dicom(3) * mmCoord_Z) + origen(3))

tor3Dicom(1) = (tor3Dicom(1) * mmCoord_X) + origen(1)
tor3Dicom(2) = -((tor3Dicom(2) * mmCoord_Y) + origen(2))
tor3Dicom(3) = -((tor3Dicom(3) * mmCoord_Z) + origen(3))

camzoom(2.5)
%Dibujamos las esferas en los puntos de los fiducials
[Vs, Fs, Ns, sphere] = stlRead('sphere_ascii.stl');
Vs = Vs/4000
Vs(:,1) = Vs(:,1)+0.005
Vs(:,2) = Vs(:,2)+0.0025
Vs = Vs+tor1Dicom;
patch('faces', Fs, 'vertices', Vs, 'FaceColor', [0.2 0.2 0.2])
stlPlot(Vs,Fs,sphere)
view(-90,-10)

[Vs, Fs, Ns, sphere] = stlRead('sphere_ascii.stl');
Vs = Vs/4000
Vs(:,1) = Vs(:,1)+0.005
Vs(:,2) = Vs(:,2)+0.0025
Vs = Vs+tor2Dicom;
patch('faces', Fs, 'vertices', Vs, 'FaceColor', [0.2 0.2 0.2])
stlPlot(Vs,Fs,sphere)
view(-30,20)

[Vs, Fs, Ns, sphere] = stlRead('sphere_ascii.stl');
Vs = Vs/4000
Vs(:,1) = Vs(:,1)+0.005
Vs(:,2) = Vs(:,2)+0.0025
Vs = Vs+tor3Dicom;
patch('faces', Fs, 'vertices', Vs, 'FaceColor', [0.2 0.2 0.2])
stlPlot(Vs,Fs,sphere)
view(-120,20)

%El puma toca los fiducials
% Q= p560.ikine6s(tor1Dicom, 'd')
% p560.plot(Q)
% view(-30,20)
% 
% Q= p560.ikine6s(tor2Dicom, 'd')
% p560.plot(Q)
% view(-30,20)
% 
% Q= p560.ikine6s(tor3Dicom, 'd')
% p560.plot(Q)
% view(-120,20)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%TRANSFORMACIÓN VERTICES DEL TUMOR DEL DICOM EN COORDENADAS
matriu_puntsCrani
coord_tumor(:,1) = (vertexs_tumor(:,3)* 0.9524 * mmCoord_X) + origen(1)
coord_tumor(:,2) = -((vertexs_tumor(:,1) * 0.9524 * mmCoord_Y) + origen(2))
coord_tumor(:,3) = -((vertexs_tumor(:,2) * 0.9524 * mmCoord_Z) + origen(3))

coord_tumor = double(coord_tumor)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%TREPANACIO
radius=0.03;
n=200;
INI = transl(XcentroCrani, YcentroCrani,ZcentroCrani+0.05); %center of the part

%Circulo por donde hace la trepanació
cTrepanacio = circle([0 0 0], radius)
cTrepanacio(4,:) = 1; 
RYtrepanacio =  transl(XcentroCrani,YcentroCrani,ZcentroCrani+0.05)*troty(90, 'deg')
cTrepanacio = RYtrepanacio*cTrepanacio;
cTrepanacio = cTrepanacio(1:3,:);
plot3(cTrepanacio(1,:), cTrepanacio(2,:), cTrepanacio(3,:),'r','LineWidth',1);

for i=1:n
    Laser_Pose(:,:,i)= INI*trotx(pi/2)*trotx(2*pi*i/n)*transl(0, 0, -radius);
end

% Q= p560.ikine6s(Laser_Pose, 'run')
% p560.plot(Q)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%QUEMA DEL TUMOR
for i=1:298
    circle1 = circle(coord_tumor(i,:), 0.0005) ;
    plot3(circle1(1,:), circle1(2,:), circle1(3,:),'r');
end

% for i=1:298
%     Q= p560.ikine6s(coord_tumor(i,:), 'run');
%     p560.plot(Q);
% end

