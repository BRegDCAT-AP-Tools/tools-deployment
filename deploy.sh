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

rm -fr ${PATH_TOOLS}
mkdir -p ${PATH_TOOLS}

git clone ${URL_GIT_CREATOR} ${PATH_TOOLS}/${PATH_CREATOR}
git clone ${URL_GIT_MAPPING} ${PATH_TOOLS}/${PATH_MAPPING}
git clone ${URL_GIT_EDITOR} ${PATH_TOOLS}/${PATH_EDITOR}
git clone ${URL_GIT_HARVESTER} ${PATH_TOOLS}/${PATH_HARVESTER}

export HARVESTER_SOURCES='[["https://gist.githubusercontent.com/agmangas/b07a69fd8a4d415c8e3d7a7dff7e41e5/raw/e3d574fdcdd14a11acce566c98486bca3a0f1fa4/breg-sample-01.xml", "xml"], ["https://gist.githubusercontent.com/agmangas/5f737b17ebf97c318e2ca3b4099c4c19/raw/5a1411286eb86a9689230ffcd3052a72fee05d74/breg-sample-02.ttl", "turtle"], ["https://gist.githubusercontent.com/agmangas/6ddc1e3405d9e890c74f2c1daf28c3fc/raw/623c2392276ecd6b86201744e1eecea324b0ef4c/breg-sample-03.json", "json-ld"]]'

docker-compose up -d --build