
%CALCULOS PARA CONSEGUIR EL PUNTO DE REFERENCIA ENTRE EL DICOM Y EL CRANEO
%EN MATLAB

coordMIN = min(Vc)
coordMAX = max(Vc)

Xmin = coordMIN(:,1)
Ymin = coordMIN(:,2)
Zmin = coordMIN(:,3)

Xmax = coordMAX(:,1)
Ymax = coordMAX(:,2)
Zmax = coordMAX(:,3)

%Altura, anchura y fondo del crani en el modelo de matlab
alturaCrani = Xmax - Xmin
anchoCrani = Ymax - Ymin
fondoCrani = Zmax - Zmin

%Medidas del maximo de altura, anchura y fondo del craneo en el dicom
mmDicomAltura = 112 * 1.4
mmDicomAncho = 154
mmDicomFondo = 198

%Correspondencia de 1mm del dicom con coordenadas del matlab
digits(6)
mmCoord_Altura = vpa(alturaCrani/mmDicomAltura)
mmCoord_Ancho = vpa(anchoCrani/mmDicomAncho)
mmCoord_Fondo = vpa(fondoCrani/mmDicomFondo)

%CALCULO DEL CENTRO DEL CRANI

%Centro del crani en matlab
XcentroCrani = Xmin
YcentroCrani = Ymin + (anchoCrani/2)
ZcentroCrani = Zmin + (fondoCrani/2)

%Centro crani dicom
XcentroDicom = 0
YcentroDicom = 124.86
ZcentroDicom = 149.71

%Operaciones de transformación
Xcentro = XcentroCrani
Ycentro = YcentroCrani + (YcentroDicom * mmCoord_Ancho)
Zcentro = ZcentroCrani + (ZcentroDicom * mmCoord_Fondo)

%Centro superior del crani en matlab
centro = [Xcentro,Ycentro,Zcentro]

