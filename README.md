# Car Driving by XN Alok - APK project

## You need (one time)
1. Node.js 18+  (https://nodejs.org)
2. JDK 17
3. Android Studio (installs the Android SDK). Set the ANDROID_HOME (or ANDROID_SDK_ROOT)
   environment variable to the SDK folder, e.g. ~/Android/Sdk or %LOCALAPPDATA%\Android\Sdk
4. Internet for the first build (downloads packages and Gradle)

## Build
Open a terminal in this folder, then:
- Windows:   setup.bat
- Linux/Mac: ./setup.sh

First build takes about 5-15 minutes. Your APK appears at:
    dist/car-driving-xn-alok.apk

Copy it to your phone and install it (allow "install unknown apps").

## Notes
- The game files are in www/. Edit www/index.html and run the script again to rebuild.
- The app is locked to landscape.
- The APK is a debug build, fine for your own phone. For Google Play you need a signed
  release build (Android Studio: Build > Generate Signed Bundle / APK).
- Orbitron font is not bundled (needs internet); the game falls back to a system font.

## No PC setup? Build in the cloud with GitHub (free)
1. Create a free account at github.com and make a new repository (any name, Public or Private).
2. Upload ALL files from this folder, including the hidden ".github" folder
   (drag the folder contents into "Add file > Upload files").
   If ".github" is missing, use "Add file > Create new file", type
   .github/workflows/build.yml as the name and paste the file content.
3. Open the "Actions" tab. "Build APK" starts by itself (or click it > "Run workflow").
4. After about 5-10 minutes it turns green. Open the run, scroll to "Artifacts", download
   "car-driving-xn-alok-apk" (a zip), unzip it, and install the APK on your phone.
