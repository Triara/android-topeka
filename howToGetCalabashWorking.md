# Set up your working tools

The IDE of choice for now is [Android Studio](https://developer.android.com/sdk/index.html).
You'll need JDK 1.7 and Android SDK, Android Studio will provide you with links for that if needed.

## Ruby installation

You need a Ruby version greater than 1.8.7 and less than 2.0.
If your OS does not have a suitable version please use the Ruby Version Manager (Ruby and its gems = mess!)

### Installing Ruby with Ruby Version Manager

Install the manager first

```
\curl -sSL https://get.rvm.io | bash -s stable
```

Choose a ruby version in the desired range and install it like this

```
rvm install ruby-1.9.3-p484
```

And now set is as a default version `rvm use ruby-1.9.3-p484 --default`

## Calabash installation

```
gem install calabash-android
```

Tell calabash where the android SDK is located, for that set ANDROID-HOME pointing to your SDK folder in your bash profile.
For Mac

```
export ANDROID_HOME=/Users/triara/Library/Android/sdk
```

# Compile the app into an APK file

Go to Build -> Generate Signed APK. You need to create your own keys for that, as this is not going to production choose whatever you want.

# Run features on emulator

Given you already have the feature files, resign the app

```
calabash-android resign $APK_FILE
```

Launch the emulator: Tools -> Android -> ADV Manager and launch a device like Nexus.
Finally...

```
calabash-android run $APK_FILE
```

Where `$APK_FILE` is the same file as above

# Debug though the console

Start an emulator and run

```
calabash-android console $APK_FILE
```

Note that the APK has to be previously signed with the `calabash-android resign $APK_FILE` command.