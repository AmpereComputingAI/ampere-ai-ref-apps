#!/bin/bash

export GRADIO_SERVER_NAME="0.0.0.0"
export GRADIO_SERVER_PORT=5000
export INSTANCE_NAME='Tencent SR1'
export NSTREAMS=2
export NTHREADS=16
export HOST_PORT=5000

cont_name="cont-1"
docker compose -p $cont_name  up -d app-yolo-live
#docker compose -p   $cont_name run -p 5000:5000 --entrypoint /bin/bash app-yolo-live
