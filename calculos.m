% -------------------------------------------------------------------
%  Generated by MATLAB on 21-Apr-2019 13:28:21
%  MATLAB version: 9.1.0.441655 (R2016b)
% -------------------------------------------------------------------
saveVarsMat = load('calculos.mat');

C = 0.5;

Crani = '3D Slicer output. SPACE=LPS';

F = saveVarsMat.F; % <48918x3 double> too many elements

Fc = saveVarsMat.Fc; % <1667632x3 double> too many elements

N = saveVarsMat.N; % <24460x3 double> too many elements

NF = saveVarsMat.NF; % <48918x3 double> too many elements

Nc = saveVarsMat.Nc; % <1667632x3 double> too many elements

Q = [-0.12215147679011978 0.42116089679167251 3.1600074221095173 2.7409694164568816E-16 ...
     2.7020169882783964 0.12215147679012006];

TF = saveVarsMat.TF; % <48918x3 double> too many elements

UV = saveVarsMat.UV; % <0x3 double> empty object

V = saveVarsMat.V; % <24461x3 double> too many elements

Vc = saveVarsMat.Vc; % <833040x3 double> too many elements

X_ma = [0.19999999999999996 0.7 0.7 0.19999999999999996];

Xp1 = ...
  [0.3 0.285316954888546 0.24270509831248421 0.17633557568774194 0.092705098312484233 ...
   1.8369701987210297E-17 -0.0927050983124842 -0.17633557568774191 -0.24270509831248419 ...
   -0.285316954888546 -0.3 -0.285316954888546 -0.24270509831248421 -0.17633557568774197 ...
   -0.09270509831248426 -5.5109105961630889E-17 0.092705098312484163 0.17633557568774186 ...
   0.24270509831248419 0.285316954888546 0.3;
   0.3 0.285316954888546 0.24270509831248421 0.17633557568774194 0.092705098312484233 ...
   1.8369701987210297E-17 -0.0927050983124842 -0.17633557568774191 -0.24270509831248419 ...
   -0.285316954888546 -0.3 -0.285316954888546 -0.24270509831248421 -0.17633557568774197 ...
   -0.09270509831248426 -5.5109105961630889E-17 0.092705098312484163 0.17633557568774186 ...
   0.24270509831248419 0.285316954888546 0.3];

Xp2 = ...
  [0.3 0.285316954888546 0.24270509831248421 0.17633557568774194 0.092705098312484233 ...
   1.8369701987210297E-17 -0.0927050983124842 -0.17633557568774191 -0.24270509831248419 ...
   -0.285316954888546 -0.3 -0.285316954888546 -0.24270509831248421 -0.17633557568774197 ...
   -0.09270509831248426 -5.5109105961630889E-17 0.092705098312484163 0.17633557568774186 ...
   0.24270509831248419 0.285316954888546 0.3;
   0.3 0.285316954888546 0.24270509831248421 0.17633557568774194 0.092705098312484233 ...
   1.8369701987210297E-17 -0.0927050983124842 -0.17633557568774191 -0.24270509831248419 ...
   -0.285316954888546 -0.3 -0.285316954888546 -0.24270509831248421 -0.17633557568774197 ...
   -0.09270509831248426 -5.5109105961630889E-17 0.092705098312484163 0.17633557568774186 ...
   0.24270509831248419 0.285316954888546 0.3];

Xp3 = ...
  [0.3 0.285316954888546 0.24270509831248421 0.17633557568774194 0.092705098312484233 ...
   1.8369701987210297E-17 -0.0927050983124842 -0.17633557568774191 -0.24270509831248419 ...
   -0.285316954888546 -0.3 -0.285316954888546 -0.24270509831248421 -0.17633557568774197 ...
   -0.09270509831248426 -5.5109105961630889E-17 0.092705098312484163 0.17633557568774186 ...
   0.24270509831248419 0.285316954888546 0.3;
   0.3 0.285316954888546 0.24270509831248421 0.17633557568774194 0.092705098312484233 ...
   1.8369701987210297E-17 -0.0927050983124842 -0.17633557568774191 -0.24270509831248419 ...
   -0.285316954888546 -0.3 -0.285316954888546 -0.24270509831248421 -0.17633557568774197 ...
   -0.09270509831248426 -5.5109105961630889E-17 0.092705098312484163 0.17633557568774186 ...
   0.24270509831248419 0.285316954888546 0.3];

Xp4 = ...
  [0.3 0.285316954888546 0.24270509831248421 0.17633557568774194 0.092705098312484233 ...
   1.8369701987210297E-17 -0.0927050983124842 -0.17633557568774191 -0.24270509831248419 ...
   -0.285316954888546 -0.3 -0.285316954888546 -0.24270509831248421 -0.17633557568774197 ...
   -0.09270509831248426 -5.5109105961630889E-17 0.092705098312484163 0.17633557568774186 ...
   0.24270509831248419 0.285316954888546 0.3;
   0.3 0.285316954888546 0.24270509831248421 0.17633557568774194 0.092705098312484233 ...
   1.8369701987210297E-17 -0.0927050983124842 -0.17633557568774191 -0.24270509831248419 ...
   -0.285316954888546 -0.3 -0.285316954888546 -0.24270509831248421 -0.17633557568774197 ...
   -0.09270509831248426 -5.5109105961630889E-17 0.092705098312484163 0.17633557568774186 ...
   0.24270509831248419 0.285316954888546 0.3];

Xpa1 = ...
  [0.3 0.285316954888546 0.24270509831248421 0.17633557568774194 0.092705098312484233 ...
   1.8369701987210297E-17 -0.0927050983124842 -0.17633557568774191 -0.24270509831248419 ...
   -0.285316954888546 -0.3 -0.285316954888546 -0.24270509831248421 -0.17633557568774197 ...
   -0.09270509831248426 -5.5109105961630889E-17 0.092705098312484163 0.17633557568774186 ...
   0.24270509831248419 0.285316954888546 0.3;
   0.3 0.285316954888546 0.24270509831248421 0.17633557568774194 0.092705098312484233 ...
   1.8369701987210297E-17 -0.0927050983124842 -0.17633557568774191 -0.24270509831248419 ...
   -0.285316954888546 -0.3 -0.285316954888546 -0.24270509831248421 -0.17633557568774197 ...
   -0.09270509831248426 -5.5109105961630889E-17 0.092705098312484163 0.17633557568774186 ...
   0.24270509831248419 0.285316954888546 0.3];

Xpa2 = ...
  [0.3 0.285316954888546 0.24270509831248421 0.17633557568774194 0.092705098312484233 ...
   1.8369701987210297E-17 -0.0927050983124842 -0.17633557568774191 -0.24270509831248419 ...
   -0.285316954888546 -0.3 -0.285316954888546 -0.24270509831248421 -0.17633557568774197 ...
   -0.09270509831248426 -5.5109105961630889E-17 0.092705098312484163 0.17633557568774186 ...
   0.24270509831248419 0.285316954888546 0.3;
   0.3 0.285316954888546 0.24270509831248421 0.17633557568774194 0.092705098312484233 ...
   1.8369701987210297E-17 -0.0927050983124842 -0.17633557568774191 -0.24270509831248419 ...
   -0.285316954888546 -0.3 -0.285316954888546 -0.24270509831248421 -0.17633557568774197 ...
   -0.09270509831248426 -5.5109105961630889E-17 0.092705098312484163 0.17633557568774186 ...
   0.24270509831248419 0.285316954888546 0.3];

Xpa3 = ...
  [0.3 0.285316954888546 0.24270509831248421 0.17633557568774194 0.092705098312484233 ...
   1.8369701987210297E-17 -0.0927050983124842 -0.17633557568774191 -0.24270509831248419 ...
   -0.285316954888546 -0.3 -0.285316954888546 -0.24270509831248421 -0.17633557568774197 ...
   -0.09270509831248426 -5.5109105961630889E-17 0.092705098312484163 0.17633557568774186 ...
   0.24270509831248419 0.285316954888546 0.3;
   0.3 0.285316954888546 0.24270509831248421 0.17633557568774194 0.092705098312484233 ...
   1.8369701987210297E-17 -0.0927050983124842 -0.17633557568774191 -0.24270509831248419 ...
   -0.285316954888546 -0.3 -0.285316954888546 -0.24270509831248421 -0.17633557568774197 ...
   -0.09270509831248426 -5.5109105961630889E-17 0.092705098312484163 0.17633557568774186 ...
   0.24270509831248419 0.285316954888546 0.3];

Xpa4 = ...
  [0.3 0.285316954888546 0.24270509831248421 0.17633557568774194 0.092705098312484233 ...
   1.8369701987210297E-17 -0.0927050983124842 -0.17633557568774191 -0.24270509831248419 ...
   -0.285316954888546 -0.3 -0.285316954888546 -0.24270509831248421 -0.17633557568774197 ...
   -0.09270509831248426 -5.5109105961630889E-17 0.092705098312484163 0.17633557568774186 ...
   0.24270509831248419 0.285316954888546 0.3;
   0.3 0.285316954888546 0.24270509831248421 0.17633557568774194 0.092705098312484233 ...
   1.8369701987210297E-17 -0.0927050983124842 -0.17633557568774191 -0.24270509831248419 ...
   -0.285316954888546 -0.3 -0.285316954888546 -0.24270509831248421 -0.17633557568774197 ...
   -0.09270509831248426 -5.5109105961630889E-17 0.092705098312484163 0.17633557568774186 ...
   0.24270509831248419 0.285316954888546 0.3];

Y_ma = [0.79999999999999982 0.79999999999999982 1.2999999999999998 1.2999999999999998 ...
        ];

Yp1 = ...
  [0 0.092705098312484219 0.17633557568774194 0.24270509831248421 0.285316954888546 ...
   0.3 0.28531695488854608 0.24270509831248421 0.17633557568774197 0.092705098312484246 ...
   3.6739403974420595E-17 -0.092705098312484316 -0.17633557568774191 -0.24270509831248419 ...
   -0.285316954888546 -0.3 -0.28531695488854608 -0.24270509831248427 -0.176335575687742 ...
   -0.092705098312484288 0;
   0 0.092705098312484219 0.17633557568774194 0.24270509831248421 0.285316954888546 ...
   0.3 0.28531695488854608 0.24270509831248421 0.17633557568774197 0.092705098312484246 ...
   3.6739403974420595E-17 -0.092705098312484316 -0.17633557568774191 -0.24270509831248419 ...
   -0.285316954888546 -0.3 -0.28531695488854608 -0.24270509831248427 -0.176335575687742 ...
   -0.092705098312484288 0];

Yp2 = ...
  [0 0.092705098312484219 0.17633557568774194 0.24270509831248421 0.285316954888546 ...
   0.3 0.28531695488854608 0.24270509831248421 0.17633557568774197 0.092705098312484246 ...
   3.6739403974420595E-17 -0.092705098312484316 -0.17633557568774191 -0.24270509831248419 ...
   -0.285316954888546 -0.3 -0.28531695488854608 -0.24270509831248427 -0.176335575687742 ...
   -0.092705098312484288 0;
   0 0.092705098312484219 0.17633557568774194 0.24270509831248421 0.285316954888546 ...
   0.3 0.28531695488854608 0.24270509831248421 0.17633557568774197 0.092705098312484246 ...
   3.6739403974420595E-17 -0.092705098312484316 -0.17633557568774191 -0.24270509831248419 ...
   -0.285316954888546 -0.3 -0.28531695488854608 -0.24270509831248427 -0.176335575687742 ...
   -0.092705098312484288 0];

Yp3 = ...
  [0 0.092705098312484219 0.17633557568774194 0.24270509831248421 0.285316954888546 ...
   0.3 0.28531695488854608 0.24270509831248421 0.17633557568774197 0.092705098312484246 ...
   3.6739403974420595E-17 -0.092705098312484316 -0.17633557568774191 -0.24270509831248419 ...
   -0.285316954888546 -0.3 -0.28531695488854608 -0.24270509831248427 -0.176335575687742 ...
   -0.092705098312484288 0;
   0 0.092705098312484219 0.17633557568774194 0.24270509831248421 0.285316954888546 ...
   0.3 0.28531695488854608 0.24270509831248421 0.17633557568774197 0.092705098312484246 ...
   3.6739403974420595E-17 -0.092705098312484316 -0.17633557568774191 -0.24270509831248419 ...
   -0.285316954888546 -0.3 -0.28531695488854608 -0.24270509831248427 -0.176335575687742 ...
   -0.092705098312484288 0];

Yp4 = ...
  [0 0.092705098312484219 0.17633557568774194 0.24270509831248421 0.285316954888546 ...
   0.3 0.28531695488854608 0.24270509831248421 0.17633557568774197 0.092705098312484246 ...
   3.6739403974420595E-17 -0.092705098312484316 -0.17633557568774191 -0.24270509831248419 ...
   -0.285316954888546 -0.3 -0.28531695488854608 -0.24270509831248427 -0.176335575687742 ...
   -0.092705098312484288 0;
   0 0.092705098312484219 0.17633557568774194 0.24270509831248421 0.285316954888546 ...
   0.3 0.28531695488854608 0.24270509831248421 0.17633557568774197 0.092705098312484246 ...
   3.6739403974420595E-17 -0.092705098312484316 -0.17633557568774191 -0.24270509831248419 ...
   -0.285316954888546 -0.3 -0.28531695488854608 -0.24270509831248427 -0.176335575687742 ...
   -0.092705098312484288 0];

Ypa1 = ...
  [0 0.092705098312484219 0.17633557568774194 0.24270509831248421 0.285316954888546 ...
   0.3 0.28531695488854608 0.24270509831248421 0.17633557568774197 0.092705098312484246 ...
   3.6739403974420595E-17 -0.092705098312484316 -0.17633557568774191 -0.24270509831248419 ...
   -0.285316954888546 -0.3 -0.28531695488854608 -0.24270509831248427 -0.176335575687742 ...
   -0.092705098312484288 0;
   0 0.092705098312484219 0.17633557568774194 0.24270509831248421 0.285316954888546 ...
   0.3 0.28531695488854608 0.24270509831248421 0.17633557568774197 0.092705098312484246 ...
   3.6739403974420595E-17 -0.092705098312484316 -0.17633557568774191 -0.24270509831248419 ...
   -0.285316954888546 -0.3 -0.28531695488854608 -0.24270509831248427 -0.176335575687742 ...
   -0.092705098312484288 0];

Ypa2 = ...
  [0 0.092705098312484219 0.17633557568774194 0.24270509831248421 0.285316954888546 ...
   0.3 0.28531695488854608 0.24270509831248421 0.17633557568774197 0.092705098312484246 ...
   3.6739403974420595E-17 -0.092705098312484316 -0.17633557568774191 -0.24270509831248419 ...
   -0.285316954888546 -0.3 -0.28531695488854608 -0.24270509831248427 -0.176335575687742 ...
   -0.092705098312484288 0;
   0 0.092705098312484219 0.17633557568774194 0.24270509831248421 0.285316954888546 ...
   0.3 0.28531695488854608 0.24270509831248421 0.17633557568774197 0.092705098312484246 ...
   3.6739403974420595E-17 -0.092705098312484316 -0.17633557568774191 -0.24270509831248419 ...
   -0.285316954888546 -0.3 -0.28531695488854608 -0.24270509831248427 -0.176335575687742 ...
   -0.092705098312484288 0];

Ypa3 = ...
  [0 0.092705098312484219 0.17633557568774194 0.24270509831248421 0.285316954888546 ...
   0.3 0.28531695488854608 0.24270509831248421 0.17633557568774197 0.092705098312484246 ...
   3.6739403974420595E-17 -0.092705098312484316 -0.17633557568774191 -0.24270509831248419 ...
   -0.285316954888546 -0.3 -0.28531695488854608 -0.24270509831248427 -0.176335575687742 ...
   -0.092705098312484288 0;
   0 0.092705098312484219 0.17633557568774194 0.24270509831248421 0.285316954888546 ...
   0.3 0.28531695488854608 0.24270509831248421 0.17633557568774197 0.092705098312484246 ...
   3.6739403974420595E-17 -0.092705098312484316 -0.17633557568774191 -0.24270509831248419 ...
   -0.285316954888546 -0.3 -0.28531695488854608 -0.24270509831248427 -0.176335575687742 ...
   -0.092705098312484288 0];

Ypa4 = ...
  [0 0.092705098312484219 0.17633557568774194 0.24270509831248421 0.285316954888546 ...
   0.3 0.28531695488854608 0.24270509831248421 0.17633557568774197 0.092705098312484246 ...
   3.6739403974420595E-17 -0.092705098312484316 -0.17633557568774191 -0.24270509831248419 ...
   -0.285316954888546 -0.3 -0.28531695488854608 -0.24270509831248427 -0.176335575687742 ...
   -0.092705098312484288 0;
   0 0.092705098312484219 0.17633557568774194 0.24270509831248421 0.285316954888546 ...
   0.3 0.28531695488854608 0.24270509831248421 0.17633557568774197 0.092705098312484246 ...
   3.6739403974420595E-17 -0.092705098312484316 -0.17633557568774191 -0.24270509831248419 ...
   -0.285316954888546 -0.3 -0.28531695488854608 -0.24270509831248427 -0.176335575687742 ...
   -0.092705098312484288 0];

Z_ma = [-0.2 -0.2 -0.2 -0.2];

Zp1 = ...
  [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
   5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5];

Zp2 = ...
  [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
   5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5];

Zp3 = ...
  [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
   5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5];

Zp4 = ...
  [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
   5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5];

Zpa1 = ...
  [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
   5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5];

Zpa2 = ...
  [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
   5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5];

Zpa3 = ...
  [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
   5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5];

Zpa4 = ...
  [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
   5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5];

centro = [0.537 -0.0131 0.02855];

deg = 0.017453292519943295;

desplz_x = 1.5;

desplz_y = 1.5;

origen = [0.537 -0.2171 -0.22286];

p560 = saveVarsMat.p560; % <1x1 SerialLink> unsupported class

qn = [0 0.78539816339744828 3.1415926535897931 0 0.78539816339744828 0];

qr = [0 1.5707963267948966 -1.5707963267948966 0 0 0];

qs = [0 0 -1.5707963267948966 0 0 0];

qz = [0 0 0 0 0 0];

taula = ...
  [2.7 -0.6 -0.2;
   2.7 0.6 -0.2;
   0.63000000000000034 0.6 -0.2;
   0.63000000000000034 -0.6 -0.2];

clear saveVarsMat;
