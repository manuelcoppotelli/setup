export ANDROID_SDK_ROOT="$(brew --prefix)/share/android-commandlinetools"
export ANDROID_NDK_HOME=$ANDROID_SDK_ROOT/ndk
export PATH=$ANDROID_SDK_ROOT/platform-tools:$PATH
export PATH=$ANDROID_SDK_ROOT/emulator:$PATH
