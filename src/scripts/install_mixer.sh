cd /tools
wget https://boostorg.jfrog.io/artifactory/main/release/1.69.0/source/boost_1_69_0.tar.gz
tar -xzvf boost_1_69_0.tar.gz && cd boost_1_69_0
./bootstrap.sh --with-libraries=program_options,filesystem,system,date_time
./b2 --clean && ./b2 --j12 -a
cd /tools
git clone --recurse-submodules -j8 https://github.com/precimed/mixer.git
git reset --hard 2b5ad6b2d9ab5b92d8dd24ec106338af61e27a80
mkdir mixer/src/build && cd mixer/src/build && cmake .. -DBoost_NO_BOOST_CMAKE=ON -DBOOST_ROOT=/tools/boost_1_69_0 && make -j16 bgmg
	
