M=1630.665; %Mass of vehicle      (kg)
Md=80;      %Mass of driver       (kg)
GVM=M+Md;   %Gross vehicle mass   (kg)
g=9.81;     %Gravity contant      (m/s^2)
GVW=GVM*g;  %Gross vehicle weight
A=3.8065;   % frontal area        (m^2)
rho=1.2250; %Air Density          (kg/m^3)
Rw=0.2032;  %Radius of wheel      (m)
cd=0.28;   %coefficient of drag
crf=0.015;  %coefficient of rolling re__sistance
GR=7.9377;  %Gear Ratio
Teff=0.89;  %transmission efficiency
Drive_Cycle=readmatrix('ArtemisUrbanDriveCycle-201201-182957 (1).xlsx');

%Motor
ME=readmatrix('Nissan Leaf Motor Efficiency.xls'); %motor efficiency
MRE=readmatrix('Nissan Leaf Motor Regenerative efficiency.xls'); %motor regenrative efficiency

%Motoring efficiency
ME_Speed=ME(:,1);
ME_Torque=ME(:,17);
ME_Eff=ME(:,2:16);
%surface plot of the efficiency
figure('Name','Motor Motering Efficiency')
surf(ME_Speed,ME_Torque,ME_Eff)
xlabel('motor speed (rpm)')
ylabel('motor torque (Nm)')
zlabel('motor efficiency(%)')

%regenerative efficiency
MRE_Speed=MRE(:,1);
MRE_Torque=MRE(:,17);
MRE_Eff=MRE(:,2:16);
%surface plot of the Regenerative efficiency
figure('Name','Motor Regenerative Efficiency')
surf(MRE_Speed,MRE_Torque,MRE_Eff)
xlabel('motor speed (rpm)')
ylabel('motor torque (Nm)')
zlabel('motor efficiency(%)')

%Motor Controller Efficiency
MCE=readmatrix('Nissan Leaf Motor Controller Efficiency.csv');

%Motoring efficiency
MCE_Speed=MCE(:,1);
MCE_Torque=MCE(:,17);
MCE_Eff=MCE(:,2:16);
%surface plot of the efficiency
figure('Name','Motor Controller Efficiency')
surf(MCE_Speed,MCE_Torque,MCE_Eff)
xlabel('motor speed (rpm)')
ylabel('motor torque (Nm)')
zlabel('motor efficiency(%)')

%Motor Controller Regenrative Efficiency
MCRE=readmatrix('Nissan leaf motor controller regenerative efficiency.csv');

%Motoring Regenerative efficiency
MCRE_Speed=MCRE(:,1);
MCRE_Torque=MCRE(:,17);
MCRE_Eff=MCRE(:,2:16);
%surface plot of the efficiency
figure('Name','Motor Controller Regenerative Efficiency')
surf(MCRE_Speed,MCRE_Torque,MCRE_Eff)
xlabel('motor speed (rpm)')
ylabel('motor torque (Nm)')
zlabel('motor efficiency(%)')

%Intial state of charge
ISOC=1;
