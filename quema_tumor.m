%QUEMA DEL TUMOR
for i=1:298
    circle1 = circle(coord_tumor(i,:), 0.0005) ;
    plot3(circle1(1,:), circle1(2,:), circle1(3,:),'r');
end

for i=1:298
    Q= p560.ikine6s(coord_tumor(i,:), 'run');
    p560.plot(Q);
end

% Laser_Pose(:,:,i)= vpa(coord_tumor(i,:));
% Laser_Pose = double(Laser_Pose)

view([0.8,0,2])