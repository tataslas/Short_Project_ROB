
%TREPANACIO
radius=0.03;
n=200;
INI = transl(XcentroCrani, YcentroCrani,ZcentroCrani+0.05); %center of the part

%Circulo por donde hace la trepanació
cTrepanacio = circle([0 0 0], radius)
cTrepanacio(4,:) = 1; 
RYtrepanacio =  transl(XcentroCrani,YcentroCrani,ZcentroCrani+0.05)*troty(90, 'deg')
cTrepanacio = RYtrepanacio*cTrepanacio;
cTrepanacio = cTrepanacio(1:3,:);
plot3(cTrepanacio(1,:), cTrepanacio(2,:), cTrepanacio(3,:),'r','LineWidth',1);

for i=1:n
    Laser_Pose(:,:,i)= INI*trotx(pi/2)*trotx(2*pi*i/n)*transl(0, 0, -radius);
end

Q= p560.ikine6s(Laser_Pose, 'run')
p560.plot(Q)