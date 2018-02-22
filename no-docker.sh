

sudo apt-get update
sudo apt-get -qy install \
  automake build-essential libcurl4-openssl-dev libssl-dev \
  git ca-certificates libjansson-dev libgmp-dev g++ --no-install-recommends

git clone --recursive https://github.com/JayDDee/cpuminer-opt cpuminer-multi

cd /home/ubuntu/cpuminer-multi

./autogen.sh

CFLAGS="-O3 -march=native -Wall" CXXFLAGS="$CFLAGS -std=gnu++11" ./configure --with-curl

make
