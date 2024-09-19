@echo off
color a
cd %~dp0
cls
echo "Enable ADB Debugging from your Android device. Allow this computer for your android device to run commands. Then run this batch file again."
WAIT 1
%~dp0/platform-tools/adb shell pm uninstall --user 0 com.ironsource.ironsource
WAIT 1
%~dp0/platform-tools/adb shell pm uninstall --user 1 com.ironsource.ironsource
WAIT 1
%~dp0/platform-tools/adb shell pm uninstall com.ironsource.ironsource
WAIT 1
%~dp0/platform-tools/adb uninstall com.ironsource.ironsource
WAIT 1
%~dp0/platform-tools/adb shell pm disable-user --user 0 com.ironsource.ironsource
WAIT 1
%~dp0/platform-tools/adb shell pm disable-user --user 1 com.ironsource.ironsource
WAIT 1
echo "Done. Press any key to reboot now!"
pause
%~dp0/platform-tools/adb reboot
echo "Press any key to exit!"
pause