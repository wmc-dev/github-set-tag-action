#!/bin/bash
set -e
tag=$1

if [[ $(git ls-remote --exit-code --tags origin $tag) ]]; then
  git tag --delete $tag
  git push --delete origin :refs/tags/$tag
fi
git tag $tag
git push origin --tags