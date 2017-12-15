#!/bin/bash


cd /opt/monroe/
export PATH=$PATH:/opt/monroe/

START=$(date +%s)

echo -n "Container is starting at $START - "
date

echo -n "Experiment starts using git version "
cat VERSION

python experiment.py

tar -zcvf /monroe/results/results$RANDOM.tgz /tmp/*.json

STOP=$(date +%s)
DIFF=$(($STOP - $START))

echo -n "Container is finished at $STOP - "
date

echo "Container was running for $DIFF seconds"

