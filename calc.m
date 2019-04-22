
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
mmDicomAncho = 154
mmDicomFondo = 198

%Correspondencia de 1mm del dicom con coordenadas del matlab
digits(6)
mmCoord_X = vpa(alturaCrani/mmDicomAltura)
mmCoord_Y = vpa(anchoCrani/mmDicomAncho)
mmCoord_Z = vpa(fondoCrani/mmDicomFondo)

%CALCULO DEL CENTRO DEL CRANI
%Centro del crani en matlab
XcentroCrani = Xmin
YcentroCrani = Ymin + (anchoCrani/2)
ZcentroCrani = Zmin + (fondoCrani/2)

%Centro superior crani modelo
centroCrani = [XcentroCrani,YcentroCrani,ZcentroCrani]

%Centro crani dicom
XcentroDicom = 0
YcentroDicom = 124.86
ZcentroDicom = 149.71

%Operaciones de transformación para calculo del origen
Xorigen = XcentroCrani
Yorigen = YcentroCrani - (YcentroDicom * mmCoord_Y)
Zorigen = ZcentroCrani - (ZcentroDicom * mmCoord_Z)

%Origen de coordenadas en modelo de matlab
digits(4)
origen = vpa([Xorigen,Yorigen,Zorigen])


puntoFueraCraneo = [48*1.4,129.12,11.21]
puntoFueraCraneo(1) = (puntoFueraCraneo(1) * mmCoord_X) + origen(1)
puntoFueraCraneo(2) = (puntoFueraCraneo(2) * mmCoord_Y) + origen(2)
puntoFueraCraneo(3) = (puntoFueraCraneo(3) * mmCoord_Z) + origen(3)

