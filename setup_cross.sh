#!/bin/bash

source /opt/poky/rzn1/environment-setup-armv7vet2hf-vfpv4d16-poky-linux-gnueabi

WORKSPACE=$PWD/workspace.cross
OTP_24_INSTALL=$WORKSPACE/otp_24.1.3_install
OTP_24_BIN_DIR=$OTP_24_INSTALL/bin
OTP_24_SRC=$WORKSPACE/otp_24.1.3_src
ELIXIR_SRC=$WORKSPACE/elixir
X_SYSROOT=/opt/poky/rzn1/sysroots/armv7vet2hf-vfpv4d16-poky-linux-gnueabi
export erl_xcomp_sysroot=$X_SYSROOT

mkdir -p $WORKSPACE $OTP_24_INSTALL

# clone repos
git clone --depth 1 --branch OTP-24.1.3 git@github.com:erlang/otp.git $OTP_24_SRC
git clone --depth 1 --branch v1.12.1 git@github.com:elixir-lang/elixir.git $ELIXIR_SRC


## compile erlang
cd $OTP_24_SRC
./configure \
    --prefix=$OTP_24_INSTALL \
    --build=x86_64-linux \
    --target=arm-poky-linux-gnueabi \
    --host=arm-poky-linux-gnueabi \
    --without-javac \
    --without-dynamic-trace \
    --without-odbc \
    --without-observer \
    --disable-silent-rules \
    --disable-dependency-tracking \
    --disable-static \
    --disable-option-checking \
    --with-libtool-sysroot=$X_SYSROOT


### compile regular
make -j 32
### compile debug
make TYPE=debug

### install regular
make install

### install debug
make install TYPE=debug


## compile elixir
# cd $ELIXIR_SRC
# PATH=$OTP_24_BIN_DIR:$PATH make

