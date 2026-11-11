@echo off
REM Builds a debug APK of "Car Driving by XN Alok" (Windows)
call npm install || exit /b 1
copy /Y node_modules\three\build\three.min.js www\three.min.js || exit /b 1
if not exist android call npx cap add android || exit /b 1
powershell -Command "$f='android\app\src\main\AndroidManifest.xml'; $t=Get-Content $f -Raw; if($t -notmatch 'screenOrientation'){ $t=$t -replace '<activity','<activity android:screenOrientation=\"landscape\"'; Set-Content $f $t }"
call npx cap sync android || exit /b 1
pushd android
call gradlew.bat assembleDebug || exit /b 1
popd
if not exist dist mkdir dist
copy /Y android\app\build\outputs\apk\debug\app-debug.apk dist\car-driving-xn-alok.apk
echo DONE - dist\car-driving-xn-alok.apk
