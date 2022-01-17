#!/bin/bash

set -x

apt-get update
apt-get -y install git
pip install sphinx-autoapi==1.8.4 gitpython
pip install pydata-sphinx-theme==0.7.2 gitpython

# Making master doc
cd $TAICHI_PATH
git fetch --tags
git checkout master
cd $DOCSTRING_GEN_PATH
cd experimental
export current_version=master
make clean
make version
make apideploy

cd $TAICHI_PATH
latestTag=$(git describe --tags `git rev-list --tags --max-count=1`)
git checkout $latestTag

cd $DOCSTRING_GEN_PATH
cd experimental
export current_version=$latestTag
make version
make apideploy
#versions="`git for-each-ref '--format=%(refname:lstrip=-1)' refs/tags | grep -viE '^(HEAD|gh-pages)$'`"
#for current_version in ${versions}; do
#    export current_version
#    echo $current_version
#done
