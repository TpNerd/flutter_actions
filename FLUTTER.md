# Instructions to compile this project


## Install Flutter framework
Create a folder for flutter installation, reach the directory and run:

    $: git clone https://github.com/flutter/flutter.git -b stable

Insert it into your path:

If you’re using Bash, edit $HOME/.bash_profile or $HOME/.bashrc. If you’re using Z shell, edit $HOME/.zshrc.

If you’re using a different shell, the file path and filename will be different on your machine.

Add the following line and change [PATH_OF_FLUTTER_GIT_DIRECTORY] to be the path of your clone of the Flutter git repo:


    export PATH="$PATH:[PATH_OF_FLUTTER_GIT_DIRECTORY]/bin"

## install xcode

Install the latest stable version of Xcode

(using web download
    [https://developer.apple.com/xcode/](https://developer.apple.com/xcode/)

or the Mac App Store
    [https://itunes.apple.com/us/app/xcode/id497799835](https://itunes.apple.com/us/app/xcode/id497799835)).


Configure the Xcode command-line tools to use the newly-installed version of Xcode by running the following from the command line:

    $: sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
    $: sudo xcodebuild -runFirstLaunch

Make sure the Xcode license agreement is signed by either opening Xcode once and confirming or running

    $: sudo xcodebuild -license

from the command line.

## Install cocoapods
    $: sudo gem install cocoapods

# Download and install Android Studio.

The version used for this project can be found at:
    [https://redirector.gvt1.com/edgedl/android/studio/install/4.2.2.0/android-studio-ide-202.7486908-mac.dmg](https://redirector.gvt1.com/edgedl/android/studio/install/4.2.2.0/android-studio-ide-202.7486908-mac.dmg)


close it and run

    $: flutter doctor
This command checks your environment and displays a report to the terminal window.

The Dart SDK is bundled with Flutter;

It is not necessary to install Dart separately


Check the output carefully for other software you might need to install or further tasks to perform (shown in bold text).

For example:

    [-] Android toolchain - develop for Android devices
        • Android SDK at /Users/obiwan/Library/Android/sdk
        ✗ Android SDK is missing command line tools; download from https://goo.gl/XxQghQ
        • Try re-installing or updating your Android SDK,
          visit https://flutter.dev/setup/#android-setup for detailed instructions.


If you need the android sdk installed, you can
### use the Android Studio SDK manager:
Open Android Studio

click the sdk manager icon on the top panel

click sdk tools

enable Android SDK build-tools

enable Android SDK command-like tools

click ok.



### ...or it can be done with
    $: brew tap homebrew/cask
    $: brew install --cask android-sdk

if you need to accept android licenses, the command is

    $: flutter doctor --android-licenses

then use path/to/sdkmanager --install "cmdline-tools;latest"



Once you have installed any missing dependencies, run the flutter doctor command again to verify that you’ve set everything up correctly.

# Clone this repository

## With clone

run

    $: git clone git@github.com:Adapta-dev/hello-adapta-flutter-app.git

Open android studio and click Open an Existing project,

and navigate to the project root folder

## Using version control

alternatively you can

click on Get from Version Control and insert
>https://github.com/Adapta-dev/hello-adapta-flutter-app.git

# Debug run

### Android

Create and run an emulator clicking on AvdManager icon on Android studio top panel

### IOS

The Simulator can be created clicking on the device dropdown menu and

selecting "Open iOs Simulator"
