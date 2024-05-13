#!/bin/sh
set -euo pipefail

cd /tools
git config --global http.sslVerify false  # suppress error w. gnutls_handshake() failed: The TLS connection was non-properly terminated.
git clone --recurse-submodules https://github.com/precimed/mixer.git
cd mixer
git reset --hard 2b5ad6b2d9ab5b92d8dd24ec106338af61e27a80
git apply /tmp/CMakeLists.patch
mkdir src/build
cd src/build
cmake .. -DBoost_NO_BOOST_CMAKE=ON -DBOOST_ROOT=/tools/boost_1_69_0
make -j16 bgmg
	
