#!/bin/bash

export CONFIG_FILE="cfg/config.yaml"
export GRADIO_SERVER_NAME="0.0.0.0"
export GRADIO_SERVER_PORT=5000
export HOST_PORT=5000
export NSTREAMS=4
export NTHREADS=16
#export VIDEO_SRC='examples/Driving-Vegas-360p-jutah.mp4'

docker compose build app-yolo-live

cont_name="cont-1"
docker compose -p $cont_name up -d app-yolo-live
#docker compose -p $cont_name run  -p 5000:5000 --entrypoint /bin/bash app-yolo-live
