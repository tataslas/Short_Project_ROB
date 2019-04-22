
%TRANSFORMACIÓN VERTICES DEL TUMOR DEL DICOM EN COORDENADAS
matriu_puntsCrani
vertexs_tumor(:,1) = (vertexs_tumor(:,1) * mmCoord_X) + origen(1)
vertexs_tumor(:,2) = (vertexs_tumor(:,2) * mmCoord_Y) + origen(2)
vertexs_tumor(:,3) = (vertexs_tumor(:,3) * mmCoord_Z) + origen(3)

for i=1:298
Laser_Pose(:,:,:)= vertexs_tumor(i,:)
Q= p560.ikine6s(Laser_Pose, 'run')
p560.plot(Q)
end

Laser_Pose = vertexs_tumor(1,:)
Q= p560.ikine6s(Laser_Pose, 'run')
p560.plot(Q)

Laser_Pose(:,:,:)= vertexs_tumor(2,:)
Q= p560.ikine6s(Laser_Pose, 'run')
p560.plot(Q)

Laser_Pose(:,:,:)= vertexs_tumor(3,:)
Q= p560.ikine6s(Laser_Pose, 'run')
p560.plot(Q)