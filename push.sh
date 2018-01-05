#!/bin/bash
cd $(dirname "$0")
HOST=dirty-hippo.iad03.hubspot-networks.net
mvn -nsu clean package
#rm -v out/*
cd ../
rsync -avz $HOST:~/SeatSolver/out/ ./SeatSolver/out/ &>/dev/null
rsync -avz SeatSolver/ $HOST:~/SeatSolver/
#/usr/bin/scp SeatSolver/data/data.json $HOST:~/SeatSolver/data/
