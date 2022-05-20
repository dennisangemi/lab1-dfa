---
abstract: |
    Si è determinato il valore dell'accelerazione di gravità registrando il
    periodo di oscillazione di un pendolo composto al variare della distanza
    del centro di massa dall'asse di rotazione. Il valore ottenuto risulta
    essere accurato ma non preciso.
author:
- Dennis Angemi
- Federica Ingrassia
- Giuseppe Di Silvestre
- Giulia De Luca
date: 25 Marzo 2022
title: Pendolo composto
---

Introduzione e cenni teorici
============================

Il pendolo fisico è generalmente un corpo rigido in grado di oscillare
attorno un'asse di rotazione (diverso dal suo baricentro). Quando il
pendolo viene spostato dalla sua posizione di equilibrio (stabile) tende
a tornare nella sua posizione originale compiendo delle oscillazioni.
Trascurando gli attriti, le forze agenti sul sistema sono:

-   Forza peso: che genera un momento di richiamo verso la posizione di
    equilibrio;

-   Reazione vincolare del perno: che sostiene la struttura del pendolo;

-   Forza centripeta: che consente il cambio di direzione del moto
    dell'asta durante l'oscillazione.

Il fenomeno avviene per oscillazioni con un angolo inferiore a 7° in
modo da poter essere approssimato ad un moto armonico, pertanto la sua
equazione è: $$\frac{d^2\theta}{dt^2}+\frac{mgh}{I_z}\theta=0$$ In cui:

-   $\theta$ rappresenta l'angolo tra la posizione di partenza del corpo
    e la verticale;

-   $m$ è la massa del pendolo;

-   $g$ indica l'accelerazione di gravità;

-   $h$ è la distanza del centro di massa dall'asse di rotazione;

-   $I_z$ rappresenta il momento di inerzia del corpo rigido.

Apparato sperimentale
=====================

Descrizione apparato
--------------------

L'apparato sperimentale è costituito da un'asta rigida lunga un metro
sostenuta da un perno che ne consente le oscillazioni. L'asta inoltre
può essere regolata in modo tale da poter modificare il suo asse di
rotazione.

Procedura di misura
-------------------

Per poter misurare il periodo di oscillazione del pendolo, è stato
posizionato, al di sotto del pendolo, uno smartphone in modo da poterne
registrare il passaggio mediante il sensore di prossimità (TMD4906); è
stato sfruttato il software Physics Toolbox Sensor Suite.

Sono state effettuate 1000 misure, 100 per ogni configurazione (si
vedano le Tabelle 1 e 2 dell'appendice A)

Strumenti di misura
-------------------

le misure sono state effettuate con i seguenti strumenti:

  Strumento                       Sensibilità   udm      
  ------------------------------- ------------- ----- -- --
  Cronometro                      0.01          s        
  Metro                           1             cm       
  Sensore di prossimità TMD4906   0.05          s        

Analisi dei dati e propagazione degli errori
============================================

Si procede al calcolo dell'accelerazione gravitazionale $g$ sfruttando
le caratteristiche periodiche del moto di un pendolo fisico per il quale
valgono le seguenti relazioni

$$T=2\pi\sqrt{\frac{I}{mgd_{cm}}} \Longrightarrow T^2=4\pi^2\frac{I}{mgd_{cm}}$$

$$g=4\pi^2\frac{I}{md_{cm}T^2}=4\pi^2\frac{\frac{1}{12}ml_0^2+md_{cm}}{md_{cm}T^2}=\frac{l_0^2\pi^2}{3d_{cm}T^2}+4\pi^2\frac{d_{cm}}{T^2}.$$
Di seguito si calcola l'errore assoluto di $g$
$$\delta g=\left | \frac{\partial g}{\partial l^2} \right | \delta l^2 + \left | \frac{\partial g}{\partial T^2} \right | \delta T^2 + \left | \frac{\partial g}{\partial d_{cm}^2} \right | \delta d_{cm}^2$$
in cui $$\delta l^2=2l\delta l$$ $$\delta T^2=8t\delta t$$
$$\delta g=\frac{\pi^2}{3d_{cm}T^2}2l\delta l + \left (\frac{l_0^2\pi^2}{3d_{cm}T^4} + 4\pi^2\frac{d_{cm}}{T^4}\right )8t\delta t + \left |-\frac{l_0^2\pi^2}{3d_{cm}^2T^2} + \frac{4\pi^2}{T^2}\right |\delta d_{cm}.$$

Risultati e conclusioni
=======================

I risultati ottenuti per l'accelerazione di gravità risultano essere
accurati ma non precisi. Abbiamo ottenuto un valore medio di $g$ pari a
$9.5 \pm 2 \; m/s^2$ con un errore relativo del 20%. La grandezza
dell'errore è dovuta, oltre alla scarsa sensibilità degli strumenti, ad
imprecisioni dovute al posizionamento del pendolo fisico utilizzato: si
è notato infatti che con l'avvicinarsi del centro di massa al perno, il
periodo di oscillazione $T$ non è compatibile con i risultati aspettati.
Si è inoltre rilevato che il pendolo non risulta essere completamente
perpendicolare al piano di lavoro inficiando inequivocabilmente le
misure di $T$. A seguito di queste considerazioni si è ritenuto
opportuno scartare il valore di $g$ ottenuto nella configurazione $d_1$
in cui la distanza dal centro di massa è pari a 5 $\pm$ 1 $cm$. Di
seguito si riportano i valori dell'accelerazione di gravità ($g$)
ottenute nelle 10 configurazioni descritte nella sezione 2.

  configuration                             g ($m/s^2$)   relative error      
  ----------------------------------------- ------------- ---------------- -- --
  $d_1$                                     6.9 $\pm$ 2   28.99 %             
  $d_2$                                     9.0 $\pm$ 2   22.22 %             
  $d_3$                                     9.1 $\pm$ 2   21.98 %             
  $d_4$                                     9.5 $\pm$ 3   31.58 %             
  $d_5$                                     9.2 $\pm$ 2   21.74 %             
  $d_6$                                     9.4 $\pm$ 2   21.28 %             
  $d_7$                                     9.9 $\pm$ 3   30.30 %             
  $d_8$                                     9.7 $\pm$ 3   30.93 %             
  $d_9$                                     9.9 $\pm$ 3   30.30 %             
  $d_{10}$                                  9.7 $\pm$ 2   20.62 %             
  [\[output3\]]{#output3 label="output3"}                                     

Additional notes
================

Data Availability
-----------------

The data that support the findings of this study are openly available in
[dennisangemi/lab1-dfa GitHub
Repository](https://github.com/dennisangemi/lab1-dfa/tree/main/exp-4/data)
at <https://github.com/dennisangemi/lab1-dfa/tree/main/exp-4/data> under
[CC-BY 4.0 license](https://creativecommons.org/licenses/by/4.0/).

Code Availability
-----------------

The MATLAB code written to get the findings of this study is openly
available in [dennisangemi/lab1-dfa GitHub
Repository](https://github.com/dennisangemi/lab1-dfa/tree/main/exp-2/script)
at <https://github.com/dennisangemi/lab1-dfa/tree/main/exp-4/script>

Software used
-------------

-   **MATLAB**: Data Analysis

-   **Google Spreadsheet**: Data entry

-   **Adobe Experience Design**: Images designing

-   **GitHub**: Resource sharing

-   **Physics Toolbox Sensor Suite**: Data acquisition

Bibliography
============

-   Taylor,  J. (1999). *Introduzione all'analisi degli errori: Lo
    studio delle incertezze nelle misure fisiche. *Zanichelli

-   Bevington P. (2002). *Data Reduction and Error Analysis for the
    Physical Sciences. * McGraw-Hill Education  

-   Malthe-Sørenssen, A. (2015). *Elementary Mechanics Using Matlab: A
    Modern Course Combining Analytical and Numerical Techniques*.
    Springer

Appendice A
===========

Tabella 1
---------

  dimension                                 value (cm)                   
  ----------------------------------------- ---------------------- -- -- --
  $d_1$                                     $55.0 \pm 0.5 \; cm$         
  $d_2$                                     $60.0 \pm 0.5 \; cm$         
  $d_3$                                     $65.0 \pm 0.5 \; cm$         
  $d_4$                                     $70.0 \pm 0.5 \; cm$         
  $d_5$                                     $75.0 \pm 0.5 \; cm$         
  $d_6$                                     $80.0 \pm 0.5 \; cm$         
  $d_7$                                     $85.0 \pm 0.5 \; cm$         
  $d_8$                                     $90.0 \pm 0.5 \; cm$         
  $d_9$                                     $95.0 \pm 0.5 \; cm$         
  $d_{10}$                                  $98.0 \pm 0.5 \; cm$         
  [\[output3\]]{#output3 label="output3"}                                

Tabella 2
---------

  event                                     distance   time (ms)   uncertainty (ms)   
  ----------------------------------------- ---------- ----------- ------------------ --
  1                                         $d_1$      1576        50                 
  2                                         $d_1$      1555        50                 
  3                                         $d_1$      1557        50                 
  4                                         $d_1$      1578        50                 
  5                                         $d_1$      1560        50                 
  6                                         $d_1$      1553        50                 
  7                                         $d_1$      1579        50                 
  8                                         $d_1$      1563        50                 
  9                                         $d_1$      1555        50                 
  10                                        $d_1$      1576        50                 
  11                                        $d_1$      1558        50                 
  12                                        $d_1$      1554        50                 
  13                                        $d_1$      1576        50                 
  14                                        $d_1$      1556        50                 
  15                                        $d_1$      1556        50                 
  16                                        $d_1$      1577        50                 
  17                                        $d_1$      1559        50                 
  18                                        $d_1$      1556        50                 
  19                                        $d_1$      1577        50                 
  20                                        $d_1$      1555        50                 
  21                                        $d_1$      1553        50                 
  22                                        $d_1$      1559        50                 
  23                                        $d_1$      1574        50                 
  24                                        $d_1$      1554        50                 
  25                                        $d_1$      1556        50                 
  26                                        $d_1$      1577        50                 
  27                                        $d_1$      1560        50                 
  28                                        $d_1$      1578        50                 
  29                                        $d_1$      1579        50                 
  30                                        $d_1$      1558        50                 
  31                                        $d_1$      1576        50                 
  32                                        $d_1$      1556        50                 
  33                                        $d_1$      1557        50                 
  34                                        $d_1$      1577        50                 
  35                                        $d_1$      1577        50                 
  36                                        $d_1$      1557        50                 
  37                                        $d_1$      1554        50                 
  38                                        $d_1$      1579        50                 
  39                                        $d_1$      1577        50                 
  40                                        $d_1$      1558        50                 
  41                                        $d_1$      1578        50                 
  42                                        $d_1$      1562        50                 
  43                                        $d_1$      1558        50                 
  44                                        $d_1$      1578        50                 
  45                                        $d_1$      1558        50                 
  46                                        $d_1$      1557        50                 
  47                                        $d_1$      1575        50                 
  48                                        $d_1$      1575        50                 
  49                                        $d_1$      1561        50                 
  50                                        $d_1$      1555        50                 
  51                                        $d_1$      1577        50                 
  52                                        $d_1$      1557        50                 
  53                                        $d_1$      1558        50                 
  54                                        $d_1$      1578        50                 
  55                                        $d_1$      1573        50                 
  56                                        $d_1$      1554        50                 
  57                                        $d_1$      1556        50                 
  58                                        $d_1$      1579        50                 
  59                                        $d_1$      1573        50                 
  60                                        $d_1$      1579        50                 
  61                                        $d_1$      1559        50                 
  62                                        $d_1$      1577        50                 
  63                                        $d_1$      1577        50                 
  64                                        $d_1$      1556        50                 
  65                                        $d_1$      1555        50                 
  66                                        $d_1$      1576        50                 
  67                                        $d_1$      1576        50                 
  68                                        $d_1$      1579        50                 
  69                                        $d_1$      1571        50                 
  70                                        $d_1$      1554        50                 
  71                                        $d_1$      1576        50                 
  72                                        $d_1$      1595        50                 
  73                                        $d_1$      1576        50                 
  74                                        $d_1$      1575        50                 
  75                                        $d_1$      1581        50                 
  76                                        $d_1$      1582        50                 
  77                                        $d_1$      1578        50                 
  78                                        $d_1$      1577        50                 
  79                                        $d_1$      1575        50                 
  80                                        $d_1$      1578        50                 
  81                                        $d_1$      1580        50                 
  82                                        $d_1$      1575        50                 
  83                                        $d_1$      1576        50                 
  84                                        $d_1$      1571        50                 
  85                                        $d_1$      1577        50                 
  86                                        $d_1$      1582        50                 
  87                                        $d_1$      1579        50                 
  88                                        $d_1$      1577        50                 
  89                                        $d_1$      1573        50                 
  90                                        $d_1$      1598        50                 
  91                                        $d_1$      1572        50                 
  92                                        $d_1$      1574        50                 
  93                                        $d_1$      1583        50                 
  94                                        $d_1$      1573        50                 
  95                                        $d_1$      1577        50                 
  96                                        $d_1$      1578        50                 
  97                                        $d_1$      1579        50                 
  98                                        $d_1$      1591        50                 
  99                                        $d_1$      1600        50                 
  100                                       $d_1$      1596        50                 
  101                                       $d_1$      1595        50                 
  1                                         $d_2$      1019        50                 
  2                                         $d_2$      1018        50                 
  3                                         $d_2$      998         50                 
  4                                         $d_2$      999         50                 
  5                                         $d_2$      1019        50                 
  6                                         $d_2$      1024        50                 
  7                                         $d_2$      997         50                 
  8                                         $d_2$      998         50                 
  9                                         $d_2$      1019        50                 
  10                                        $d_2$      1016        50                 
  11                                        $d_2$      1000        50                 
  12                                        $d_2$      998         50                 
  13                                        $d_2$      1020        50                 
  14                                        $d_2$      1017        50                 
  15                                        $d_2$      1016        50                 
  16                                        $d_2$      995         50                 
  17                                        $d_2$      1016        50                 
  18                                        $d_2$      1018        50                 
  19                                        $d_2$      1012        50                 
  20                                        $d_2$      998         50                 
  21                                        $d_2$      997         50                 
  22                                        $d_2$      1019        50                 
  23                                        $d_2$      1017        50                 
  24                                        $d_2$      997         50                 
  25                                        $d_2$      998         50                 
  26                                        $d_2$      1018        50                 
  27                                        $d_2$      1018        50                 
  28                                        $d_2$      998         50                 
  29                                        $d_2$      996         50                 
  30                                        $d_2$      1017        50                 
  31                                        $d_2$      1020        50                 
  32                                        $d_2$      1019        50                 
  33                                        $d_2$      1017        50                 
  34                                        $d_2$      997         50                 
  35                                        $d_2$      1018        50                 
  36                                        $d_2$      1016        50                 
  37                                        $d_2$      1001        50                 
  38                                        $d_2$      993         50                 
  39                                        $d_2$      1018        50                 
  40                                        $d_2$      1019        50                 
  41                                        $d_2$      1016        50                 
  42                                        $d_2$      1018        50                 
  43                                        $d_2$      1018        50                 
  44                                        $d_2$      997         50                 
  45                                        $d_2$      1018        50                 
  46                                        $d_2$      1015        50                 
  47                                        $d_2$      1021        50                 
  48                                        $d_2$      1001        50                 
  49                                        $d_2$      1016        50                 
  50                                        $d_2$      1018        50                 
  51                                        $d_2$      1017        50                 
  52                                        $d_2$      997         50                 
  53                                        $d_2$      996         50                 
  54                                        $d_2$      1020        50                 
  55                                        $d_2$      1020        50                 
  56                                        $d_2$      998         50                 
  57                                        $d_2$      995         50                 
  58                                        $d_2$      1017        50                 
  59                                        $d_2$      1020        50                 
  60                                        $d_2$      998         50                 
  61                                        $d_2$      1019        50                 
  62                                        $d_2$      995         50                 
  63                                        $d_2$      1018        50                 
  64                                        $d_2$      1020        50                 
  65                                        $d_2$      1018        50                 
  66                                        $d_2$      999         50                 
  67                                        $d_2$      1018        50                 
  68                                        $d_2$      1018        50                 
  69                                        $d_2$      1016        50                 
  70                                        $d_2$      997         50                 
  71                                        $d_2$      1000        50                 
  72                                        $d_2$      1017        50                 
  73                                        $d_2$      1017        50                 
  74                                        $d_2$      1019        50                 
  75                                        $d_2$      998         50                 
  76                                        $d_2$      998         50                 
  77                                        $d_2$      1017        50                 
  78                                        $d_2$      1019        50                 
  79                                        $d_2$      1017        50                 
  80                                        $d_2$      1017        50                 
  81                                        $d_2$      1018        50                 
  82                                        $d_2$      1016        50                 
  83                                        $d_2$      1002        50                 
  84                                        $d_2$      994         50                 
  85                                        $d_2$      1015        50                 
  86                                        $d_2$      1017        50                 
  87                                        $d_2$      1019        50                 
  88                                        $d_2$      1000        50                 
  89                                        $d_2$      1019        50                 
  90                                        $d_2$      1017        50                 
  98                                        $d_2$      998         50                 
  99                                        $d_2$      998         50                 
  100                                       $d_2$      1018        50                 
  101                                       $d_2$      1019        50                 
  102                                       $d_2$      998         50                 
  103                                       $d_2$      997         50                 
  104                                       $d_2$      1018        50                 
  105                                       $d_2$      1015        50                 
  106                                       $d_2$      997         50                 
  107                                       $d_2$      998         50                 
  1                                         $d_3$      877         50                 
  2                                         $d_3$      858         50                 
  3                                         $d_3$      874         50                 
  4                                         $d_3$      856         50                 
  5                                         $d_3$      853         50                 
  6                                         $d_3$      882         50                 
  7                                         $d_3$      855         50                 
  8                                         $d_3$      887         50                 
  9                                         $d_3$      874         50                 
  10                                        $d_3$      856         50                 
  11                                        $d_3$      882         50                 
  12                                        $d_3$      876         50                 
  13                                        $d_3$      857         50                 
  14                                        $d_3$      874         50                 
  15                                        $d_3$      877         50                 
  16                                        $d_3$      860         50                 
  17                                        $d_3$      874         50                 
  18                                        $d_3$      875         50                 
  19                                        $d_3$      855         50                 
  20                                        $d_3$      875         50                 
  21                                        $d_3$      881         50                 
  22                                        $d_3$      876         50                 
  23                                        $d_3$      854         50                 
  24                                        $d_3$      878         50                 
  25                                        $d_3$      882         50                 
  26                                        $d_3$      857         50                 
  27                                        $d_3$      877         50                 
  28                                        $d_3$      880         50                 
  29                                        $d_3$      856         50                 
  30                                        $d_3$      872         50                 
  31                                        $d_3$      875         50                 
  32                                        $d_3$      889         50                 
  33                                        $d_3$      872         50                 
  34                                        $d_3$      876         50                 
  35                                        $d_3$      861         50                 
  36                                        $d_3$      876         50                 
  37                                        $d_3$      882         50                 
  38                                        $d_3$      854         50                 
  39                                        $d_3$      878         50                 
  40                                        $d_3$      880         50                 
  41                                        $d_3$      881         50                 
  42                                        $d_3$      862         50                 
  43                                        $d_3$      874         50                 
  44                                        $d_3$      876         50                 
  45                                        $d_3$      863         50                 
  46                                        $d_3$      877         50                 
  47                                        $d_3$      875         50                 
  48                                        $d_3$      879         50                 
  49                                        $d_3$      881         50                 
  50                                        $d_3$      876         50                 
  51                                        $d_3$      878         50                 
  52                                        $d_3$      884         50                 
  53                                        $d_3$      883         50                 
  54                                        $d_3$      878         50                 
  55                                        $d_3$      876         50                 
  56                                        $d_3$      875         50                 
  57                                        $d_3$      876         50                 
  58                                        $d_3$      876         50                 
  59                                        $d_3$      875         50                 
  60                                        $d_3$      875         50                 
  61                                        $d_3$      879         50                 
  62                                        $d_3$      876         50                 
  63                                        $d_3$      878         50                 
  64                                        $d_3$      875         50                 
  65                                        $d_3$      888         50                 
  66                                        $d_3$      874         50                 
  67                                        $d_3$      887         50                 
  68                                        $d_3$      885         50                 
  69                                        $d_3$      876         50                 
  70                                        $d_3$      879         50                 
  71                                        $d_3$      884         50                 
  72                                        $d_3$      876         50                 
  73                                        $d_3$      876         50                 
  74                                        $d_3$      875         50                 
  75                                        $d_3$      874         50                 
  76                                        $d_3$      873         50                 
  77                                        $d_3$      873         50                 
  78                                        $d_3$      877         50                 
  79                                        $d_3$      877         50                 
  80                                        $d_3$      889         50                 
  81                                        $d_3$      881         50                 
  82                                        $d_3$      876         50                 
  83                                        $d_3$      878         50                 
  84                                        $d_3$      876         50                 
  85                                        $d_3$      887         50                 
  86                                        $d_3$      880         50                 
  87                                        $d_3$      878         50                 
  88                                        $d_3$      882         50                 
  89                                        $d_3$      875         50                 
  90                                        $d_3$      878         50                 
  91                                        $d_3$      898         50                 
  92                                        $d_3$      876         50                 
  93                                        $d_3$      878         50                 
  94                                        $d_3$      895         50                 
  95                                        $d_3$      881         50                 
  96                                        $d_3$      877         50                 
  97                                        $d_3$      874         50                 
  98                                        $d_3$      870         50                 
  99                                        $d_3$      882         50                 
  1                                         $d_4$      798         50                 
  2                                         $d_4$      797         50                 
  3                                         $d_4$      797         50                 
  4                                         $d_4$      795         50                 
  5                                         $d_4$      801         50                 
  6                                         $d_4$      797         50                 
  7                                         $d_4$      799         50                 
  8                                         $d_4$      798         50                 
  9                                         $d_4$      795         50                 
  10                                        $d_4$      802         50                 
  11                                        $d_4$      797         50                 
  12                                        $d_4$      798         50                 
  13                                        $d_4$      794         50                 
  14                                        $d_4$      797         50                 
  15                                        $d_4$      797         50                 
  16                                        $d_4$      802         50                 
  17                                        $d_4$      801         50                 
  18                                        $d_4$      800         50                 
  19                                        $d_4$      798         50                 
  20                                        $d_4$      798         50                 
  21                                        $d_4$      797         50                 
  22                                        $d_4$      798         50                 
  23                                        $d_4$      801         50                 
  24                                        $d_4$      801         50                 
  25                                        $d_4$      798         50                 
  26                                        $d_4$      795         50                 
  27                                        $d_4$      798         50                 
  28                                        $d_4$      795         50                 
  29                                        $d_4$      799         50                 
  30                                        $d_4$      797         50                 
  31                                        $d_4$      820         50                 
  32                                        $d_4$      817         50                 
  33                                        $d_4$      803         50                 
  34                                        $d_4$      796         50                 
  35                                        $d_4$      798         50                 
  36                                        $d_4$      797         50                 
  37                                        $d_4$      795         50                 
  38                                        $d_4$      798         50                 
  39                                        $d_4$      797         50                 
  40                                        $d_4$      794         50                 
  41                                        $d_4$      801         50                 
  42                                        $d_4$      800         50                 
  43                                        $d_4$      796         50                 
  44                                        $d_4$      828         50                 
  45                                        $d_4$      797         50                 
  46                                        $d_4$      798         50                 
  47                                        $d_4$      798         50                 
  48                                        $d_4$      798         50                 
  49                                        $d_4$      805         50                 
  50                                        $d_4$      798         50                 
  51                                        $d_4$      820         50                 
  52                                        $d_4$      797         50                 
  53                                        $d_4$      794         50                 
  54                                        $d_4$      796         50                 
  55                                        $d_4$      800         50                 
  56                                        $d_4$      794         50                 
  57                                        $d_4$      801         50                 
  58                                        $d_4$      796         50                 
  59                                        $d_4$      796         50                 
  60                                        $d_4$      801         50                 
  61                                        $d_4$      796         50                 
  62                                        $d_4$      794         50                 
  63                                        $d_4$      799         50                 
  64                                        $d_4$      794         50                 
  65                                        $d_4$      798         50                 
  66                                        $d_4$      794         50                 
  67                                        $d_4$      797         50                 
  68                                        $d_4$      795         50                 
  69                                        $d_4$      795         50                 
  70                                        $d_4$      802         50                 
  71                                        $d_4$      799         50                 
  72                                        $d_4$      797         50                 
  73                                        $d_4$      800         50                 
  74                                        $d_4$      798         50                 
  75                                        $d_4$      798         50                 
  76                                        $d_4$      797         50                 
  77                                        $d_4$      801         50                 
  78                                        $d_4$      799         50                 
  79                                        $d_4$      794         50                 
  80                                        $d_4$      797         50                 
  81                                        $d_4$      801         50                 
  82                                        $d_4$      798         50                 
  83                                        $d_4$      800         50                 
  84                                        $d_4$      798         50                 
  85                                        $d_4$      799         50                 
  86                                        $d_4$      798         50                 
  87                                        $d_4$      797         50                 
  88                                        $d_4$      797         50                 
  89                                        $d_4$      793         50                 
  90                                        $d_4$      801         50                 
  91                                        $d_4$      796         50                 
  92                                        $d_4$      798         50                 
  93                                        $d_4$      797         50                 
  94                                        $d_4$      798         50                 
  95                                        $d_4$      798         50                 
  96                                        $d_4$      800         50                 
  97                                        $d_4$      801         50                 
  98                                        $d_4$      795         50                 
  99                                        $d_4$      796         50                 
  100                                       $d_4$      796         50                 
  1                                         $d_5$      797         50                 
  2                                         $d_5$      778         50                 
  3                                         $d_5$      797         50                 
  4                                         $d_5$      781         50                 
  5                                         $d_5$      797         50                 
  6                                         $d_5$      778         50                 
  7                                         $d_5$      800         50                 
  8                                         $d_5$      781         50                 
  9                                         $d_5$      798         50                 
  10                                        $d_5$      777         50                 
  11                                        $d_5$      778         50                 
  12                                        $d_5$      802         50                 
  13                                        $d_5$      780         50                 
  14                                        $d_5$      802         50                 
  15                                        $d_5$      778         50                 
  16                                        $d_5$      799         50                 
  17                                        $d_5$      779         50                 
  18                                        $d_5$      782         50                 
  19                                        $d_5$      775         50                 
  20                                        $d_5$      782         50                 
  21                                        $d_5$      803         50                 
  22                                        $d_5$      780         50                 
  23                                        $d_5$      799         50                 
  24                                        $d_5$      781         50                 
  25                                        $d_5$      799         50                 
  26                                        $d_5$      781         50                 
  27                                        $d_5$      798         50                 
  28                                        $d_5$      778         50                 
  29                                        $d_5$      798         50                 
  30                                        $d_5$      777         50                 
  31                                        $d_5$      782         50                 
  32                                        $d_5$      798         50                 
  33                                        $d_5$      777         50                 
  34                                        $d_5$      800         50                 
  35                                        $d_5$      776         50                 
  36                                        $d_5$      799         50                 
  37                                        $d_5$      774         50                 
  38                                        $d_5$      798         50                 
  39                                        $d_5$      777         50                 
  40                                        $d_5$      799         50                 
  41                                        $d_5$      796         50                 
  42                                        $d_5$      779         50                 
  43                                        $d_5$      796         50                 
  44                                        $d_5$      781         50                 
  45                                        $d_5$      799         50                 
  46                                        $d_5$      777         50                 
  47                                        $d_5$      801         50                 
  48                                        $d_5$      778         50                 
  49                                        $d_5$      801         50                 
  50                                        $d_5$      779         50                 
  51                                        $d_5$      783         50                 
  52                                        $d_5$      794         50                 
  53                                        $d_5$      775         50                 
  54                                        $d_5$      798         50                 
  55                                        $d_5$      777         50                 
  56                                        $d_5$      796         50                 
  57                                        $d_5$      800         50                 
  58                                        $d_5$      802         50                 
  59                                        $d_5$      800         50                 
  60                                        $d_5$      801         50                 
  61                                        $d_5$      780         50                 
  62                                        $d_5$      800         50                 
  63                                        $d_5$      800         50                 
  64                                        $d_5$      797         50                 
  65                                        $d_5$      795         50                 
  66                                        $d_5$      802         50                 
  67                                        $d_5$      793         50                 
  68                                        $d_5$      803         50                 
  69                                        $d_5$      801         50                 
  70                                        $d_5$      779         50                 
  71                                        $d_5$      802         50                 
  72                                        $d_5$      804         50                 
  73                                        $d_5$      799         50                 
  74                                        $d_5$      781         50                 
  75                                        $d_5$      802         50                 
  76                                        $d_5$      782         50                 
  77                                        $d_5$      797         50                 
  78                                        $d_5$      802         50                 
  79                                        $d_5$      799         50                 
  80                                        $d_5$      801         50                 
  81                                        $d_5$      797         50                 
  82                                        $d_5$      796         50                 
  83                                        $d_5$      799         50                 
  84                                        $d_5$      798         50                 
  85                                        $d_5$      799         50                 
  86                                        $d_5$      798         50                 
  87                                        $d_5$      798         50                 
  88                                        $d_5$      799         50                 
  89                                        $d_5$      798         50                 
  90                                        $d_5$      801         50                 
  91                                        $d_5$      800         50                 
  92                                        $d_5$      782         50                 
  93                                        $d_5$      799         50                 
  94                                        $d_5$      803         50                 
  95                                        $d_5$      799         50                 
  96                                        $d_5$      800         50                 
  97                                        $d_5$      780         50                 
  98                                        $d_5$      799         50                 
  99                                        $d_5$      778         50                 
  100                                       $d_5$      795         50                 
  1                                         $d_6$      777         50                 
  2                                         $d_6$      778         50                 
  3                                         $d_6$      781         50                 
  4                                         $d_6$      776         50                 
  5                                         $d_6$      779         50                 
  6                                         $d_6$      797         50                 
  7                                         $d_6$      798         50                 
  8                                         $d_6$      779         50                 
  9                                         $d_6$      778         50                 
  10                                        $d_6$      783         50                 
  11                                        $d_6$      778         50                 
  12                                        $d_6$      778         50                 
  13                                        $d_6$      779         50                 
  14                                        $d_6$      779         50                 
  15                                        $d_6$      780         50                 
  16                                        $d_6$      777         50                 
  17                                        $d_6$      798         50                 
  18                                        $d_6$      780         50                 
  19                                        $d_6$      776         50                 
  20                                        $d_6$      778         50                 
  21                                        $d_6$      778         50                 
  22                                        $d_6$      778         50                 
  23                                        $d_6$      799         50                 
  24                                        $d_6$      777         50                 
  25                                        $d_6$      777         50                 
  26                                        $d_6$      779         50                 
  27                                        $d_6$      779         50                 
  28                                        $d_6$      780         50                 
  29                                        $d_6$      780         50                 
  30                                        $d_6$      779         50                 
  31                                        $d_6$      779         50                 
  32                                        $d_6$      781         50                 
  33                                        $d_6$      778         50                 
  34                                        $d_6$      778         50                 
  35                                        $d_6$      779         50                 
  36                                        $d_6$      778         50                 
  37                                        $d_6$      798         50                 
  38                                        $d_6$      778         50                 
  39                                        $d_6$      779         50                 
  40                                        $d_6$      778         50                 
  41                                        $d_6$      780         50                 
  42                                        $d_6$      781         50                 
  43                                        $d_6$      779         50                 
  44                                        $d_6$      780         50                 
  45                                        $d_6$      778         50                 
  46                                        $d_6$      777         50                 
  47                                        $d_6$      777         50                 
  48                                        $d_6$      778         50                 
  49                                        $d_6$      776         50                 
  50                                        $d_6$      799         50                 
  51                                        $d_6$      778         50                 
  52                                        $d_6$      776         50                 
  53                                        $d_6$      779         50                 
  54                                        $d_6$      779         50                 
  55                                        $d_6$      774         50                 
  56                                        $d_6$      777         50                 
  57                                        $d_6$      798         50                 
  58                                        $d_6$      778         50                 
  59                                        $d_6$      776         50                 
  60                                        $d_6$      778         50                 
  61                                        $d_6$      797         50                 
  62                                        $d_6$      778         50                 
  63                                        $d_6$      780         50                 
  64                                        $d_6$      782         50                 
  65                                        $d_6$      777         50                 
  66                                        $d_6$      779         50                 
  67                                        $d_6$      776         50                 
  68                                        $d_6$      798         50                 
  69                                        $d_6$      781         50                 
  70                                        $d_6$      777         50                 
  71                                        $d_6$      798         50                 
  72                                        $d_6$      776         50                 
  73                                        $d_6$      779         50                 
  74                                        $d_6$      779         50                 
  75                                        $d_6$      777         50                 
  76                                        $d_6$      779         50                 
  77                                        $d_6$      781         50                 
  78                                        $d_6$      780         50                 
  79                                        $d_6$      776         50                 
  80                                        $d_6$      779         50                 
  81                                        $d_6$      777         50                 
  82                                        $d_6$      778         50                 
  83                                        $d_6$      779         50                 
  84                                        $d_6$      777         50                 
  85                                        $d_6$      776         50                 
  86                                        $d_6$      779         50                 
  87                                        $d_6$      779         50                 
  88                                        $d_6$      775         50                 
  89                                        $d_6$      777         50                 
  90                                        $d_6$      779         50                 
  91                                        $d_6$      780         50                 
  92                                        $d_6$      779         50                 
  93                                        $d_6$      775         50                 
  94                                        $d_6$      777         50                 
  95                                        $d_6$      778         50                 
  96                                        $d_6$      778         50                 
  97                                        $d_6$      776         50                 
  98                                        $d_6$      778         50                 
  99                                        $d_6$      777         50                 
  100                                       $d_6$      779         50                 
  1                                         $d_7$      756         50                 
  2                                         $d_7$      776         50                 
  3                                         $d_7$      778         50                 
  4                                         $d_7$      757         50                 
  5                                         $d_7$      760         50                 
  6                                         $d_7$      755         50                 
  7                                         $d_7$      778         50                 
  8                                         $d_7$      761         50                 
  9                                         $d_7$      758         50                 
  10                                        $d_7$      778         50                 
  11                                        $d_7$      778         50                 
  12                                        $d_7$      761         50                 
  13                                        $d_7$      757         50                 
  14                                        $d_7$      781         50                 
  15                                        $d_7$      755         50                 
  16                                        $d_7$      761         50                 
  17                                        $d_7$      758         50                 
  18                                        $d_7$      778         50                 
  19                                        $d_7$      759         50                 
  20                                        $d_7$      757         50                 
  21                                        $d_7$      778         50                 
  22                                        $d_7$      758         50                 
  23                                        $d_7$      757         50                 
  24                                        $d_7$      760         50                 
  25                                        $d_7$      778         50                 
  26                                        $d_7$      759         50                 
  27                                        $d_7$      758         50                 
  28                                        $d_7$      756         50                 
  29                                        $d_7$      781         50                 
  30                                        $d_7$      759         50                 
  31                                        $d_7$      758         50                 
  32                                        $d_7$      778         50                 
  33                                        $d_7$      778         50                 
  34                                        $d_7$      759         50                 
  35                                        $d_7$      758         50                 
  36                                        $d_7$      779         50                 
  37                                        $d_7$      778         50                 
  38                                        $d_7$      759         50                 
  39                                        $d_7$      777         50                 
  40                                        $d_7$      761         50                 
  41                                        $d_7$      761         50                 
  42                                        $d_7$      760         50                 
  43                                        $d_7$      779         50                 
  44                                        $d_7$      763         50                 
  45                                        $d_7$      773         50                 
  46                                        $d_7$      777         50                 
  47                                        $d_7$      757         50                 
  48                                        $d_7$      759         50                 
  49                                        $d_7$      757         50                 
  50                                        $d_7$      776         50                 
  51                                        $d_7$      759         50                 
  52                                        $d_7$      777         50                 
  53                                        $d_7$      778         50                 
  54                                        $d_7$      760         50                 
  55                                        $d_7$      760         50                 
  56                                        $d_7$      776         50                 
  57                                        $d_7$      779         50                 
  58                                        $d_7$      757         50                 
  59                                        $d_7$      759         50                 
  60                                        $d_7$      759         50                 
  61                                        $d_7$      778         50                 
  62                                        $d_7$      759         50                 
  63                                        $d_7$      779         50                 
  64                                        $d_7$      779         50                 
  65                                        $d_7$      759         50                 
  66                                        $d_7$      763         50                 
  67                                        $d_7$      779         50                 
  68                                        $d_7$      780         50                 
  69                                        $d_7$      759         50                 
  70                                        $d_7$      759         50                 
  71                                        $d_7$      775         50                 
  72                                        $d_7$      755         50                 
  73                                        $d_7$      776         50                 
  74                                        $d_7$      777         50                 
  75                                        $d_7$      781         50                 
  76                                        $d_7$      756         50                 
  77                                        $d_7$      759         50                 
  78                                        $d_7$      761         50                 
  79                                        $d_7$      780         50                 
  80                                        $d_7$      759         50                 
  81                                        $d_7$      757         50                 
  82                                        $d_7$      759         50                 
  83                                        $d_7$      779         50                 
  84                                        $d_7$      765         50                 
  85                                        $d_7$      757         50                 
  86                                        $d_7$      761         50                 
  87                                        $d_7$      778         50                 
  88                                        $d_7$      760         50                 
  89                                        $d_7$      757         50                 
  90                                        $d_7$      759         50                 
  91                                        $d_7$      761         50                 
  92                                        $d_7$      778         50                 
  93                                        $d_7$      759         50                 
  94                                        $d_7$      757         50                 
  95                                        $d_7$      758         50                 
  96                                        $d_7$      780         50                 
  97                                        $d_7$      758         50                 
  98                                        $d_7$      755         50                 
  99                                        $d_7$      758         50                 
  100                                       $d_7$      777         50                 
  1                                         $d_8$      777         50                 
  2                                         $d_8$      778         50                 
  3                                         $d_8$      799         50                 
  4                                         $d_8$      778         50                 
  5                                         $d_8$      778         50                 
  6                                         $d_8$      779         50                 
  7                                         $d_8$      799         50                 
  8                                         $d_8$      778         50                 
  9                                         $d_8$      778         50                 
  10                                        $d_8$      798         50                 
  11                                        $d_8$      779         50                 
  12                                        $d_8$      778         50                 
  13                                        $d_8$      798         50                 
  14                                        $d_8$      779         50                 
  15                                        $d_8$      778         50                 
  16                                        $d_8$      797         50                 
  17                                        $d_8$      802         50                 
  18                                        $d_8$      778         50                 
  19                                        $d_8$      776         50                 
  20                                        $d_8$      799         50                 
  21                                        $d_8$      779         50                 
  22                                        $d_8$      780         50                 
  23                                        $d_8$      798         50                 
  24                                        $d_8$      797         50                 
  25                                        $d_8$      778         50                 
  26                                        $d_8$      780         50                 
  27                                        $d_8$      799         50                 
  28                                        $d_8$      779         50                 
  29                                        $d_8$      780         50                 
  30                                        $d_8$      777         50                 
  31                                        $d_8$      781         50                 
  32                                        $d_8$      799         50                 
  33                                        $d_8$      798         50                 
  34                                        $d_8$      779         50                 
  35                                        $d_8$      778         50                 
  36                                        $d_8$      798         50                 
  37                                        $d_8$      799         50                 
  38                                        $d_8$      779         50                 
  39                                        $d_8$      779         50                 
  40                                        $d_8$      801         50                 
  41                                        $d_8$      778         50                 
  42                                        $d_8$      800         50                 
  43                                        $d_8$      798         50                 
  44                                        $d_8$      779         50                 
  45                                        $d_8$      776         50                 
  46                                        $d_8$      796         50                 
  47                                        $d_8$      797         50                 
  48                                        $d_8$      779         50                 
  49                                        $d_8$      779         50                 
  50                                        $d_8$      796         50                 
  51                                        $d_8$      778         50                 
  52                                        $d_8$      778         50                 
  53                                        $d_8$      797         50                 
  54                                        $d_8$      796         50                 
  55                                        $d_8$      779         50                 
  56                                        $d_8$      782         50                 
  57                                        $d_8$      799         50                 
  58                                        $d_8$      797         50                 
  59                                        $d_8$      778         50                 
  60                                        $d_8$      778         50                 
  61                                        $d_8$      776         50                 
  62                                        $d_8$      776         50                 
  63                                        $d_8$      796         50                 
  64                                        $d_8$      779         50                 
  65                                        $d_8$      778         50                 
  66                                        $d_8$      778         50                 
  67                                        $d_8$      798         50                 
  68                                        $d_8$      777         50                 
  69                                        $d_8$      779         50                 
  70                                        $d_8$      779         50                 
  71                                        $d_8$      798         50                 
  72                                        $d_8$      779         50                 
  73                                        $d_8$      778         50                 
  74                                        $d_8$      799         50                 
  75                                        $d_8$      778         50                 
  76                                        $d_8$      780         50                 
  77                                        $d_8$      777         50                 
  78                                        $d_8$      799         50                 
  79                                        $d_8$      775         50                 
  80                                        $d_8$      779         50                 
  81                                        $d_8$      778         50                 
  82                                        $d_8$      799         50                 
  83                                        $d_8$      778         50                 
  84                                        $d_8$      781         50                 
  85                                        $d_8$      777         50                 
  86                                        $d_8$      797         50                 
  87                                        $d_8$      780         50                 
  88                                        $d_8$      778         50                 
  89                                        $d_8$      798         50                 
  90                                        $d_8$      792         50                 
  91                                        $d_8$      779         50                 
  92                                        $d_8$      797         50                 
  93                                        $d_8$      777         50                 
  94                                        $d_8$      777         50                 
  95                                        $d_8$      778         50                 
  96                                        $d_8$      795         50                 
  97                                        $d_8$      779         50                 
  98                                        $d_8$      780         50                 
  99                                        $d_8$      800         50                 
  100                                       $d_8$      797         50                 
  1                                         $d_9$      783         50                 
  2                                         $d_9$      797         50                 
  3                                         $d_9$      800         50                 
  4                                         $d_9$      798         50                 
  5                                         $d_9$      794         50                 
  6                                         $d_9$      778         50                 
  7                                         $d_9$      795         50                 
  8                                         $d_9$      798         50                 
  9                                         $d_9$      800         50                 
  10                                        $d_9$      799         50                 
  11                                        $d_9$      799         50                 
  12                                        $d_9$      797         50                 
  13                                        $d_9$      799         50                 
  14                                        $d_9$      797         50                 
  15                                        $d_9$      798         50                 
  16                                        $d_9$      800         50                 
  17                                        $d_9$      777         50                 
  18                                        $d_9$      796         50                 
  19                                        $d_9$      799         50                 
  20                                        $d_9$      797         50                 
  21                                        $d_9$      798         50                 
  22                                        $d_9$      795         50                 
  23                                        $d_9$      800         50                 
  24                                        $d_9$      800         50                 
  25                                        $d_9$      799         50                 
  26                                        $d_9$      800         50                 
  27                                        $d_9$      796         50                 
  28                                        $d_9$      798         50                 
  29                                        $d_9$      781         50                 
  30                                        $d_9$      798         50                 
  31                                        $d_9$      800         50                 
  32                                        $d_9$      800         50                 
  33                                        $d_9$      801         50                 
  34                                        $d_9$      797         50                 
  35                                        $d_9$      798         50                 
  36                                        $d_9$      799         50                 
  37                                        $d_9$      795         50                 
  38                                        $d_9$      799         50                 
  39                                        $d_9$      798         50                 
  40                                        $d_9$      795         50                 
  41                                        $d_9$      798         50                 
  42                                        $d_9$      799         50                 
  43                                        $d_9$      799         50                 
  44                                        $d_9$      800         50                 
  45                                        $d_9$      798         50                 
  46                                        $d_9$      781         50                 
  47                                        $d_9$      799         50                 
  48                                        $d_9$      801         50                 
  49                                        $d_9$      798         50                 
  50                                        $d_9$      797         50                 
  51                                        $d_9$      778         50                 
  52                                        $d_9$      798         50                 
  53                                        $d_9$      797         50                 
  54                                        $d_9$      801         50                 
  55                                        $d_9$      798         50                 
  56                                        $d_9$      801         50                 
  57                                        $d_9$      800         50                 
  58                                        $d_9$      802         50                 
  59                                        $d_9$      798         50                 
  60                                        $d_9$      799         50                 
  61                                        $d_9$      799         50                 
  62                                        $d_9$      797         50                 
  63                                        $d_9$      798         50                 
  64                                        $d_9$      778         50                 
  65                                        $d_9$      798         50                 
  66                                        $d_9$      801         50                 
  67                                        $d_9$      797         50                 
  68                                        $d_9$      797         50                 
  69                                        $d_9$      800         50                 
  70                                        $d_9$      798         50                 
  71                                        $d_9$      780         50                 
  72                                        $d_9$      798         50                 
  73                                        $d_9$      796         50                 
  74                                        $d_9$      800         50                 
  75                                        $d_9$      797         50                 
  76                                        $d_9$      797         50                 
  77                                        $d_9$      798         50                 
  78                                        $d_9$      799         50                 
  79                                        $d_9$      800         50                 
  80                                        $d_9$      797         50                 
  81                                        $d_9$      800         50                 
  82                                        $d_9$      798         50                 
  83                                        $d_9$      798         50                 
  84                                        $d_9$      801         50                 
  85                                        $d_9$      799         50                 
  86                                        $d_9$      797         50                 
  87                                        $d_9$      801         50                 
  88                                        $d_9$      798         50                 
  89                                        $d_9$      800         50                 
  90                                        $d_9$      798         50                 
  91                                        $d_9$      797         50                 
  92                                        $d_9$      801         50                 
  93                                        $d_9$      798         50                 
  94                                        $d_9$      799         50                 
  95                                        $d_9$      798         50                 
  96                                        $d_9$      797         50                 
  97                                        $d_9$      798         50                 
  98                                        $d_9$      803         50                 
  99                                        $d_9$      798         50                 
  100                                       $d_9$      799         50                 
  1                                         $d_{10}$   819         50                 
  2                                         $d_{10}$   799         50                 
  3                                         $d_{10}$   818         50                 
  4                                         $d_{10}$   819         50                 
  5                                         $d_{10}$   815         50                 
  6                                         $d_{10}$   817         50                 
  7                                         $d_{10}$   818         50                 
  8                                         $d_{10}$   798         50                 
  9                                         $d_{10}$   819         50                 
  10                                        $d_{10}$   819         50                 
  11                                        $d_{10}$   819         50                 
  12                                        $d_{10}$   817         50                 
  13                                        $d_{10}$   815         50                 
  14                                        $d_{10}$   819         50                 
  15                                        $d_{10}$   798         50                 
  16                                        $d_{10}$   819         50                 
  17                                        $d_{10}$   819         50                 
  18                                        $d_{10}$   818         50                 
  19                                        $d_{10}$   814         50                 
  20                                        $d_{10}$   818         50                 
  21                                        $d_{10}$   820         50                 
  22                                        $d_{10}$   818         50                 
  23                                        $d_{10}$   818         50                 
  24                                        $d_{10}$   799         50                 
  25                                        $d_{10}$   816         50                 
  26                                        $d_{10}$   819         50                 
  27                                        $d_{10}$   815         50                 
  28                                        $d_{10}$   819         50                 
  29                                        $d_{10}$   818         50                 
  30                                        $d_{10}$   818         50                 
  31                                        $d_{10}$   817         50                 
  32                                        $d_{10}$   819         50                 
  33                                        $d_{10}$   814         50                 
  34                                        $d_{10}$   819         50                 
  35                                        $d_{10}$   818         50                 
  36                                        $d_{10}$   818         50                 
  37                                        $d_{10}$   826         50                 
  38                                        $d_{10}$   818         50                 
  39                                        $d_{10}$   816         50                 
  40                                        $d_{10}$   818         50                 
  41                                        $d_{10}$   818         50                 
  42                                        $d_{10}$   816         50                 
  43                                        $d_{10}$   818         50                 
  44                                        $d_{10}$   799         50                 
  45                                        $d_{10}$   818         50                 
  46                                        $d_{10}$   817         50                 
  47                                        $d_{10}$   816         50                 
  48                                        $d_{10}$   820         50                 
  49                                        $d_{10}$   799         50                 
  50                                        $d_{10}$   819         50                 
  51                                        $d_{10}$   819         50                 
  52                                        $d_{10}$   816         50                 
  53                                        $d_{10}$   818         50                 
  54                                        $d_{10}$   819         50                 
  55                                        $d_{10}$   818         50                 
  56                                        $d_{10}$   818         50                 
  57                                        $d_{10}$   820         50                 
  58                                        $d_{10}$   815         50                 
  59                                        $d_{10}$   818         50                 
  60                                        $d_{10}$   797         50                 
  61                                        $d_{10}$   817         50                 
  62                                        $d_{10}$   816         50                 
  63                                        $d_{10}$   820         50                 
  64                                        $d_{10}$   818         50                 
  65                                        $d_{10}$   819         50                 
  66                                        $d_{10}$   818         50                 
  67                                        $d_{10}$   799         50                 
  68                                        $d_{10}$   820         50                 
  69                                        $d_{10}$   819         50                 
  70                                        $d_{10}$   817         50                 
  71                                        $d_{10}$   798         50                 
  72                                        $d_{10}$   818         50                 
  73                                        $d_{10}$   817         50                 
  74                                        $d_{10}$   816         50                 
  75                                        $d_{10}$   818         50                 
  76                                        $d_{10}$   819         50                 
  77                                        $d_{10}$   796         50                 
  78                                        $d_{10}$   798         50                 
  79                                        $d_{10}$   818         50                 
  80                                        $d_{10}$   818         50                 
  81                                        $d_{10}$   816         50                 
  82                                        $d_{10}$   818         50                 
  83                                        $d_{10}$   795         50                 
  84                                        $d_{10}$   799         50                 
  85                                        $d_{10}$   818         50                 
  86                                        $d_{10}$   820         50                 
  87                                        $d_{10}$   818         50                 
  88                                        $d_{10}$   819         50                 
  89                                        $d_{10}$   798         50                 
  90                                        $d_{10}$   799         50                 
  91                                        $d_{10}$   798         50                 
  92                                        $d_{10}$   798         50                 
  93                                        $d_{10}$   819         50                 
  94                                        $d_{10}$   818         50                 
  95                                        $d_{10}$   800         50                 
  96                                        $d_{10}$   798         50                 
  97                                        $d_{10}$   798         50                 
  98                                        $d_{10}$   797         50                 
  99                                        $d_{10}$   818         50                 
  100                                       $d_{10}$   815         50                 
  [\[output3\]]{#output3 label="output3"}
