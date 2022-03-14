#!/bin/bash

# this script download csv file from google sheet

curl -kL "https://docs.google.com/spreadsheets/d/e/2PACX-1vRsnbwUdgR1mJ93T8UzvJ2FddOUyKQQg16RxrLidZLF7ZKuUecHrw1sSFC8jCmoJb2omr2jBJ7w04Jf/pub?gid=0&single=true&output=csv" > ../data/experimental-data-1.csv
curl -kL "https://docs.google.com/spreadsheets/d/e/2PACX-1vRsnbwUdgR1mJ93T8UzvJ2FddOUyKQQg16RxrLidZLF7ZKuUecHrw1sSFC8jCmoJb2omr2jBJ7w04Jf/pub?gid=902704345&single=true&output=csv" > ../data/experimental-data-2.csv
curl -kL "https://docs.google.com/spreadsheets/d/e/2PACX-1vRsnbwUdgR1mJ93T8UzvJ2FddOUyKQQg16RxrLidZLF7ZKuUecHrw1sSFC8jCmoJb2omr2jBJ7w04Jf/pub?gid=174989412&single=true&output=csv" > ../data/tools.csv