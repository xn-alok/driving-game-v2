#!/usr/bin/env bash
# Builds a debug APK of "Car Driving by XN Alok" (Linux / macOS / WSL)
set -e
npm install
cp node_modules/three/build/three.min.js www/three.min.js        # game engine, bundled offline
[ -d android ] || npx cap add android
# lock to landscape
MF=android/app/src/main/AndroidManifest.xml
grep -q screenOrientation "$MF" || sed -i 's/<activity/<activity android:screenOrientation="landscape"/' "$MF"
npx cap sync android
chmod +x android/gradlew; (cd android && ./gradlew assembleDebug)
mkdir -p dist && cp android/app/build/outputs/apk/debug/app-debug.apk dist/car-driving-xn-alok.apk
echo "DONE -> dist/car-driving-xn-alok.apk"
