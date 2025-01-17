WORKSPACE=$PWD/workspace
OTP_24_INSTALL=$WORKSPACE/otp_24.1.3_install
OTP_24_BIN_DIR=$OTP_24_INSTALL/bin
OTP_24_SRC=$WORKSPACE/otp_24.1.3_src
ELIXIR_SRC=$WORKSPACE/elixir
ELIXIR_BIN_DIR=$ELIXIR_SRC/bin

# location of sqlite headers and libs
SYS_ROOT=/home/pokyuser/.nerves/artifacts/nerves_system_poky-portable-3.1.14-20/toolchain/sysroots/x86_64-pokysdk-linux

# needed for runtime to find .so files
export LD_LIBRARY_PATH=$SYS_ROOT/usr/lib:$LD_LIBRARY_PATH
export PATH=$OTP_24_BIN_DIR:$ELIXIR_BIN_DIR:$PATH

iex -S mix