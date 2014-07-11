
#Which Android devices are connected?
adb devices

#Install an app to connected device
adb install  C:\Users\georgemck\Desktop\appname.apk

#Uninstall an app from connected device
adb shell pm uninstall -k com.domain.appname

#Check minimum Android SDK
adb shell getprop ro.build.version.sdk

#Check Android version 
adb shell getprop ro.build.version.release

#Start and Stop device server
 adb start-server             - ensure that there is a server running
 adb kill-server              - kill the server if it is running

#View all device properties
adb shell getprop

#launch / Start an app on connected device (use -D instead of -n for debugger)
adb shell am start -n com.domain.appname/com.domain.appname.package

#Stop an app on connected device
adb shell am force-stop com.domain.appname.package

#Monitor running device via console log
adb logcat

#Stop the app and clear stored data 
adb shell pm clear com.domain.appname.package

#list all apps via adb shell
pm list packages -f
