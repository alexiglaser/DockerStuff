#!/bin/bash

set -e
set -u

docker build . -f Dockerfile-lab-0.35.4 -t general_notebook_lab_0.35.4