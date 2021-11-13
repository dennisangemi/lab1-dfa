# **Energia cinetica di rotazione**
## Laboratorio di Fisica 1
> 08/11/2021, Dipartimento Fisica e Astronomia - Università degli Studi di Catania 

> Dennis Angemi, Giuseppe Di Silvestre, Federica Ingrassia

## N.B

Consultare il prof. Cherubini per concordare struttura relazione

# Introduzione

lalala

# Scopo dell'esperienza

Calcolare il momento di inerzia della ruota di un carrello che si muove su una rotaia inclinata di moto rettilineo uniformemente accelerato

# Cenni teorici

Momento di inerzia lala

Configurazione 1: ruote libere

Configurazione 2: ruote bloccate

Principio di conservazione dell'energia

<img src="https://latex.codecogs.com/gif.latex?\left\lbrace&space;\begin{array}{ll}&space;m_{\textrm{tot}}&space;\;g\;h=\frac{1}{2}{\;m}_{\textrm{tot}}&space;\;v_1^2&space;&space;&&space;\\&space;m_{\textrm{tot}}&space;\;g\;h=\frac{1}{2}m_{\textrm{tot}}&space;{\;v}_2^2&space;+\frac{1}{2}\left(2I\omega^2&space;\right)&space;&&space;&space;\end{array}\right."/>

da cui

<img src="https://latex.codecogs.com/gif.latex?\frac{1}{2}{\;m}_{\textrm{tot}}&space;\;v_1^2&space;=\frac{1\;}{2}m_{\textrm{tot}}&space;\;v_2^2&space;+\frac{1}{2}\left(2I\omega^2&space;\right)"/>

dove

<img src="https://latex.codecogs.com/gif.latex?v_1&space;=\frac{2s}{\langle&space;t_1&space;\rangle&space;}"/>

<img src="https://latex.codecogs.com/gif.latex?v_2&space;=\frac{2s}{\langle&space;t_2&space;\rangle&space;}"/>

<img src="https://latex.codecogs.com/gif.latex?\omega&space;=\frac{v_2&space;}{r}"/>

<img src="https://latex.codecogs.com/gif.latex?\left\lbrace&space;\begin{array}{ll}&space;v=a\;t&space;&&space;\\&space;s=\frac{1}{2}a\;t^2&space;&space;&&space;&space;\end{array}\right."/>

<img src="https://latex.codecogs.com/gif.latex?v=\frac{2s}{t}"/>

<img src="https://latex.codecogs.com/gif.latex?I=\frac{1}{2}m_{tot}&space;r^2&space;\left\lbrack&space;{\left(\frac{\langle&space;t_2&space;\rangle&space;}{\langle&space;t_1&space;\rangle&space;}\right)}^2&space;-1\right\rbrack"/>

<img src="https://latex.codecogs.com/gif.latex?\inline&space;r"/> è il raggio della ruota piccola

<img src="https://latex.codecogs.com/gif.latex?\inline&space;R"/> è il raggio della ruota grande

# Apparato sperimentale

L'apparato sperimentale è costituito da una rotaia inclinata sulla quale bla bla

⚠️ Inserire immagine

# Strumenti di misura

Durante l'esecuazione dell'esperimento sono stati utilizzati i seguenti strumenti: (specificare sensibilità)

   -  Flessometro 
   -  Digital timer frequency meter and counter 
   -  Calibro 

  

```matlab:Code
% Importo dati sensibilità strumenti
str=readtable("https://docs.google.com/spreadsheets/d/e/2PACX-1vSC3Gk4j3Y8cfINnphnT1vhJcTuift2Doi90v9b_dOSIzSWogT87rn0idNxg6YGJPIPi07q6yoWcgeh/pub?gid=1971590321&single=true&output=csv")
```

| |strumento|sensibilita|udm|
|:--:|:--:|:--:|:--:|
|1|'Bilancia'|1.000000000000000e-0...|'Kg'|
|2|'Flessometro'|1.000000000000000e-0...|'m'|
|3|'Calibro'|5.000000000000000e-0...|'m'|
|4|'Calibro'|2.000000000000000e-0...|'m'|
|5|'Cronometro'|1.000000000000000e-0...|'s'|

```matlab:Code
% Definisco le incertezze
dm=str.sensibilita(1);
ds=str.sensibilita(2);
dd1=str.sensibilita(3);
dd2=str.sensibilita(4);
dt=str.sensibilita(5);
```

# Descrizione esperienza

lala

# Dati sperimentali ed elaborazione

L'acquisizione dei dati sperimentali avviene bla bla

```matlab:Code
%importo i dati raccolti in uno spreadsheet
%N.B Matlab indica una cifra significativa in più
tempi=readtable("https://docs.google.com/spreadsheets/d/e/2PACX-1vSC3Gk4j3Y8cfINnphnT1vhJcTuift2Doi90v9b_dOSIzSWogT87rn0idNxg6YGJPIPi07q6yoWcgeh/pub?gid=411878775&single=true&output=csv")
```

| |index|t1|t2|
|:--:|:--:|:--:|:--:|
|1|1|1.545000000000000|2.029000000000000|
|2|2|1.545000000000000|2.042000000000000|
|3|3|1.546000000000000|2.032000000000000|
|4|4|1.545000000000000|2.022000000000000|
|5|5|1.541000000000000|2.027000000000000|
|6|6|1.545000000000000|2.027000000000000|
|7|7|1.536000000000000|2.004000000000000|
|8|8|1.542000000000000|2.028000000000000|
|9|9|1.536000000000000|2.035000000000000|
|10|10|1.542000000000000|2.025000000000000|
|11|11|1.533000000000000|2.026000000000000|
|12|12|1.531000000000000|2.021000000000000|
|13|13|1.539000000000000|2.023000000000000|
|14|14|1.536000000000000|2.014000000000000|

Calcolo il tempo medio 

<img src="https://latex.codecogs.com/gif.latex?\left\langle&space;t_1&space;\right\rangle&space;=\frac{1}{20}\sum_{i=1}^{20}&space;t_{1i}"/>

<img src="https://latex.codecogs.com/gif.latex?\left\langle&space;t_2&space;\right\rangle&space;=\frac{1}{20}\sum_{i=1}^{20}&space;t_{2i}"/>

```matlab:Code
%calcolo la media di t1
tm1=round(mean(tempi.t1),3);
%fprintf('%.3f',tm1);

%calcolo la media di t2
tm2=round(mean(tempi.t2),3);
%fprintf('%.3f',tm2);

```

Altri dati sperimentali

```matlab:Code
% Importo il secondo dataset
format long;
df=readtable("https://docs.google.com/spreadsheets/d/e/2PACX-1vSC3Gk4j3Y8cfINnphnT1vhJcTuift2Doi90v9b_dOSIzSWogT87rn0idNxg6YGJPIPi07q6yoWcgeh/pub?gid=612731665&single=true&output=csv")
```

| |descrizione|valore_SI|
|:--:|:--:|:--:|
|1|'Lunghezza piano ini...|0.191000000000000|
|2|'Lunghezza piano fin...|1.221000000000000|
|3|'Massa ruota grande ...|1.120500000000000|
|4|'Massa ruota grande ...|1.123400000000000|
|5|'Massa carrello (pri...|3.887100000000000|
|6|'Altezza finale'|0.107000000000000|
|7|'Altezza iniziale'|0.210000000000000|
|8|'Diametro ruote picc...|0.049650000000000|
|9|'Diametro ruote gran...|0.098860000000000|

⚠️Rimuovere dati inutili

```matlab:Code
% Creo variabili
si=df.valore_SI(1);
sf=df.valore_SI(2);
mr1=df.valore_SI(3);
mr2=df.valore_SI(4);
mc=df.valore_SI(5);
hf=df.valore_SI(6);
hi=df.valore_SI(7);
drp=df.valore_SI(8);
drg=df.valore_SI(9);
g=9.81;
```

Calcoliamo il momento di inerzia utilizzando la relazione della conservazione dell'energia:

<img src="https://latex.codecogs.com/gif.latex?I=\frac{1}{2}m_{tot}&space;r^2&space;\left\lbrack&space;{\left(\frac{\langle&space;t_2&space;\rangle&space;}{\langle&space;t_1&space;\rangle&space;}\right)}^2&space;-1\right\rbrack"/>

dove <img src="https://latex.codecogs.com/gif.latex?\inline&space;r"/> è il raggio delle ruote piccole

```matlab:Code
% Definisco variabili necessarie
mtot=mc+mr1+mr2;
r=drp/2;

% Calcolo I
I=0.5*mtot*r^2*((tm2/tm1)^2-1);

% Stampo I con corretto numero di cifre significative
fprintf(formatted,round(I,cfr))
```

```text:Output
Unrecognized function or variable 'formatted'.
```

Conoscendo la massa e il raggio <img src="https://latex.codecogs.com/gif.latex?\inline&space;R"/> delle ruote grandi, verifico che il valore ottenuto sia accettabile stimando il momento di inerzia della ruota grande e approssimando le caratteristiche geometriche delle ruote ad un cilindro solido utilizzando la seguente relazione

<img src="https://latex.codecogs.com/gif.latex?I=\frac{mR^2&space;}{2}"/>

```matlab:Code
I1=0.5*mr1*(drg/2)^2
I2=0.5*mr2*(drg/2)^2
```

Se teniamo per buono lo scopo sopraindicato, abbiamo raccolto dei dati inutili:

   -  Altezza iniziale e finale 
   -  Spazio iniziale e finale 

# Propagazione degli errori

⚠️Da contro️llare

<img src="https://latex.codecogs.com/gif.latex?\delta&space;I=\left\lbrack&space;{\left(\frac{\left\langle&space;t_2&space;\right\rangle&space;}{\left\langle&space;t_1&space;\right\rangle&space;}\right)}^2&space;-1\right\rbrack&space;\left(m_{\textrm{tot}}&space;\;\delta&space;r+\frac{3}{2}\;r\;\delta&space;m\right)+{r\;m}_{\textrm{tot}}&space;\;{\left(\frac{\left\langle&space;t_2&space;\right\rangle&space;}{\left\langle&space;t_1&space;\right\rangle&space;}\right)}^2&space;\delta&space;t"/>

```matlab:Code
% Definisco variabili necessarie
r=drp/2;
dr1=dd1/2;

% Propagazione errori
dI=((tm2/tm1)^2-1)*(mtot*dr1+(3/2)*r*dm)+r*mtot*((tm2/tm1)^2)*dt;

% Posizione prima cifra significativa
cfr=-floor(log10(dI));

% Stampo l'errore con la formattazione corretta
frmt1='%.';
frmt2=num2str(cfr);
frmt3='f';
formatted=strcat(frmt1,frmt2,frmt3);
fprintf(formatted,round(dI,cfr))
```

# To do

   -  Propagazione degli errori 
   -  Immagine apparato sperimentale 
   -  Rimuovere dati inuilizzati 
   -  Cifre significative visualizzate nelle tabelle 
   -  Inserire link a download matlab script 

# Conclusioni

Si nota mezzo joule di attrito e bla bla bla

il risultato ottenuto risulta essere in linea con quello atteso e lala

**Risorse condivise**:

   -  Tempi [Download CSV](https://docs.google.com/spreadsheets/d/e/2PACX-1vSC3Gk4j3Y8cfINnphnT1vhJcTuift2Doi90v9b_dOSIzSWogT87rn0idNxg6YGJPIPi07q6yoWcgeh/pub?gid=411878775&single=true&output=csv) 
   -  Dati [Download CSV](https://docs.google.com/spreadsheets/d/e/2PACX-1vSC3Gk4j3Y8cfINnphnT1vhJcTuift2Doi90v9b_dOSIzSWogT87rn0idNxg6YGJPIPi07q6yoWcgeh/pub?gid=612731665&single=true&output=csv) 
   -  MATLAB script Download
