#!/bin/bash

export GRADIO_SERVER_NAME="0.0.0.0"
export GRADIO_SERVER_PORT=5001
export HOST_PORT=5002
export INSTANCE_NAME='GCP T2A'
export NSTREAMS=1
export NTHREADS=16

cont_name="cont-1"
docker compose -p $cont_name up -d app-whisper
