#!/bin/sh
set -euo pipefail

cd /tools
wget https://boostorg.jfrog.io/artifactory/main/release/1.69.0/source/boost_1_69_0.tar.gz
tar -xzvf boost_1_69_0.tar.gz && cd boost_1_69_0
./bootstrap.sh --with-libraries=program_options,filesystem,system,date_time
./b2 --clean && ./b2 --j12 -a