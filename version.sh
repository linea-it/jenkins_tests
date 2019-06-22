#!/bin/bash

GIT_TAG=$(`git describe --tags ${GIT_COMMIT}`)

cat >./version.json <<EOF
    {
        "tag": "$GIT_TAG",
        "sha": "$GIT_COMMIT",
        "url": "$GIT_URL"
    }
EOF