#!/bin/bash

if [ ! -d env ]
then
    echo "Erster Aufruf. Einen Augenblick..."
    python3 -mvenv env
    env/bin/pip install -r webgen/requirements.txt
fi

echo "Erzeuge Website..."
env/bin/python webgen/generate.py
echo "Fertig."
