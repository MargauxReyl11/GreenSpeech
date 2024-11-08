#! /usr/bin/env bash

set -e

# display python version
python3 --version

# If venv directory does not exist, initialize it
if ! [[ -d venv ]]; then
    python3 -m venv venv
fi

# enter the virtual environment
source venv/bin/activate

# install requirements file
pip install -r requirements.txt

echo "Make sure to activate the virtual environment with:"
echo "    source venv/bin/activate"