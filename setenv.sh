#! /bin/bash

TOOLCHAIN_DIR=~/
armv7_TOOLCHAIN=${TOOLCHAIN_DIR}/msc-ldk-toolchain-v7
armv8_TOOLCHAIN=${TOOLCHAIN_DIR}/msc-ldk-toolchain-v8

if [ -d "$armv7_TOOLCHAIN" ]; then
	echo "$armv7_TOOLCHAIN is found"
else
	echo "$armv7_TOOLCHAIN is not found"
	FILE=${TOOLCHAIN_DIR}/gcc-arm-9.2-2019.12-x86_64-arm-none-linux-gnueabihf.tar.xz
	if [ ! -f "$FILE" ]; then
	    echo "downloading...."
	    wget -P ${TOOLCHAIN_DIR} https://developer.arm.com/-/media/Files/downloads/gnu-a/9.2-2019.12/binrel/gcc-arm-9.2-2019.12-x86_64-arm-none-linux-gnueabihf.tar.xz
	fi
	tar -Jxvf ${TOOLCHAIN_DIR}/gcc-arm-9.2-2019.12-x86_64-arm-none-linux-gnueabihf.tar.xz -C ${TOOLCHAIN_DIR}
	mv ${TOOLCHAIN_DIR}/gcc-arm-9.2-2019.12-x86_64-arm-none-linux-gnueabihf ${TOOLCHAIN_DIR}/msc-ldk-toolchain-v7 
fi

if [ -d "$armv8_TOOLCHAIN" ]; then
	echo "$armv8_TOOLCHAIN is found"
else
	echo "$armv8_TOOLCHAIN is not found"
	FILE=${TOOLCHAIN_DIR}/gcc-arm-9.2-2019.12-x86_64-aarch64-none-linux-gnu.tar.xz
	if [ ! -f "$FILE" ]; then
	    echo "downloading...."
	    wget -P ${TOOLCHAIN_DIR} https://developer.arm.com/-/media/Files/downloads/gnu-a/9.2-2019.12/binrel/gcc-arm-9.2-2019.12-x86_64-aarch64-none-linux-gnu.tar.xz
	fi
	tar -Jxvf ${TOOLCHAIN_DIR}/gcc-arm-9.2-2019.12-x86_64-aarch64-none-linux-gnu.tar.xz -C ${TOOLCHAIN_DIR}
	mv ${TOOLCHAIN_DIR}/gcc-arm-9.2-2019.12-x86_64-aarch64-none-linux-gnu ${TOOLCHAIN_DIR}/msc-ldk-toolchain-v8
fi
