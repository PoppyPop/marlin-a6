#!/bin/bash
#

#MARLIN_VER=1.1.8
#GIT_VER=1.1.x
GIT_VER=bugfix-1.1.x

rm -rf Marlin-src

if [ -z ${MARLIN_VER+x} ]; then
	if [ -z ${GIT_VER+x} ]; then
		echo "Zip or Git version is mandatory" 
		exit 1
	else
		git clone -b ${GIT_VER} --single-branch https://github.com/MarlinFirmware/Marlin.git Marlin-src
		# git clone -b bugfix-1.1.x --single-branch https://github.com/MarlinFirmware/Marlin.git Marlin-src
	fi
else
	curl -L https://github.com/MarlinFirmware/Marlin/archive/${MARLIN_VER}.tar.gz -o ${MARLIN_VER}.tar.gz

	tar zxf ${MARLIN_VER}.tar.gz

	rm ${MARLIN_VER}.tar.gz
	
	mv Marlin-${MARLIN_VER} Marlin-src
fi

cp -f Configuration.h Marlin-src/Marlin/Configuration.h
cp -f Configuration_adv.h Marlin-src/Marlin/Configuration_adv.h