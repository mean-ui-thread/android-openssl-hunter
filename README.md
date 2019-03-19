Ok David, first download and extract r18b into your home folder:
https://dl.google.com/android/repository/android-ndk-r18b-linux-x86_64.zip

And then clone this repository *recursively*

```
git clone git@github.com:mchiasson/android-openssl-hunter.git --recursive
```

and then run the `build-android.sh` script:
```
cd android-openssl-hunter
./build-android.sh
```

And the library artefacts and headers will be available in these 4 locations (*the hashs may vary*)
```
android-openssl-hunter/android-x86/_Base/1ed14d1/de69228/a31bf33/Install
android-openssl-hunter/android-armeabi-v7a/_Base/1ed14d1/8ddca98/a31bf33/Install
android-openssl-hunter/android-x86-64/_Base/1ed14d1/7566035/a31bf33/Install
android-openssl-hunter/android-arm64-v8a/_Base/1ed14d1/cc06045/a31bf33/Install

```

