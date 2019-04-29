#!/bin/sh

REQ_FILE="requirements.txt"

if [ -f ${REQ_FILE} ]; then
    pip install -r ${REQ_FILE}
fi