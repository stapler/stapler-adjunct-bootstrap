#!/bin/bash -ex
wget -O bootstrap.zip http://twitter.github.com/bootstrap/assets/bootstrap.zip
zip=$PWD/bootstrap.zip
cd src/main/bootstrap/org/kohsuke/stapler
rm -rf bootstrap
unzip $zip
