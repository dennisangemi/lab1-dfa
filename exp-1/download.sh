#!/bin/bash

# this script download csv file from google sheet

curl -kL "https://docs.google.com/spreadsheets/d/e/2PACX-1vSC3Gk4j3Y8cfINnphnT1vhJcTuift2Doi90v9b_dOSIzSWogT87rn0idNxg6YGJPIPi07q6yoWcgeh/pub?gid=411878775&single=true&output=csv" > experimental-data-1.csv
curl -kL "https://docs.google.com/spreadsheets/d/e/2PACX-1vSC3Gk4j3Y8cfINnphnT1vhJcTuift2Doi90v9b_dOSIzSWogT87rn0idNxg6YGJPIPi07q6yoWcgeh/pub?gid=2005386097&single=true&output=csv" > experimental-data-2.csv
curl -kL "https://docs.google.com/spreadsheets/d/e/2PACX-1vSC3Gk4j3Y8cfINnphnT1vhJcTuift2Doi90v9b_dOSIzSWogT87rn0idNxg6YGJPIPi07q6yoWcgeh/pub?gid=1971590321&single=true&output=csv" > tools.csv