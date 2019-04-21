
[Vc, Fc, Nc, Crani] = stlRead('Crani.stl');
%STLREAD reads any STL file not depending on its format
%V are the vertices
%F are the faces
%N are the normals
%NAME is the name of the STL object (NOT the name of the STL file)

% format = stlGetFormat(fileName);
% if strcmp(format,'ascii')
%   [Vc,Fc,Nc,Crani] = stlReadAscii(fileName);
% elseif strcmp(format,'binary')
%   [Vc,Fc,Nc,Crani] = stlReadBinary(fileName);
% end