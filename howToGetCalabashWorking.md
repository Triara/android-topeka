# Set up calabash

Download Ruby greater than 1.8.7 and less than 2.0. Make sure you have JDK 1.7 and Android SDK.

```
gem install calabash-android
```

Tell calabash where the android SDK is located, for that set ANDROID-HOME pointing to your SDK folder in your bash profile.

# Run test on emulator

Given you already have the feature files, resign the app

```
calabash-android resign $APK
```

Launch the emulator and ...

```
calabash-android run $APK
```


# App did not start

Add this to your manifest

```
<uses-permission android:name="android.permission.INTERNET" />
```
