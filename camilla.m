close all
clear


% CARGA CRANI
[Vc, Fc, Nc, Crani] = stlRead('Crani.stl');

%Escalar, mover, rotar crani
Vc = Vc/600;
Vc = Vc*rotx(pi/2);
Vc = Vc*rotz(-pi/2);
Vc(:,1) = Vc(:,1)+0.7;

%pintar crani
stlPlot(Vc, Fc, Crani)

%PUMA
mdl_puma560
%p560.tool = transl(-XcentroCrani,-YcentroCrani,-ZcentroCrani)
p560.plot(qz,'nojoints')



%HUMAN BODY
load('F_V_Human_Body.mat')
V = V/10;
V = V*rotz(-pi/2);
V(:,1) = V(:,1)+2.7;
stlPlot(V,F)


