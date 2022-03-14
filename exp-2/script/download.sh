#!/bin/bash

# this script download csv file from google sheet

curl -kL "https://docs.google.com/spreadsheets/d/e/2PACX-1vR-wlwiuh5DDUhU_e-6ArOxfwhZGByX_0iNNh5woRCv14tC7gKqGMi9AZnR4ffdUW0Suvegsn3rT1fF/pub?gid=0&single=true&output=csv" > ../data/experimental-data-1.csv
curl -kL "https://docs.google.com/spreadsheets/d/e/2PACX-1vR-wlwiuh5DDUhU_e-6ArOxfwhZGByX_0iNNh5woRCv14tC7gKqGMi9AZnR4ffdUW0Suvegsn3rT1fF/pub?gid=1208652346&single=true&output=csv" > ../data/experimental-data-2.csv
curl -kL "https://docs.google.com/spreadsheets/d/e/2PACX-1vR-wlwiuh5DDUhU_e-6ArOxfwhZGByX_0iNNh5woRCv14tC7gKqGMi9AZnR4ffdUW0Suvegsn3rT1fF/pub?gid=801117007&single=true&output=csv" > ../data/tools.csv