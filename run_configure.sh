#!/bin/sh

export AR="/opt/wasi-sdk/bin/ar"
export AS="/opt/wasi-sdk/bin/as"
export CC="/opt/wasi-sdk/bin/clang"
export LD="/opt/wasi-sdk/bin/ld.lld"
export RANLIB="/opt/wasi-sdk/bin/ranlib"
export CFLAGS="-Wl,--allow-undefined-file=$PWD/wasio-symbols.txt"
#export CPPFLAGS=""

./configure --host wasm32 \
    --disable-shared --disable-thread --disable-threaded-resolver \
    --without-libpsl --disable-netrc --disable-unix-sockets \
    --disable-ipv6 --disable-tftp \
    --with-ssl=/home/zhy/Projects/openssl-wasi/OpenSSL \
    --disable-ntlm-wb
