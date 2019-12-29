#!/bin/bash

# install Google Python client on all nodes
apt-get update
apt-get install -y python3-pip
pip3 install --upgrade google-api-python-client

ROLE=$(/usr/share/google/get_metadata_value attributes/dataproc-role)
if [[ "${ROLE}" == 'Master' ]]; then
   git clone https://github.com/GoogleCloudPlatform/training-data-analyst
fi
