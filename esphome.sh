#!/bin/sh

set -euo pipefail

if ! [ -d "venv" ] ; then
	virtualenv ./venv
	./venv/bin/pip install esphome
fi

exec ./venv/bin/esphome "$@"
