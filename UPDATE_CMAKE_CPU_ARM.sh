CMAKE_DIR="${TRAVIS_BUILD_DIR}/deps";
mkdir ${CMAKE_DIR};
cd ${CMAKE_DIR};
wget --no-check-certificate http://mirror.archlinuxarm.org/aarch64/extra/cmake-3.17.0-1-aarch64.pkg.tar.xz;
wget --no-check-certificate http://mirror.archlinuxarm.org/aarch64/extra/jsoncpp-1.9.1-1-aarch64.pkg.tar.xz;
wget --no-check-certificate http://mirror.archlinuxarm.org/aarch64/core/libarchive-3.4.2-1-aarch64.pkg.tar.xz;
wget --no-check-certificate http://mirror.archlinuxarm.org/aarch64/extra/libuv-1.35.0-1-aarch64.pkg.tar.xz;
wget --no-check-certificate http://mirror.archlinuxarm.org/aarch64/core/gcc-libs-9.2.0-4-aarch64.pkg.tar.xz;
wget --no-check-certificate http://mirror.archlinuxarm.org/aarch64/extra/rhash-1.3.9-1-aarch64.pkg.tar.xz;
wget --no-check-certificate http://mirror.archlinuxarm.org/aarch64/core/glibc-2.30-3-aarch64.pkg.tar.xz;
wget --no-check-certificate http://mirror.archlinuxarm.org/aarch64/core/libnsl-1.2.0-2-aarch64.pkg.tar.xz;
wget --no-check-certificate http://mirror.archlinuxarm.org/aarch64/core/libtirpc-1.2.5-1-aarch64.pkg.tar.xz;
tar -xvf libarchive-3.4.2-1-aarch64.pkg.tar.xz;
tar -xvf libuv-1.35.0-1-aarch64.pkg.tar.xz;
tar -xvf jsoncpp-1.9.1-1-aarch64.pkg.tar.xz;
tar -xvf gcc-libs-9.2.0-4-aarch64.pkg.tar.xz;
tar -xvf rhash-1.3.9-1-aarch64.pkg.tar.xz;
tar -xvf glibc-2.30-3-aarch64.pkg.tar.xz;
tar -xvf cmake-3.17.0-1-aarch64.pkg.tar.xz;
tar -xvf libnsl-1.2.0-2-aarch64.pkg.tar.xz;
tar -xvf libtirpc-1.2.5-1-aarch64.pkg.tar.xz;
export LD_LIBRARY_PATH=${CMAKE_DIR}/usr/lib:$LD_LIBRARY_PATH;
export PATH=${CMAKE_DIR}/usr:${CMAKE_DIR}/usr/bin:$PATH;
cd ${TRAVIS_BUILD_DIR};
echo $LD_LIBRARY_PATH;
echo $PATH;
cmake --version;
