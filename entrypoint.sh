#!/bin/sh

set -e

tag=${INPUT_TAG}
message=${INPUT_MESSAGE}
signed=${INPUT_SIGNED}
echo signed
git config user.name "${GITHUB_ACTOR}"
git config user.email "${GITHUB_ACTOR}@users.noreply.github.com"

git tag -a "${tag}" -m "${message}"
git push origin "${tag}"
