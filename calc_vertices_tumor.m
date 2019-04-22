
%TRANSFORMACIÓN VERTICES DEL TUMOR DEL DICOM EN COORDENADAS
matriu_puntsCrani
coord_tumor(:,1) = (vertexs_tumor(:,3)* 0.9524 * mmCoord_X) + origen(1)
coord_tumor(:,2) = -((vertexs_tumor(:,1) * 0.9524 * mmCoord_Y) + origen(2))
coord_tumor(:,3) = -((vertexs_tumor(:,2) * 0.9524 * mmCoord_Z) + origen(3))

for i=1:298
Laser_Pose(:,:,:)= coord_tumor(i,:)
Q= p560.ikine6s(Laser_Pose, 'run')
p560.plot(Q)
end
