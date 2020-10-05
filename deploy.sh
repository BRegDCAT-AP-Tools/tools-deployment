#!/usr/bin/env bash

set -e
set -x

URL_GIT_CREATOR="https://github.com/BRegDCAT-AP-Tools/breg-dcat-creator.git"
URL_GIT_MAPPING="https://github.com/BRegDCAT-AP-Tools/breg-dcat-mapping.git"

PATH_TOOLS=${PATH_TOOLS:-"tools"}
PATH_CREATOR=${PATH_CREATOR:-"creator"}
PATH_MAPPING=${PATH_MAPPING:-"mapping"}

rm -fr ${PATH_TOOLS}
mkdir -p ${PATH_TOOLS}

git clone ${URL_GIT_CREATOR} ${PATH_TOOLS}/${PATH_CREATOR}
git clone ${URL_GIT_MAPPING} ${PATH_TOOLS}/${PATH_MAPPING}

docker-compose up -d --build