#!/bin/bash
set -e
tag=$1

# if [[ $(git ls-remote --exit-code --tags origin $tag) ]]; then
#   git push --delete origin $tag
# fi
git tag $tag -f
git push origin --tags