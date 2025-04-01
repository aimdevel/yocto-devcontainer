#!/bin/bash

POKY_URL="https://github.com/yoctoproject/poky.git"
YOCTO_VER="scarthgap"

mkdir sources
git clone ${POKY_URL} -b ${YOCTO_VER} sources/poky
. sources/poky/oe-init-build-env
