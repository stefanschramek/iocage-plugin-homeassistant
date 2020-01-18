#!/bin/sh

pw user add -n homeassistant -u 8123 -d /nonexistent -s /usr/local/bin/bash

mkdir -p /usr/local/share/homeassistant
chown -R homeassistant:homeassistant /usr/local/share/homeassistant

su homeassistant
cd /usr/local/share/homeassistant
python3.7 -m venv .
source ./bin/activate
pip3 install --upgrade pip
pip3 install homeassistant
exit


