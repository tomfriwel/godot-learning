
[Your first game](https://docs.godotengine.org/en/stable/getting_started/step_by_step/your_first_game.html)


### 疑惑点

- 设置Path那部分没有理解，以及后续随机生成Mob的地方。


### Export for Android

Create debug keystore: `$ keytool -keyalg RSA -genkeypair -alias androiddebugkey -keypass android -keystore debug.keystore -storepass android -dname "CN=Android Debug,O=Android,C=US" -validity 9999`

Find SDK Path: `Android Studio > Preferences | Appearance & Behavior | System Settings | Android SDK`

Click on Editor -> Editor Settings in Godot and select the Export/Android section. Here, you need to set the paths to the Android SDK applications on your system and the location of the keystore you just created.

After exported, `$ adb install dodge.apk`

- [Finding Android SDK on Mac and adding to PATH](https://stackoverflow.com/a/34532235/6279975)
- [Exporting](https://docs.godotengine.org/en/stable/getting_started/step_by_step/exporting.html#android)