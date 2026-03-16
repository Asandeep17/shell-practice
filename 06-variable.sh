#!/bin/bash


START_TIME=$(date +%s)
 
  echo "script executed at: $START_TIME"
  sleep 10

  ENDTIME=$(date +%s)

  TOTAL_TIME=$($ENDTIME-$START_TIME)

  echo "script executed in :$TOTAL_TIME"