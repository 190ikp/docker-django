#!/bin/bash

if [ $REQUIREMENTS ]; then
  pip install --no-cache-dir -r $REQUIREMENTS
fi

apt autoremove