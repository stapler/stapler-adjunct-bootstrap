#!/bin/bash -ex
wget -O bootstrap.zip https://github.com/twbs/bootstrap/archive/v3.3.4.zip
zip=$PWD/bootstrap.zip
cd src/main/bootstrap/org/kohsuke/stapler
rm -rf *
unzip $zip
mkdir bootstrap3
D=$PWD/bootstrap3

# move only the stuff we care --- dist & less
pushd bootstrap-*
  mv dist/* $D
  mv less $D
popd
rm -rf bootstrap-*
