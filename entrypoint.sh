#!/bin/sh

set -e

tag=${INPUT_TAG}
message=${INPUT_MESSAGE}
signed=${INPUT_SIGNED}
echo ${signed}
git config user.name "${GITHUB_ACTOR}"
git config user.email "${GITHUB_ACTOR}@users.noreply.github.com"

if [${signed}]
then
    git tag -s -a "${tag}" -m "${message}"
else
    git tag -a "${tag}" -m "${message}"
fi
git push origin "${tag}"
