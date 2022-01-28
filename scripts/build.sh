#! /bin/bash

cd vcpkg
if [[ ! -x vcpkg ]] ; then
  ./bootstrap-vcpkg.sh
fi

./vcpkg --overlay-triplets=$PWD/../vcpkg-overlay/triplets install --recurse rtmidi rtaudio qtbase[core,widgets,doubleconversion,concurrent]
cd ..
cmake --preset ninja-vcpkg
cmake --build --preset ninja-vcpkg-release --target clap-host
