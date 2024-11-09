
%%  motor parameter 
 
%for resistor
R_avg=(5.1/3.8+4.5/3.3+4/2.9+4.3/3.2+4.9/3.6)/5;

%for L
R_total=R_avg+1+1%R_avg+Rsense+1

V_sat1=1.34 
% V at  1 time constant 
V_1=0.63*V_sat1
tau1=174e-6;
L1=tau1*R_total;

V_sat2=2.34 
% V at  1 time constant 
V_2=0.63*V_sat2
tau2=100e-6;
L2=tau2*R_total;

V_sat3=1.74 
% V at  1 time constant 
V_3=0.63*V_sat3
tau3=160e-6;
L3=tau3*R_total;

V_sat4=2.74 
% V at  1 time constant 
V_4=0.63*V_sat4
tau4=130e-6;
L4=tau4*R_total;

V_sat5=4.74 
% V at  1 time constant 
V_5=0.63*V_sat5
tau5=100e-6;
L5=tau5*R_total;


L_avg=(L1+L2+L3+L4+L5)/5;

%% %parameter calculation
% voltage divider

% R1 ,R2,R3,R4
%used simple equal resistance divider so used 10k resistors
R1=10e3;
R2=10e3;
R3=10e3;
R4=10e3;
%% FOR DIFFERENTIAL AMPLIFIER

%R5 ,R6  
%Output should be between 0 to 3 V for Tiva
% and our voltage across rsense will be 2 V max considering that dividing
% by 2 for voltage divider so we will get +1/-1 V ,now we want to convert
% this into 0 to 3 V 

%Vout=[0,3]
%Vout=Vr+(R2/R1)*(V2-V1)  considering all resistors equal
%Vout=Vr+(V2-V1)

%For V2-V1=1V
%Vout=3 V
% so
Vout=3;
V2_V1=1;
% lower limit
Vrl=Vout-V2_V1;

Vout=-3;
V2_V1=-1;
% upper limit
Vrh=Vout-V2_V1;

% taking vr as 1.5 V

%% sallen key filter calculations
Rdc=2.58 ;
L=618e-6;
tau=L/Rdc;
f=1/tau;
% considering C=100nF
% for cutoff frequency 3.2 khz we are designing
C=100e-9;
f_taken=3.2e3;
% f=1/(2*pi*R*C)
R9=1/(2*pi*C*f_taken);





