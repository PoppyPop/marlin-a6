#!/bin/bash
#

MARLIN_VER=1.1.8


wget https://github.com/MarlinFirmware/Marlin/archive/${MARLIN_VER}.tar.gz

tar zxvf ${MARLIN_VER}.tar.gz

cp -f Configuration.h ${MARLIN_VER}/Marlin/Configuration.h
cp -f Configuration_adv.h ${MARLIN_VER}/Marlin/Configuration_adv.h