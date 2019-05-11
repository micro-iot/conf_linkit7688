#!/bin/bash

if [ ! $(basename $(pwd)) == "poky" ]; then echo "Error! Must be run inside poky directory!"; exit 1; fi

git apply --check ./meta-linkit7688/recipes-kernel/swconfig/micro-iot-poky-patch-for-swconfig/0001-Added-user-headers-in-kernel-class.patch &&\
git am ./meta-linkit7688/recipes-kernel/swconfig/micro-iot-poky-patch-for-swconfig/0001-Added-user-headers-in-kernel-class.patch

. oe-init-build-env build
bitbake micro-iot-basic-image
