sudo apt-get update -y && sudo apt-get dist-upgrade -y
sudo dpkg-reconfigure tzdata
mkdir ~/snort_src
cd ~/snort_src
sudo apt-get install -y build-essential autotools-dev libdumbnet-dev libluajit-5.1-dev libpcap-dev zlib1g-dev pkg-config libhwloc-dev make liblzma-dev openssl libssl-dev cpputest libsqlite3-dev uuid-dev
sudo apt-get install -y libtool git autoconf bison flex libcmocka-dev libnetfilter-queue-dev libmnl-dev libnetfilter-queue-dev libmnl-dev
cd ~/snort_src
wget https://github.com/rurban/safeclib/releases/download/v08112019/libsafec-08112019.0-gad76c7.tar.gz
tar -xzvf libsafec-08112019.0-gad76c7.tar.gz
cd libsafec-08112019.0-gad76c7/
./configure
make
sudo make install
cd ~/snort_src/
wget https://ftp.pcre.org/pub/pcre/pcre-8.43.tar.gz
tar -xzvf pcre-8.43.tar.gz
cd pcre-8.43
./configure
make
sudo make install
sudo apt-get install -y libnuwind-dev
cd ~/snort_src
wget https://github.com/gperftools/gperftools/releases/download/gperftools-2.7.90/gperftools-2.7.90.tar.gz
tar xzvf gperftools-2.7.90.tar.gz
cd gperftools-2.7.90
./configure
make
sudo make install
cd ~/snort_src
wget http://www.colm.net/files/ragel/ragel-6.10.tar.gz
ar -xzvf ragel-6.10.tar.gz
cd ragel-6.10
./configure
make
sudo make install
cd ~/snort_src
wget https://dl.bintray.com/boostorg/release/1.72.0/source/boost_1_72_0.tar.gz
tar -xvzf boost_1_72_0.tar.gz
cd ~/snort_src
wget https://github.com/intel/hyperscan/archive/v5.2.1.tar.gz
tar -xvzf v5.2.1.tar.gz
mkdir ~/snort_src/hyperscan-5.2.1-build
cd hyperscan-5.2.1-build/
cmake -DCMAKE_INSTALL_PREFIX=/usr/local -DBOOST_ROOT=~/snort_src/boost_1_72_0/ ../hyperscan-5.2.1
make
sudo make install
cd ~/snort_src/hyperscan-5.2.1-build/
./bin/uint-hyperscan
cd ~/snort_src
wget https://github.com/google/flatbuffers/archive/v1.12.0.tar.gz -O flatbuffers-v1.12.0.tar.gz
tar -xzvf flatbuffers-v1.12.0.tar.gz
mkdir flatbuffers-build
cd flatbuffers-build
cmake ../flatbuffers-1.12.0
make
sudo make install
cd ~/snort_src
git clone https://github.com/snort3/libdaq.git
cd libdaq
./bootstrap
./configure
make
sudo make install
sudo ldconfig
cd ~/snort_src
git clone git://github.com/snortadmin/snort3.git
cd snort3
./configure_cmake.sh --prefix=/usr/local --enable-tcmalloc
cd build
make
sudo make install
/usr/local/bin/snort -V
snort -c /usr/local/etc/snort/snort.lua
