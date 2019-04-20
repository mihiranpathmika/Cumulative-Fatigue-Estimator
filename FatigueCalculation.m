clc
y = StressVsTime(:,2);% Stress Fluctuation

pks = findpeaks(abs(y)); % Determination of peak stress values

L1 = min(pks);
L2 = 1*max(pks)/10;
L3 = 2*max(pks)/10;
L4 = 3*max(pks)/10;
L5 = 4*max(pks)/10;
L6 = 5*max(pks)/10;
L7 = 6*max(pks)/10;
L8 = 7*max(pks)/10;
L9 = 8*max(pks)/10;
L10 = 9*max(pks)/10;
L11 = 10*max(pks)/10;

%%
% Determination of number of cycles in the stress range 1 (i.e. NStress_1)
u=1;
v=size(pks);

Nsigma_1=0; %number of cycles with sigma_1 stress
 for i=u:1:v
   if abs(y(i,:))>L1 && abs(y(i,:))< L2
        Nsigma_1=Nsigma_1+1;
   else
       Nsigma_1=Nsigma_1+0;
   end
 end

 Nsigma_1;
 
%%
% Determination of number of cycles in the stress range 1 (i.e. NStress_2)
u=1;
v=size(y,1);

Nsigma_2=0; %number of cycles with sigma_2 stress
 for i=u:1:v
   if abs(y(i,:))>L2 && abs(y(i,:))< L3
        Nsigma_2=Nsigma_2+1;
   else
       Nsigma_2=Nsigma_2+0;
   end
 end

 Nsigma_2;
 
 %%
% Determination of number of cycles in the stress range 1 (i.e. NStress_3)
u=1;
v=size(y,1);

Nsigma_3=0; %number of cycles with sigma_3 stress
 for i=u:1:v
   if abs(y(i,:))>L3 && abs(y(i,:))< L4
        Nsigma_3=Nsigma_3+1;
   else
       Nsigma_3=Nsigma_3+0;
   end
 end

 Nsigma_3;
 
 %%
% Determination of number of cycles in the stress range 1 (i.e. NStress_4)
u=1;
v=size(y,1);

Nsigma_4=0; %number of cycles with sigma_4 stress
 for i=u:1:v
   if abs(y(i,:))>L4 && abs(y(i,:))< L5
        Nsigma_4=Nsigma_4+1;
   else
       Nsigma_4=Nsigma_4+0;
   end
 end

 Nsigma_4;
 
 %%
% Determination of number of cycles in the stress range 1 (i.e. NStress_5)
u=1;
v=size(y,1);

Nsigma_5=0; %number of cycles with sigma_5 stress
 for i=u:1:v
   if abs(y(i,:))>L5 && abs(y(i,:))< L6
        Nsigma_5=Nsigma_5+1;
   else
       Nsigma_5=Nsigma_5+0;
   end
 end

 Nsigma_5;
 
 %%
% Determination of number of cycles in the stress range 1 (i.e. NStress_6)
u=1;
v=size(y,1);

Nsigma_6=0; %number of cycles with sigma_6 stress
 for i=u:1:v
   if abs(y(i,:))>L6 && abs(y(i,:))< L7
        Nsigma_6=Nsigma_6+1;
   else
       Nsigma_6=Nsigma_6+0;
   end
 end

 Nsigma_6;
 
 %%
% Determination of number of cycles in the stress range 1 (i.e. NStress_7)
u=1;
v=size(y,1);

Nsigma_7=0; %number of cycles with sigma_7 stress
 for i=u:1:v
   if abs(y(i,:))>L7 && abs(y(i,:))< L8
        Nsigma_7=Nsigma_7+1;
   else
       Nsigma_7=Nsigma_7+0;
   end
 end

 Nsigma_7;
 
 %%
% Determination of number of cycles in the stress range 1 (i.e. NStress_8)
u=1;
v=size(y,1);

Nsigma_8=0; %number of cycles with sigma_8 stress
 for i=u:1:v
   if abs(y(i,:))>L8 && abs(y(i,:))< L9
        Nsigma_8=Nsigma_8+1;
   else
       Nsigma_8=Nsigma_8+0;
   end
 end

 Nsigma_8;
 
 %%
% Determination of number of cycles in the stress range 1 (i.e. NStress_9)
u=1;
v=size(y,1);

Nsigma_9=0; %number of cycles with sigma_9 stress
 for i=u:1:v
   if abs(y(i,:))>L9 && abs(y(i,:))< L10
        Nsigma_9=Nsigma_9+1;
   else
       Nsigma_9=Nsigma_9+0;
   end
 end

 Nsigma_9;
 
 %%
% Determination of number of cycles in the stress range 1 (i.e. NStress_10)
u=1;
v=size(y,1);

Nsigma_10=0; %number of cycles with sigma_10 stress
 for i=u:1:v
   if abs(y(i,:))>L10 && abs(y(i,:))< L11
        Nsigma_10=Nsigma_10+1;
   else
       Nsigma_10=Nsigma_10+0;
   end
 end

 Nsigma_10;

%%
Cycles = 1/2*[Nsigma_1, Nsigma_2, Nsigma_3, Nsigma_4, Nsigma_5, Nsigma_6, Nsigma_7, Nsigma_8, Nsigma_9, Nsigma_10] % Devided by 2 to make a full cycle.

%%

%N1 = 1.05E3;    N2 = 1.15E3; N3 = 1.35E3;    N4 = 1.85E3; N5 = 1.05E4;    N6 = 1.2E4; N7 = 1.7E4; N8 = 1.05E5; N9 = 1.2E5; N10 = 1.0E6; N11 = inf;

%%%%%%%%%Enter the number of cycles (Ni)here for the corresponding stress range
    N1 = 1.2E5;
    N2 = 1.0E6;
    N3 = inf;
    N4 = inf;
    N5 = inf;
    N6 = inf;
    N7 = inf;
    N8 = inf;
    N9 = inf;
    N10 = inf;
    N11 = inf;

%%
% Accumulated fatigue (AF)
disp ('STEP_01: From SN Curve, Enter the corresponding values for N1 to N11 for (L1+L2/2) to (L9+L10/2) @(Line 187 to 197)')
disp ('STEP_02: Then enter the future predicted Stress Level @(Line 212)')

AF = Cycles(:,1)/N10 + Cycles(:,2)/N9 + Cycles(:,3)/N8 + Cycles(:,4)/N7 + Cycles(:,5)/N6 + Cycles(:,6)/N5 + Cycles(:,7)/N4 +Cycles(:,8)/N3 + Cycles(:,9)/N2 + Cycles(:,10)/N1;
disp ('Remaining n/Ni');
R = 1-AF; % Remaining n/Ni

%%
%%%%%%%%%Enter the future predicted stress value here to get the remaining cycles before failure

%RemainingNumberofCycles = R*Ni for the corresponding future stress level
disp ('Remaining Number of Cycles for the current inputs:')
RemainingCycles = R*1E5 % Assuming the future stress level is 200 MPa. Value taken from SN curve




    

