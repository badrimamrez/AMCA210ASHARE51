clc;
clear;
close all;
data = xlsread('TestData.xlsx') ;
%chamber specifics
s = data(18,1) ; %number of nozzles in test
D6 = zeros(1,s) ; %Nozzles' discharge diameter
A6 = zeros(1,s) ; %Nozzles' discharge area
for i=1:s
    D6(1,i) = data(i,6) ; %Nozzles' discharge diameter
    A6(1,i) = data(i,8) ; %Nozzles' discharge area
end
D5 = data(21,1) ; %Chamber equivalent diameter
A2 = data(23,1) ; %fan oulet area ;
%test data to be recorded - table3
Pb = data(1,1) ; %Barometric Pressure / ambient (Pa)
N = data(2,1) ; %Rotational Speed (rpm)
F = data(3,1) ; %Beam Load (N)
arm = data(4,1) ; %Moment arm (I)
T = data(5,1) ; %Torque (N.m)
W = data(6,1) ; %Input Power to Motor (W)
motorefficiency = data(7,1)/100 ; %Test drive motor efficiency
Ps5 = data(8,1) ; %Static Pressure @ Plane 5 (nozzle inlet station in chamber) (Pa)
Ps7 = data(9,1) ; %Static Pressure @ Plane 7 (outlet chamber measurement station) (Pa)
td0 = data(10,1) ; %Dry-bulb Temperature @ Plane 0 (general test area / ambient) (°C)
tw0 = data(11,1) ; %Wet-bulb Temperature @ Plane 0 (general test area / ambient) (°C)
td2 = data(12,1) ; %Dry-bulb Temperature @ Plane 2 (fan outlet) (°C)
td5 = data(13,1) ; %Dry-bulb Temperature @ Plane 5 (nozzle inlet station in chamber) (°C)
DP = data(14,1) ; %Pressure differential across flow nozzles (Pa)
%air properties
R = 287.1 ; %Gas constant for air (J/Kg.K)
g = 1.4 ; %Ratio of specific heats (dimensionless)
viscos = (17.23 + 0.048*td0)/1000000 ; %Eq.7.6 dynamic air viscosity (Pa.s)
%density calculations
Pe = 3.25*(tw0)^2 + 18.6*tw0 + 692 ; %Eq.7.1 for 4°C < tw0 < 32°C (40F < tw0 < 90F)
Pp = Pe - Pb*((td0-tw0)/1500) ; %Eq.7.2
Ro0 = (Pb-0.378*Pp)/(R*(td0+273.15)) ; %Eq.7.3 Atmospheric air density
Ro5 = Ro0 * ((td0+273.15)/(td5+273.15)) * ((Ps5+Pb)/Pb) ; %Eq.7.4 Chamber air density
Ro = Ro0 ; %Eq.7.5 Fan air density
%flow calculations
Alpha = 1 - ((DP) / (Ro5*R*(td5+273.15))) ; %Eq.7.12 Alpha ratio
Beta = zeros(1,s) ; %Beta rato
Y = zeros(1,s) ; %Expansion facto
E = 1 ; % 7.3.2.4 Energy factor for chamber approach
Re = zeros(1,s) ; %Reynolds number
C = zeros(1,s) ; %Nozzle discharge coefficient
Q5 = 0 ; %Airflow rate @ Plane 5 (nozzle inlet station in chamber)
for i=1:s
    Beta(1,i) = D6(1,i) / D5 ; %Eq.7.13 Beta ratio
    Y(1,i) = sqrt( (g/(g-1)) * (Alpha^(2/g)) * ((1-(Alpha^((g-1)/g)))/(1-Alpha)) * ((1-(Beta(1,i)^4))/(1-(Beta(1,i)^4 * Alpha^(2/g)))) ) ; %Eq.7.14 Expansion factor
    Ce = zeros (1,100) ; %Estimated discharge coefficient
    Ce(1,1) = 0.99 ; %Estimated discharge coefficient
    check = 1 ;
    j = 0 ;
    while check>0.001 %AnnexG.1 Iterative procedure to obtain the value of C and Re
        j = j+1 ;
        Re(1,i) = sqrt(2) * Ce(1,j) * D6(1,i) * Y(1,i) * sqrt((DP*Ro5)/(1-E*Beta(1,i)^4)) / viscos ; %Eq.7.18 Reynolds number
        Ce(1,j+1) = 0.9986 - (7.006/sqrt(Re(1,i))) + (134.6/Re(1,i)) ; %Eq.7.19 Discharge coefficient for L/D=0.6
        check = abs(Ce(1,j+1) - Ce(1,j)) ;
    end
    C(1,i) = Ce(1,j+1) ; % 7.3.2.6 Discharge coefficient for L/D=0.6
    Q5 = Q5 + Y(1,i) * sqrt((2*DP)/Ro5) * C(1,i) * A6(1,i) ;  %Eq.7.22 Airflow rate for chamber nozzles
end
Q = Q5 * (Ro5/Ro) ; %Eq.7.23 Fan airflow rate
V2 = (Q/A2)*(Ro/Ro0) ; %Eq.7.25 and Eq.7.26 Fan outlet velocity
Pv2 = V2^2 * Ro0 / 2 ; %Eq.7.27 Velocity Pressure @ Plane 2 (Fan Outlet)
Pv = Pv2 ; %Fan Velocity Pressure
Pt1 = 0 ; %Eq.7.38 Total Pressure @ Plane 1 (Fan Open Inlet)
Pt2 = Ps7 + Pv ; %Eq.7.42 Total Pressure @ Plane 2 (Fan Outlet Chamber)
Pt = Pt2 - Pt1 ; %Eq.7.48 Fan Total Pressure
Ps = Pt - Pv ; %Eq.7.49 Fan Static Pressure
if W~=0
    H = W * motorefficiency ; %Eq.7.52 Fan power input by calibrated motor
elseif T~=0
    H = 2*pi*T*N / 60 ; %Eq.7.51 Fan power input by torsion element
elseif F~=0
    H = 2*pi*F*arm*N / 60 ; %Eq.7.50 Fan power input by reaction dynamometer
end
x = Pt / (Pt1 + Pb) ; %Eq.7.54 Compressibility Factor
z = ((g-1)/g) * ((H/Q)/(Pt1+Pb)) ; %Eq.7.55 Compressibility Factor
Kp = (log(1+x)/x)*(z/log(1+z)) ; %Eq.7.56 Compressibility Factor
Ho = Q * Pt * Kp ; %Eq.7.53 Fan Power Output
Fan_total_eff = Ho / H ; %Eq.7.57 Fan Total Efficiency
Fan_static_eff = Fan_total_eff * (Ps/Pt) ; %Eq.7.58 Fan Static Efficiency
% 7.9.3 conversion formulae for new densities andnew rotational speeds
% Qc = Q * (Nc/N) * (Kp/Kpc) ; %Eq.7.59
% Ptc = Pt * (Nc/N)^2 * (Roc/Ro) * (Kp/Kpc) ; %Eq.7.60
% Pvc = Pv * (Nc/N)^2 * (Roc/Ro) ; %Eq.7.61
% Psc = Ptc - Pvc ; %Eq.7.62
% Hc = H * (Nc/N)^3 * (Roc/Ro) * (Kp/Kpc) ; %Eq.7.63
% Fan_total_eff_c = Fan_total_eff ; %Eq.7.64
% Fan_static_eff_c = Fan_total_eff_c * (Psc/Ptc) ; %Eq.7.65