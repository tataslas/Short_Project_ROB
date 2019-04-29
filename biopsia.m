
%Zoom en la escena
camzoom(2.5)

%Inicializamos punto biopsia, en un punto del tumor cercano
puntBiopsia = coord_tumor(298,:)
Q= p560.ikine6s(puntBiopsia, 'run')
p560.plot(Q)
%Puma vuelve al inicio
ptoIni = [0.2 0 0]
Q= p560.ikine6s(ptoIni, 'run')
p560.plot(Q)