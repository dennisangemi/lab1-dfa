# Laboratorio di Fisica I
Dipartimento di Fisica e Astronomia, Università degli Studi di Catania

In questo repo verranno caricati i dati sperimentali e gli script realizzati nell'ambito del corso di Laboratorio di Fisica I (2021).

## Struttura repository
```
📂lab1
└── 📂exp-n
    ├── 📂data
    │   ├── 📄datapackage.yaml
    │   └── 📄experimental-data-n.csv
    ├── 📂img
    │   └── 📄img-n.png
    ├── 📂report
    │   ├── 📄report.md
    │   └── 📄report.tex
    └── 📂script
        ├── 📄livescript.mlx
        └── 📄script.m
```

## Metadati
Ogni cartella `exp-n` è dotata di un file denominato `datapackage.yaml` che contiene i metadati dei file CSV in accordo con gli standard [fricrionless data](https://frictionlessdata.io/standards/#standards-toolkit).

### Unità di misura
Attualmente le unità di misura presenti nei file CSV (campo `uom` acronimo di "unit of measure") sono quelle del SI. Verranno in seguito sostituite con i codici standard introdotti dalla [Reccomendation 20 dell'UNECE](https://datahub.io/core/unece-units-of-measure) come da [issue #8](https://github.com/dennisangemi/lab1-dfa/issues/8).

## Licenza
<a href="https://creativecommons.org/licenses/by/4.0/"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/CC-BY_icon.svg/640px-CC-BY_icon.svg.png" width="150"/></a>

## Author
**Dennis Angemi**

📫 How to reach me:
  - [Email](mailto:dennisangemi@gmail.com)
  - [Twitter](https://twitter.com/dennisangemi)
  - [Telegram](https://t.me/dennisangemi)
  - [Instagram](http://instagram.com/dennisangemi)
