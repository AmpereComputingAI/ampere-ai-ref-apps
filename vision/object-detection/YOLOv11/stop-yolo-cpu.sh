#!/bin/bash

cont_name="cont-1"
docker compose -p $cont_name down --remove-orphans
