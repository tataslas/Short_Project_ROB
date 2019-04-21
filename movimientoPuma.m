
clc;
clear;
close all;

radius=0.20;
n=200;
INI = transl(-0.25, 0.25,-0.5); %center of the part

%mdl_puma560
%p560.plot(qz);
%hold on;

circle1 = circle([-0.25 0.25 -0.5], radius);
circle2 = circle([-0.25 0.25 -0.5], 0.5*radius);

plot3(circle1(1,:), circle1(2,:), circle1(3,:),'g','LineWidth',1);
patch(circle2(1,:), circle2(2,:), circle2(3,:),'r');

for i=1:n
Laser_Pose(:,:,i)= INI*trotx(-pi/2)*troty(2*pi*i/n)*transl(0, 0, -radius)
end

Q= p560.ikine6s(Laser_Pose, 'run')

p560.plot(Q)

pos0 = [0.5452,0.0000000112,-0.0210]

tor1 = [0.7369,0.2139,-0.09259]
c = [0.0001,0.0001,-0.0001]
Q= p560.ikine6s(pos0, 'run')
Q= p560.ikine6s(tor1, 'run')
p560.plot(Q)


Q= p560.ikine6s(centroCrani, 'run')
p560.plot(Q)

origen = [0.537,-0.2171,-0.22286]
Q= p560.ikine6s(origen, 'run')
p560.plot(Q)

min = min(Vc)
max = max(Vc)

[maxI,I] = max(Vc, max)



