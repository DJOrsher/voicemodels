#!/bin/bash
# Create Android SDK directory
mkdir -p ~/android-sdk

# Set environment variables
export ANDROID_HOME=~/android-sdk
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools

# Download Android command line tools
wget https://dl.google.com/android/repository/commandlinetools-linux-9477386_latest.zip
unzip commandlinetools-linux-9477386_latest.zip
mkdir -p $ANDROID_HOME/cmdline-tools
mv cmdline-tools latest
mv latest $ANDROID_HOME/cmdline-tools/

# Accept licenses and install necessary components
yes | sdkmanager --licenses
sdkmanager "platform-tools" "platforms;android-30" "build-tools;30.0.3"

echo "Android SDK setup complete!"
