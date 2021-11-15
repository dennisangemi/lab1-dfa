# **Energia cinetica di rotazione**
## Laboratorio di Fisica 1
> 08/11/2021, Dipartimento Fisica e Astronomia - Università degli Studi di Catania 

> Federica Ingrassia, Giuseppe Di Silvestre, Dennis Angemi

## Table of contents:

   -  Introduzione e scopo 
   -  Cenni teorici 
   -  Apparato sperimentale e descrizione esperienza 
   -  Strumenti di misura 
   -  Dati sperimentali ed elaborazione 
   -  Conclusione 

## Introduzione e scopo

Calcolare il momento di inerzia della ruota di un carrello metallico che si muove di moto rettilineo uniformemente accelerato su una rotaia inclinata sfruttando il principio di conservazione dell'energia.

## Cenni teorici

Il momento di inerzia nel caso di un punto materiale è definito come il prodotto della massa per il quadrato della distanza del punto dell'asse di rotazione. Il momento di inerzia <img src="https://latex.codecogs.com/gif.latex?\inline&space;I"/> di un corpo dipende dalla geometria di quest'ultimo per tanto approssimiamo la geometria di una ruota ad un parallelipedo solido di massa <img src="https://latex.codecogs.com/gif.latex?\inline&space;m\;"/>e raggio <img src="https://latex.codecogs.com/gif.latex?\inline&space;R"/>. Noi otterremo tale valore sfruttando il principio di conservazione dell'energia e lo confronteremo al valore ottenuto considerando le caratteristiche geometriche della ruota (cilindro).

<img src="https://latex.codecogs.com/gif.latex?\left\lbrace&space;\begin{array}{ll}&space;m_{\textrm{tot}}&space;\;g\;h=\frac{1}{2}{\;m}_{\textrm{tot}}&space;\;v_1^2&space;&space;&&space;\\&space;m_{\textrm{tot}}&space;\;g\;h=\frac{1}{2}m_{\textrm{tot}}&space;{\;v}_2^2&space;+\frac{1}{2}\left(2I\omega^2&space;\right)&space;&&space;&space;\end{array}\right."/>

dove:

   \item{ <img src="https://latex.codecogs.com/gif.latex?\inline&space;v_1&space;=\frac{2s}{\langle&space;t_1&space;\rangle&space;}"/> è la velocità finale del carrello al quale sono vincolate due ruote aggiuntive di massa <img src="https://latex.codecogs.com/gif.latex?\inline&space;m_1"/>e <img src="https://latex.codecogs.com/gif.latex?\inline&space;m_2"/> (che considereremo uguali e di massa <img src="https://latex.codecogs.com/gif.latex?\inline&space;m"/>) libere in modo tale che non ruotino; }
   \item{ <img src="https://latex.codecogs.com/gif.latex?\inline&space;v_2&space;=\frac{2s}{\langle&space;t_2&space;\rangle&space;}"/> è la velocità finale del carrello al quale sono oppurtunamente vincolate due ruote di massa <img src="https://latex.codecogs.com/gif.latex?\inline&space;m"/> bloccate in modo tale che **ruotino solidalmente** alle ruote piccole; }
   \item{ <img src="https://latex.codecogs.com/gif.latex?\inline&space;\omega&space;=\frac{v_2&space;}{r}"/> è la velocità angolare delle ruote di raggio <img src="https://latex.codecogs.com/gif.latex?\inline&space;r"/>. }

La prima equazione esprime il principio di conservazione dell'energia meccanica nella configurazione in cui l'energia potenziale iniziale corrisponde all'energia cinetica finale in quanto i momnti di inerzia delle ruote piccole influiscono minimamente nel sistema e trascuriamo l'attrito tra le ruote e le rotaie. 

Nella seconda equazione, oltre al termine che esprime l'energia cinetica traslazionale, compare anche il termine dell'energia cinetica rotazionale che sfrutteremo per calcolare <img src="https://latex.codecogs.com/gif.latex?\inline&space;I"/>come di seguito illustrato.

<img src="https://latex.codecogs.com/gif.latex?\frac{1}{2}{\;m}_{\textrm{tot}}&space;\;v_1^2&space;=\frac{1\;}{2}m_{\textrm{tot}}&space;\;v_2^2&space;+\frac{1}{2}\left(2I\omega^2&space;\right)"/>

Le equazioni del modo:

<img src="https://latex.codecogs.com/gif.latex?\left\lbrace&space;\begin{array}{ll}&space;v=a\;t&space;&&space;\\&space;s=\frac{1}{2}a\;t^2&space;&space;&&space;&space;\end{array}\right."/>

<img src="https://latex.codecogs.com/gif.latex?v=\frac{2s}{t}"/>

  

<img src="https://latex.codecogs.com/gif.latex?I=\frac{1}{2}m_{tot}&space;r^2&space;\left\lbrack&space;{\left(\frac{\langle&space;t_2&space;\rangle&space;}{\langle&space;t_1&space;\rangle&space;}\right)}^2&space;-1\right\rbrack"/>

  

<img src="https://latex.codecogs.com/gif.latex?\inline&space;r"/> è il raggio della ruota piccola

<img src="https://latex.codecogs.com/gif.latex?\inline&space;R"/> è il raggio della ruota grande

  
## Apparato sperimentale e descrizione esperienza

L'apparato sperimentale è costituito da una rotaia inclinata sulla quale scorre 

⚠️ Inserire immagine

Configurazione 1: ruote libere

Configurazione 2: ruote bloccate

## Strumenti di misura

Durante l'esecuazione dell'esperimento sono stati utilizzati i seguenti strumenti: (specificare sensibilità)

   -  Bilancia 
   -  Digital timer frequency meter and counter 
   -  Calibro 

## Dati sperimentali ed elaborazione

L'acquisizione dei dati sperimentali avviene bla bla

```matlab:Code
% Importing data
df1=readtable("https://raw.githubusercontent.com/dennisangemi/lab1-dfa/main/exp-1/experimental-data-1.csv")
```
| index | t1    | t2    |
|-------|-------|-------|
| 1     | 1.545 | 2.029 |
| 2     | 1.545 | 2.042 |
| 3     | 1.546 | 2.032 |
| 4     | 1.545 | 2.022 |
| 5     | 1.541 | 2.027 |
| ...     |... | ... |

Calcolo il tempo medio 

<img src="https://latex.codecogs.com/gif.latex?\left\langle&space;t_1&space;\right\rangle&space;=\frac{1}{20}\sum_{i=1}^{20}&space;t_{1i}"/>

<img src="https://latex.codecogs.com/gif.latex?\left\langle&space;t_2&space;\right\rangle&space;=\frac{1}{20}\sum_{i=1}^{20}&space;t_{2i}"/>

```matlab:Code
%calcolo la media di t1
tm1=round(mean(df1.t1),3);
%fprintf('%.3f',tm1);

%calcolo la media di t2
tm2=round(mean(df1.t2),3);
%fprintf('%.3f',tm2);
```

Secondo dataset

```matlab:Code
% Importo il secondo dataset
% format long;
df2=readtable("https://raw.githubusercontent.com/dennisangemi/lab1-dfa/main/exp-1/experimental-data-2.csv")
```

| |descrizione|valore|incertezza|udm|strumento|
|:--:|:--:|:--:|:--:|:--:|:--:|
|1|'Massa ruota grande ...|1.1205|1.0000e-04|'kg'|'Bilancia'|
|2|'Massa ruota grande ...|1.1234|1.0000e-04|'kg'|'Bilancia'|
|3|'Massa carrello (pri...|3.8871|1.0000e-04|'kg'|'Bilancia'|
|4|'Diametro ruote picc...|0.0496|5.0000e-05|'m'|'Calibro cinquantesi...|
|5|'Diametro ruote gran...|0.0989|2.0000e-05|'m'|'Calibro ventesimale...|

```matlab:Code
% definisco variabili
m1=df2.valore(1);
m2=df2.valore(2);
mc=df2.valore(3);
diametro=df2.valore(4);
Diametro=df2.valore(5);

% definisco incertezze
dm=df2.incertezza(1);
dd=df2.incertezza(4);
dD=df2.incertezza(5);
dt=df1.incertezza(1);
```

  
## Propagazione degli errori

⚠️Da contro️llare

<img src="https://latex.codecogs.com/gif.latex?\inline&space;\delta&space;I=\left\lbrack&space;{\left(\frac{\left\langle&space;t_2&space;\right\rangle&space;}{\left\langle&space;t_1&space;\right\rangle&space;}\right)}^2&space;-1\right\rbrack&space;\left(m_{\textrm{tot}}&space;\;\delta&space;r+\frac{3}{2}\;r\;\delta&space;m\right)+{r\;m}_{\textrm{tot}}&space;\;{\left(\frac{\left\langle&space;t_2&space;\right\rangle&space;}{\left\langle&space;t_1&space;\right\rangle&space;}\right)}^2&space;\delta&space;t"/>  oppure?

<img src="https://latex.codecogs.com/gif.latex?\delta&space;I=\left\lbrack&space;{\left(\frac{\left\langle&space;t_2&space;\right\rangle&space;}{\left\langle&space;t_1&space;\right\rangle&space;}\right)}^2&space;-1\right\rbrack&space;\left(m_{\textrm{tot}}&space;\;\delta&space;r+\frac{3}{2}\;r\;\delta&space;m\right)+{r\;m}_{\textrm{tot}}&space;\;{\left(\frac{\left\langle&space;t_2&space;\right\rangle&space;}{\left\langle&space;t_1&space;\right\rangle&space;}\right)}^2&space;\left(\frac{1}{\left\langle&space;t_2&space;\right\rangle&space;}+\frac{1}{\left\langle&space;t_1&space;\right\rangle&space;}\right)\delta&space;t"/>

```matlab:Code
% Definisco variabili
r=diametro./2;
R=Diametro./2;
dr=dd/2;
dR=dD/2;
mtot=mc+m1+m2;

% Propagazione errori
dI=((tm2/tm1)^2-1)*(mtot*dr+(3/2)*r*dm)+r*mtot*((tm2/tm1)^2)*((1/tm2)+(1/tm1))*dt;

% Posizione prima cifra significativa
cfr=-floor(log10(dI));

% Stampo l'errore con la formattazione corretta
frmt1='%.';
frmt2=num2str(cfr);
frmt3='f';
frmtd=strcat(frmt1,frmt2,frmt3);
fprintf(frmtd,round(dI,cfr))
```

```text:Output
0.0004
```

Errore su I'

<img src="https://latex.codecogs.com/gif.latex?\delta&space;I\prime&space;=R\left(\frac{1}{2}R\delta&space;m+m_1&space;\delta&space;R\right)"/>

```matlab:Code
% Calcoliamo dI1
dI1=R*(0.5*R*m1 + m1*dR);

% Posizione prima cifra significativa
cfr1=-floor(log10(dI1));

% Stampo l'errore con la formattazione corretta
frmt1='%.';
frmt2_2=num2str(cfr1);
frmt3='f';
frmtd1=strcat(frmt1,frmt2_2,frmt3);
fprintf(frmtd1,round(dI1,cfr1))
```

```text:Output
0.001
```

Calcoliamo il momento di inerzia utilizzando la relazione della conservazione dell'energia:

<img src="https://latex.codecogs.com/gif.latex?I=\frac{1}{2}m_{tot}&space;r^2&space;\left\lbrack&space;{\left(\frac{\langle&space;t_2&space;\rangle&space;}{\langle&space;t_1&space;\rangle&space;}\right)}^2&space;-1\right\rbrack"/>

dove <img src="https://latex.codecogs.com/gif.latex?\inline&space;r"/> è il raggio delle ruote piccole

```matlab:Code
% Calcolo I
I=0.5*mtot*r^2*((tm2/tm1)^2-1);

% Stampo I con corretto numero di cifre significative
fprintf(frmtd,round(I,cfr))
```

```text:Output
0.0014
```

Conoscendo la massa e il raggio <img src="https://latex.codecogs.com/gif.latex?\inline&space;R"/> delle ruote grandi, verifico che il valore ottenuto sia accettabile stimando il momento di inerzia della ruota grande e approssimando le caratteristiche geometriche delle ruote ad un cilindro solido utilizzando la seguente relazione

<img src="https://latex.codecogs.com/gif.latex?I=\frac{m_1&space;R^2&space;}{2}"/>

oppure

<img src="https://latex.codecogs.com/gif.latex?I=\frac{m_2&space;R^2&space;}{2}"/>

```matlab:Code
I1=0.5*m1*R^2
```

```text:Output
I1 = 0.0014
```

```matlab:Code
%Stampo I1 con le cifre significative corrette
fprintf(frmtd1,round(I1,cfr1))
```

```text:Output
0.001
```

```matlab:Code
%Stampo I2 con le cifre significative corrette
I2=0.5*m2*R^2
```

```text:Output
I2 = 0.0014
```

  
# Conclusioni

Si nota mezzo joule di attrito e bla bla bla

il risultato ottenuto risulta essere in linea con quello atteso e lala

**Risorse condivise**:

   -  [GitHub Repository](https://github.com/dennisangemi/lab1-dfa/tree/main/exp-1) 
   -  experimental-data-1.csv [Download CSV](https://raw.githubusercontent.com/dennisangemi/lab1-dfa/main/exp-1/experimental-data-1.csv) 
   -  experimental-data-2.csv [Download CSV](https://raw.githubusercontent.com/dennisangemi/lab1-dfa/main/exp-1/experimental-data-2.csv) 
   -  MATLAB script Download



| Strumento               | Sensibilità | Unità di misura |
|-------------------------|-------------|-----------------|
| Bilancia                | 0.0001      | Kg              |
| Flessometro             | 0.001       | m               |
| Calibro cinquantesimale | 0.00005     | m               |
| Calibro ventesimale     | 0.00002     | m               |
| Cronometro              | 0.001       | s               |




| index | t1    | t2    |
|-------|-------|-------|
| 1     | 1.545 | 2.029 |
| 2     | 1.545 | 2.042 |
| 3     | 1.546 | 2.032 |
| 4     | 1.545 | 2.022 |
| 5     | 1.541 | 2.027 |
| ...     |... | ... |


