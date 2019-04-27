%TREPANACIO
radius=0.05;
n=200;
INI = transl(XcentroCrani, YcentroCrani,ZcentroCrani); %center of the part
% circle1 = circle([XcentroCrani YcentroCrani ZcentroCrani], radius);
% circle2 = circle([XcentroCrani YcentroCrani ZcentroCrani], 0.5*radius);
% 
% plot3(circle1(1,:), circle1(2,:), circle1(3,:),'g','LineWidth',1);
% patch(circle2(1,:), circle2(2,:), circle2(3,:),'r');

% r1 = rotate(circle1,90,[XcentroCrani YcentroCrani ZcentroCrani],[0 1 0]);
% r2 = rotate(circle2,90,[XcentroCrani YcentroCrani ZcentroCrani],[0 1 0]);
% 
% plot3(r1(1,:), r1(2,:), r1(3,:),'g','LineWidth',1);
% patch(r2(1,:), r2(2,:), r2(3,:),'r');

for i=1:n
Laser_Pose(:,:,i)= INI*trotx(pi/2)*trotx(2*pi*i/n)*transl(0, 0, -radius);
end
% Laser_Pose(:,:,i)= INI*trotx(-pi/2)*troty(2*pi*i/n)*transl(0, 0, -radius);

Q= p560.ikine6s(Laser_Pose, 'run')
p560.plot(Q)