#!/bin/bash

export CONFIG_FILE="cfg/config.yaml"
export GRADIO_SERVER_NAME="0.0.0.0"
export GRADIO_SERVER_PORT=5001
export NSTREAMS=1
export NTHREADS=64
export AIO_NUM_THREADS=64
export HOST_PORT=5001

cont_name="whisper-video"
docker compose -p $cont_name up -d app-whisper
