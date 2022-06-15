#!/bin/bash

echo "Starting Server...";
sudo ../dump1090/dump1090 --write-json ./data/ > /dev/null 2>&1 &

echo "Starting Map...";
. ./env/bin/activate
. environment.sh
python src/app.py
