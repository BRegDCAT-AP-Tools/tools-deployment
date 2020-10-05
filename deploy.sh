#!/usr/bin/env bash

set -e
set -x

PATH_TOOLS=${PATH_TOOLS:-"./tools"}
PATH_CREATOR=${PATH_CREATOR:-"creator"}

rm -fr ${PATH_TOOLS}
mkdir -p ${PATH_TOOLS}

git clone https://github.com/BRegDCAT-AP-Tools/breg-dcat-creator.git ${PATH_TOOLS}/${PATH_CREATOR}

docker-compose up -d --build