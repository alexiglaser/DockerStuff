#!/bin/bash

set -e
set -u

docker run -e JUPYTER_ENABLE_LAB=yes -e JUPYTER_ENABLE_LAB=yes -p 8888:8888 -v "$PWD":/home/jovyan/work -it general_notebook
