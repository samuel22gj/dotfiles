if [[ `uname` == 'Darwin' ]]; then
  # macOS
  export ANDROID_HOME=~/Library/Android/sdk
  export ANDROID_SDK=~/Library/Android/sdk
  export ANDROID_NDK=~/Library/Android/sdk/ndk-bundle
else
  # Linux
  export ANDROID_HOME=~/Android/Sdk/
  export ANDROID_SDK=~/Android/sdk
  export ANDROID_NDK=~/Android/ndk
fi

export PATH=$PATH:$ANDROID_SDK/platform-tools:$ANDROID_SDK/tools:$ANDROID_NDK:$ANDROID_HOME
