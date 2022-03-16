% Importing data
df1=readtable("https://raw.githubusercontent.com/dennisangemi/lab1-dfa/main/exp-1/experimental-data-1.csv");

% calcolo la media di t1
tm1=round(mean(df1.t1),3);

% calcolo la media di t2
tm2=round(mean(df1.t2),3);

% Importo il secondo dataset
df2=readtable("https://raw.githubusercontent.com/dennisangemi/lab1-dfa/main/exp-1/experimental-data-2.csv");

% definisco variabili
m1=df2.value(1);
m2=df2.value(2);
mc=df2.value(3);
diametro=df2.value(4);
Diametro=df2.value(5);

% definisco incertezze
dm=df2.uncertainty(1);
dd=df2.uncertainty(4);
dD=df2.uncertainty(5);
dt=df1.uncertainty(1);

% Definisco variabili
r=diametro./2;
R=Diametro./2;
dr=dd/2;
dR=dD/2;
mtot=mc+m1+m2;

% Propagazione errori su I
dI=((tm2/tm1)^2-1)*(mtot*r*dr+(3/2)*r^2*dm)+r^2*mtot*((tm2/tm1)^2)*((1/tm2)+(1/tm1))*dt;

% Posizione prima cifra significativa di I
cfr=-floor(log10(dI));

% Stampo l'errore dI con la formattazione corretta
frmt1='%.';
frmt2=num2str(cfr);
frmt3='f';
frmtd=strcat(frmt1,frmt2,frmt3);
fprintf(frmtd,round(dI,cfr))

% Calcolo I
I=0.5*mtot*r^2*((tm2/tm1)^2-1);

% Stampo I con corretto numero di cifre significative
fprintf(frmtd,round(I,cfr))

% Calcoliamo dI1
dI1=R*((R*dm/2)+m1*dR);

% Posizione prima cifra significativa
cfr1=-floor(log10(dI1));

% Stampo l'errore con la formattazione corretta
frmt2_2=num2str(cfr1);
frmtd1=strcat(frmt1,frmt2_2,frmt3);
fprintf(frmtd1,round(dI1,cfr1))

% Calcolo I' ovvero I1
I1=0.5*m1*R^2;

% Stampo I1 con le cifre significative corrette
fprintf(frmtd1,round(I1,cfr1))