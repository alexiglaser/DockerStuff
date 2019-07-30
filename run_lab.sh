#!/bin/bash

set -e
set -u

docker run -e JUPYTER_ENABLE_LAB=yes -e JUPYTER_ENABLE_LAB=yes -p 9999:8888 -v "$PWD":/home/jovyan/work -it general_notebook_lab_0.35.4
