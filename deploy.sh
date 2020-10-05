#!/usr/bin/env bash

set -e
set -x

URL_GIT_CREATOR="https://github.com/BRegDCAT-AP-Tools/breg-dcat-creator.git"
URL_GIT_MAPPING="https://github.com/BRegDCAT-AP-Tools/breg-dcat-mapping.git"
URL_GIT_EDITOR="https://github.com/BRegDCAT-AP-Tools/breg-dcat-editor.git"
URL_GIT_HARVESTER="https://github.com/BRegDCAT-AP-Tools/breg-dcat-harvester.git"

PATH_TOOLS="tools"
PATH_CREATOR="creator"
PATH_MAPPING="mapping"
PATH_EDITOR="editor"
PATH_HARVESTER="harvester"

export HARVESTER_SOURCES="$(cat ./sources.json)"

rm -fr ${PATH_TOOLS}
mkdir -p ${PATH_TOOLS}

git clone ${URL_GIT_CREATOR} ${PATH_TOOLS}/${PATH_CREATOR}
git clone ${URL_GIT_MAPPING} ${PATH_TOOLS}/${PATH_MAPPING}
git clone ${URL_GIT_EDITOR} ${PATH_TOOLS}/${PATH_EDITOR}
git clone ${URL_GIT_HARVESTER} ${PATH_TOOLS}/${PATH_HARVESTER}

docker-compose up -d --build