%HACER QUE EL PUMA VAYA A LOS FIDUCIALS
%tor1Dicom = [19*1.4,121.90,207.39]
%tor2Dicom = [48*1.4,185.57,208.7039]
%tor3Dicom = [81*1.4,70.70,212.31]

tor1Dicom = [19*1.4,117.4287,195.4341]
tor2Dicom = [48*1.4,175.3122,194.7039]
tor3Dicom = [81*1.4,68.6949,199.5044]

%de mm a coordenadas
tor1Dicom(1) = origen(1)+(tor1Dicom(1) *0.9524* mmCoord_X)  
tor1Dicom(2) = -(origen(2)-(tor1Dicom(2) * 0.9524*mmCoord_Y)) 
tor1Dicom(3) = origen(3)-(tor1Dicom(3) * 0.9524* mmCoord_Z)

tor2Dicom(1) = origen(1)+(tor2Dicom(1) *0.9524* mmCoord_X)  
tor2Dicom(2) = -(origen(2)-(tor2Dicom(2) * 0.9524*mmCoord_Y)) 
tor2Dicom(3) = origen(3)-(tor2Dicom(3) * 0.9524* mmCoord_Z)

tor3Dicom(1) = origen(1)+(tor3Dicom(1) *0.9524* mmCoord_X)  
tor3Dicom(2) = -(origen(2)-(tor3Dicom(2) * 0.9524*mmCoord_Y)) 
tor3Dicom(3) = origen(3)-(tor3Dicom(3) * 0.9524* mmCoord_Z)

% tor2Dicom(1) = (tor2Dicom(1) *0.9524* mmCoord_X) + origen(1)
% tor2Dicom(2) = ((tor2Dicom(2) * 0.9524*mmCoord_Y) + origen(2))
% tor2Dicom(3) = ((tor2Dicom(3) * 0.9524*mmCoord_Z) + origen(3))
% 
% tor3Dicom(1) = (tor3Dicom(1) *0.9524* mmCoord_X) + origen(1)
% tor3Dicom(2) = ((tor3Dicom(2) * 0.9524*mmCoord_Y) + origen(2))
% tor3Dicom(3) = ((tor3Dicom(3) *0.9524* mmCoord_Z) + origen(3))

radius=0.005;

[Vs, Fs, Ns, sphere] = stlRead('sphere_ascii.stl');
Vs = Vs/3000
Vs(:,1) = Vs(:,1)+0.005
Vs(:,2) = Vs(:,2)+0.0025
% Vs(:,3) = Vs(:,3)+0.025
Vs = Vs+tor1Dicom;
%Vs = Vs*rotx(pi/2) *rotz(-pi/2);
stlPlot(Vs,Fs,sphere)
% labelling
zlabel('z');ylabel('y');xlabel('x');

[Vs, Fs, Ns, sphere] = stlRead('sphere_ascii.stl');
Vs = Vs/3000
Vs(:,1) = Vs(:,1)+0.005
Vs(:,2) = Vs(:,2)+0.0025
Vs = Vs+tor2Dicom;
stlPlot(Vs,Fs,sphere)

[Vs, Fs, Ns, sphere] = stlRead('sphere_ascii.stl');
Vs = Vs/3000
Vs(:,1) = Vs(:,1)+0.005
Vs(:,2) = Vs(:,2)+0.0025
Vs = Vs+tor3Dicom;
stlPlot(Vs,Fs,sphere)

%patch(esfera,'FaceColor',[0.25,0.25,0.25]);
axis equal

circle1 = sphere([tor1Dicom(1) tor1Dicom(2) tor1Dicom(3)], radius);
circle2 = circle(tor2Dicom, radius);
circle3 = circle(tor3Dicom, radius);

plot3(circle1(1,:), circle1(2,:), circle1(3,:),'r');
plot3(circle2(1,:), circle2(2,:), circle2(3,:),'r');
plot3(circle3(1,:), circle3(2,:), circle3(3,:),'r');

Q= p560.ikine6s(tor1Dicom, 'run')
p560.plot(Q)

Q= p560.ikine6s(tor2Dicom, 'run')
p560.plot(Q)

Q= p560.ikine6s(tor3Dicom, 'run')
p560.plot(Q)