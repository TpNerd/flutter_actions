#!/bin/sh
# shellcheck disable=SC2164
# shellcheck disable=SC2226
# shellcheck disable=SC2103
folder=$1
label=$2

cp assets/labels/$folder/*.png assets/images
flutter pub get
pub global activate rename
pub global run rename --appname "$label"

flutter pub run flutter_native_splash:create
flutter pub run flutter_launcher_icons:main
