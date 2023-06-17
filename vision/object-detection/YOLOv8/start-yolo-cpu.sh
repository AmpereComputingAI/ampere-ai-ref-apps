#!/bin/bash

export GRADIO_SERVER_NAME="0.0.0.0"
export GRADIO_SERVER_PORT=5000
export NSTREAMS=4
export NTHREADS=16
export HOST_PORT=5000

cont_name="cont-1"
docker compose -p $cont_name up -d app-yolo-live
