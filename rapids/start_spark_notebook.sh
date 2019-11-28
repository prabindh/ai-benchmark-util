#!/usr/bin/env bash

docker run \
--rm \
-d \
-p 8886:8888 \
-v /mnt:/mnt \
-v "$PWD":/home/jovyan/work \
-v /mnt:/home/jovyan/mnt \
-e JUPYTER_ENABLE_LAB=yes \
--name spark-notebook \
jupyter/all-spark-notebook:ae5f7e104dd5