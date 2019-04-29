
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
Q= p560.ikine6s(tor1Dicom, 'd')
p560.plot(Q)
view(-30,20)

Q= p560.ikine6s(tor2Dicom, 'd')
p560.plot(Q)
view(-30,20)

Q= p560.ikine6s(tor3Dicom, 'd')
p560.plot(Q)
view(-120,20)

