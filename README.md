To run:

SYS_DIR=/home/pokyuser/.nerves/artifacts/nerves_system_poky-portable-3.1.14-20/toolchain/sysroots/x86_64-pokysdk-linux V=1 ERL_ROOTDIR=/home/pokyuser/.asdf/installs/erlang/24.1.3 ERTS_INCLUDE_DIR=/home/pokyuser/.asdf/installs/erlang/24.1.3/erts-12.1.3/include LD_LIBRARY_PATH=$SYS_DIR/usr/lib:$LD_LIBRARY_PATH iex -S mix

