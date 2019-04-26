
%TRANSFORMACIÓN VERTICES DEL TUMOR DEL DICOM EN COORDENADAS
matriu_puntsCrani
coord_tumor(:,1) = (vertexs_tumor(:,3)* 0.9524 * mmCoord_X) + origen(1)
coord_tumor(:,2) = -((vertexs_tumor(:,1) * 0.9524 * mmCoord_Y) + origen(2))
coord_tumor(:,3) = -((vertexs_tumor(:,2) * 0.9524 * mmCoord_Z) + origen(3))

coord_tumor = double(coord_tumor)




