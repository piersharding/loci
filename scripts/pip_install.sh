#!/bin/bash

set -ex

packages=$@

# ram this one home as it break elsewhere
pip install enum-compat

pip install --no-cache-dir --only-binary :all: --no-compile -c /tmp/wheels/upper-constraints.txt --find-links /tmp/wheels/ ${PIP_ARGS} ${packages}
