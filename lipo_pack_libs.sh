#! /bin/bash
cd release/ios/device
lipo libSDL2.a -extract arm64 -o libSDL2.a

cd ../simulator
lipo libFAudio.a -extract x86_64 -o libFAudio.a
lipo libFNA3D.a -extract x86_64 -o libFNA3D.a
lipo libSDL2.a -extract x86_64 -o libSDL2.a
lipo libtheorafile.a -extract x86_64 -o libtheorafile.a

cd ../../../
lipo -create -o libFAudio.a release/ios/device/libFAudio.a release/ios/simulator/libFAudio.a
lipo -create -o libFNA3D.a release/ios/device/libFNA3D.a release/ios/simulator/libFNA3D.a
lipo -create -o libSDL2.a release/ios/device/libSDL2.a release/ios/simulator/libSDL2.a
lipo -create -o libtheorafile.a release/ios/device/libtheorafile.a release/ios/simulator/libtheorafile.a

