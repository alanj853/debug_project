#!/bin/bash

WORKSPACE=$PWD/workspace
OTP_24_INSTALL=$WORKSPACE/otp_24.1.3_install

cp -v $OTP_24_INSTALL/lib/erlang/erts-12.1.3/bin/beam.smp.bak $OTP_24_INSTALL/lib/erlang/erts-12.1.3/bin/beam.smp