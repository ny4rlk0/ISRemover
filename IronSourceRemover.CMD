@echo off
color a
cd %~dp0
set n1="com.ironsource.appcloud.oobe.hutchison","com.ironsource.ironsource"
cls
echo "Enable ADB Debugging from your Android device. Allow this computer for your android device to run commands. Then run this batch file again."
(for %%a in (%n1%) do (
   echo "                                                        "
   echo "--------------------------------------------------------"
   echo "Removing  APK: %%a"
   %~dp0/platform-tools/adb shell pm uninstall --user 0 %%a
   %~dp0/platform-tools/adb shell pm uninstall --user 1 %%a
   %~dp0/platform-tools/adb shell pm uninstall %%a
   %~dp0/platform-tools/adb uninstall %%a
   %~dp0/platform-tools/adb shell pm disable-user --user 0 %%a
   %~dp0/platform-tools/adb shell pm disable-user --user 1 %%a
   echo "--------------------------------------------------------"
   echo "                                                        "
))
echo "Done. Press any key to reboot now!"
pause
%~dp0/platform-tools/adb reboot
echo "Press any key to exit!"
pause
