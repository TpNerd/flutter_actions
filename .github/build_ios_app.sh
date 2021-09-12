#!/bin/sh
cd ios || return
pod install
cd ..
flutter build ios --no-codesign --dart-define=BASE_URL=${{ secrets.DEV_BASE_URL }} --dart-define=EXEC_ENV='github_actions'
cd build/ios/iphoneos || return
mkdir Payload
cd Payload || return
ln -s ../Runner.app .
cd ..
zip -r app.ipa Payload
