
%TRANSFORMACIÓN VERTICES DEL TUMOR DEL DICOM EN COORDENADAS
matriu_puntsCrani
coord_tumor(:,1) = (vertexs_tumor(:,3)* 0.9524 * mmCoord_X) + origen(1)
coord_tumor(:,2) = -((vertexs_tumor(:,1) * 0.9524 * mmCoord_Y) + origen(2))
coord_tumor(:,3) = -((vertexs_tumor(:,2) * 0.9524 * mmCoord_Z) + origen(3))

coord_tumor = double(coord_tumor)

for i=1:298
circle1 = circle(coord_tumor(i,:), 0.0005);
plot3(circle1(1,:), circle1(2,:), circle1(3,:),'r');
Q= p560.ikine6s(coord_tumor(i,:), 'run');
p560.plot(Q);
end

% Laser_Pose(:,:,i)= vpa(coord_tumor(i,:));
% Laser_Pose = double(Laser_Pose)

view([0.8,0,2])
