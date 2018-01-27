#!/bin/bash
#

MARLIN_VER=1.1.8

curl -L https://github.com/MarlinFirmware/Marlin/archive/${MARLIN_VER}.tar.gz -o ${MARLIN_VER}.tar.gz

tar zxf ${MARLIN_VER}.tar.gz

rm ${MARLIN_VER}.tar.gz

cp -f Configuration.h Marlin-${MARLIN_VER}/Marlin/Configuration.h
cp -f Configuration_adv.h Marlin-${MARLIN_VER}/Marlin/Configuration_adv.h