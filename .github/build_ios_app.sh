#!/bin/sh
cd ios || return
pod install
cd ..
flutter build ios --no-codesign --flavor=development
cd build/ios/iphoneos || return
mkdir Payload
cd Payload || return
ln -s ../Runner.app .
cd ..
zip -r app.ipa Payload
