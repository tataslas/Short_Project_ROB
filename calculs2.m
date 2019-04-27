
%Calculos felipe para fiduciales una noche de sueño e inspiracion

%Cogemos las medidas del tumor
coordMIN_T = min(coord_tumor)
coordMAX_T = max(coord_tumor)

Xmin_T = coordMIN_T(1)
Ymin_T = coordMIN_T(2)
Zmin_T = coordMIN_T(3)

Xmax_T = coordMAX_T(1)
Ymax_T = coordMAX_T(2)
Zmax_T = coordMAX_T(3)

alturaTumor = Xmax_T - Xmin_T
anchoTumor= Ymax_T - Ymin_T
fondoTumor = Zmax_T - Zmin_T

%Capas que ocupa el tumor

capas_T = 24 %de la 24 a la 48
capa_1 = alturaTumor/capas_T; %aqui tendremos cuanto ocupa una capa del tumor

%Centro Tumor Dicom
XTumorDicom = 131.42
YTumorDicom = 96.78
ZTumorDicom = 36*1.4

%Centro Tumor Matlab

XcentroTumor = Xmin_T + (alturaTumor/2)
YcentroTumor = Ymin_T + (anchoTumor/2)
ZcentroTumor = Zmin_T + (fondoTumor/2)

digits(4)
centroTumor = vpa([XcentroTumor,YcentroTumor,ZcentroTumor])

%Fiducial capa 19
fd_19_X = 121.90
fd_19_y = 208.37
fd_19_z = 19*1.4

%Fiducial capa 48
fd_48_X = 185.57
fd_48_y = 208.37
fd_48_z = 48*1.4

%Fiducial capa 81
fd_81_X = 70.37
fd_81_y = 212.31
fd_81_z = 81*1.4

%x fiducial_19 -> (36*1.4-19*1.4)*0.9524*0.00169579 = 0.0384
%y fiducial_19 -> (131.42-121.90)*0.9524*0.00169579 =  0.0154
%z_fiducial_19 -> (96.78-208.37)*0.9524*0.00169579 =  -0.1802

tor1Dicom = [0.0384,0.0154,-0.1802]
tor1Dicom(1) = centroTumor(1) - tor1Dicom(1) 
tor1Dicom(2) = centroTumor(2) - tor1Dicom(2) 
tor1Dicom(3) = centroTumor(3) + tor1Dicom(3) 

[Vs, Fs, Ns, sphere] = stlRead('sphere_ascii.stl');
Vs = Vs/3000
Vs(:,1) = Vs(:,1)+0.005
Vs(:,2) = Vs(:,2)+0.0025
Vs = Vs+tor1Dicom;
stlPlot(Vs,Fs,sphere)

%x fiducial_48 -> (36*1.4-48*1.4)*0.9524*0.00169579 = -0.0271
%y fiducial_48 -> (131.42-185.57)*0.9524*0.00169579 = -0.0875
%z_fiducial_48 -> (96.78-208.37)*0.9524*0.00169579 =  -0.1802

tor2Dicom = [-0.0271, -0.0875,-0.1802]
tor2Dicom(1) = centroTumor(1) - tor2Dicom(1) 
tor2Dicom(2) = centroTumor(2) - tor2Dicom(2) 
tor2Dicom(3) = centroTumor(3) + tor2Dicom(3) 

[Vs, Fs, Ns, sphere] = stlRead('sphere_ascii.stl');
Vs = Vs/3000
Vs(:,1) = Vs(:,1)+0.005
Vs(:,2) = Vs(:,2)+0.0025
Vs = Vs+tor2Dicom;
stlPlot(Vs,Fs,sphere)

%x fiducial_81 -> (36*1.4-81*1.4)*0.9524*0.00169579 =  -0.1017
%y fiducial_81 -> (131.42-70.37)*0.9524*0.00169579 =  0.0986
%z_fiducial_81 -> (96.78-212.31)*0.9524*0.00169579 =  -0.1866

tor3Dicom = [-0.1017,0.0986,-0.1866]
tor3Dicom(1) = centroTumor(1) - tor3Dicom(1) 
tor3Dicom(2) = centroTumor(2) - tor3Dicom(2) 
tor3Dicom(3) = centroTumor(3) + tor3Dicom(3) 

[Vs, Fs, Ns, sphere] = stlRead('sphere_ascii.stl');
Vs = Vs/3000
Vs(:,1) = Vs(:,1)+0.005
Vs(:,2) = Vs(:,2)+0.0025
Vs = Vs+tor3Dicom;
stlPlot(Vs,Fs,sphere)


