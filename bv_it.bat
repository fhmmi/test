@echo off
setlocal EnableDelayedExpansion
net use \\192.168.0.211 Bismillah41 /USER:bv0166
::set "params=%*"
::cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/c cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
color 2
title BV_IT
:menu
mode con:cols=50 lines=25
cls
echo ==================================================
echo              LOGIN AS : %username%
echo ==================================================
echo:
echo   1. GENERAL SOFTWARE
echo:
echo   2. ARTIST INSTALLATION 
echo:
echo   3. GRAPHIC SOFTWARE
echo:
echo   4. SOFTWARE LIST
echo:
echo   5. CHANGE IP ADDRESS
echo:
echo   6. VNC FULL REMOTE
echo:
echo   7. ENABLE ADMIN ACCOUNT
echo:
echo   8. ALLOW RDC FIREWALL
echo:
echo   9. EXIT
echo:
echo ==================================================
echo:

set /p "pilihan=INPUT NUMBER (1-8): "

if %pilihan%==1 goto generalsoftware
if %pilihan%==2 goto artistlist
if %pilihan%==3 goto graphicsoftware
if %pilihan%==4 goto softwarelist
if %pilihan%==5 goto changeaddress
if %pilihan%==6 goto remotelist
if %pilihan%==7 goto user
if %pilihan%==8 goto rdc
if %pilihan%==9 goto exit


goto menu

:generalsoftware
mode con:cols=65 lines=25
cls
echo:
echo =================================================================
echo                       COPY GENERAL SOFTWARE
echo =================================================================
echo:

set appname1=(install after join domain)WindowsAdminCenter2110.msi
set appname2=7z1900-x64.exe
set appname3=ChromeSetup.exe
set appname4=Firefox Installer.exe
set appname5=JavaSetup8u311.exe
set appname6=PureRef-1.11.1_x64.exe
set appname7=QuickTimeInstaller.exe
set appname8=UltraVNC_1_3_42_X64_Setup.exe
set appname9=WacomTablet_6.3.35-3.exe
set appname10=winrar-x64-602.exe
set appname11=iobituninstaller.exe
set appname12=rocketchat-3.8.3-win.exe
set appname13=360TS_Setup_10.8.0.1393.exe
set paste="%userprofile%\documents\"

For %%a in ("\\192.168.0.211\ITShare-FTP\Software\General Software\%appname1%","\\192.168.0.211\ITShare-FTP\Software\General Software\%appname2%","\\192.168.0.211\ITShare-FTP\Software\General Software\%appname3%","\\192.168.0.211\ITShare-FTP\Software\General Software\%appname4%","\\192.168.0.211\ITShare-FTP\Software\General Software\%appname5%","\\192.168.0.211\ITShare-FTP\Software\General Software\%appname6%","\\192.168.0.211\ITShare-FTP\Software\General Software\%appname7%","\\192.168.0.211\ITShare-FTP\Software\General Software\%appname8%","\\192.168.0.211\ITShare-FTP\Software\General Software\%appname9%","\\192.168.0.211\ITShare-FTP\Software\General Software\%appname10%","\\192.168.0.211\ITShare-FTP\Software\General Software\no need\%appname11%","\\192.168.0.211\ITShare-FTP\Software\Chat system\%appname12%","\\192.168.0.211\ITShare-FTP\Software\Security, Backup, and Antivirus Software\360 Total Security\%appname13%") do xcopy %%a "%paste%" /Y > nul && echo  Copied %%~nxa 
echo:
echo =================================================================
echo:
pause
goto menu


:artistlist
mode con:cols=50 lines=25
cls
echo ==================================================
echo                ARTIST STARTING KIT               
echo ==================================================
echo:
echo   1. MODELLER
echo: 
echo   2. CONCEPT
echo:
echo   3. VFX
echo:
echo   4. STORYBOARD
echo:
echo   5. 2D ANIMATOR
echo:
echo   6. 3D ANIMATOR
echo:
echo   7. GRAPHIC DESIGNER
echo:
echo   8. BACK
echo:
echo ==================================================
echo:
set /p pilihan=INPUT NUMBER (1-8): 
if %pilihan%==1 goto modeller
if %pilihan%==2 goto concept
if %pilihan%==3 goto vfx
if %pilihan%==4 goto storyboard
if %pilihan%==5 goto 2danimator
if %pilihan%==6 goto 3danimator
if %pilihan%==7 goto graphicdesigner
if %pilihan%==8 goto menu

goto artistlist

:modeller
cls
if not exist "%userprofile%\Documents\MODELLER" mkdir "%userprofile%\documents\MODELLER"
set appname1=krita-x64-5.0.2-setup.exe
set appname2=PureRef-1.11.1_x64.exe
set appname3=blender-2.93.1-windows-x64.zip
set appname4=EpicInstaller-13.0.0-d49c65087a26498c9d60588f4afedd61.msi
set appname5=Creative_Cloud_Set-Up.exe
set appname6=toolbag_install_403.exe
set appname7=ZBrush_2022.0.2_Installer.exe
set paste="%userprofile%\Documents\MODELLER"

For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Krita\%appname1%","\\192.168.0.211\ITShare-FTP\Software\General Software\%appname2%","\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Blender\%appname3%","\\192.168.0.211\ITShare-FTP\%appname4%","\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Adobe(Licensed)\%appname5%","\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Marmoset\licensed\%appname6%","\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Zbrush\Licensed\%appname7%") do xcopy %%a "%paste%" /Y

pause
goto menu


REM ====================================================== START CONCEPT =============================================================================

:concept
cls
if not exist "%userprofile%\Documents\CONCEPT" mkdir "%userprofile%\documents\CONCEPT"
set appname1=krita-x64-5.0.2-setup.exe
set appname2=blender-2.93.1-windows-x64.zip
set appname3=PureRef-1.11.1_x64.exe
set paste="%userprofile%\documents\CONCEPT"

For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Krita\%appname1%","\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Blender\%appname2%","\\192.168.0.211\ITShare-FTP\Software\General Software\%appname3%") do xcopy %%a "%paste%" /Y

pause
goto menu
REM ====================================================== END CONCEPT =============================================================================

REM ====================================================== START VFX =============================================================================

:vfx
cls
if not exist "%userprofile%\Documents\VFX" mkdir "%userprofile%\documents\VFX"
set appname1=blender-2.93.1-windows-x64.zip
::set appname3=PureRef-1.11.1_x64.exe
set paste="%userprofile%\documents\VFX"

For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Blender\%appname1%") do xcopy %%a "%paste%" /Y

pause
goto menu
REM ====================================================== END VFX =============================================================================

REM ====================================================== START STORYBOARD =============================================================================

:storyboard
cls
if not exist "%userprofile%\Documents\STORYBOARD" mkdir "%userprofile%\documents\STORYBOARD"
set appname1=krita-x64-5.0.2-setup.exe
set appname2=blender-2.93.1-windows-x64.zip
set appname3=PureRef-1.11.1_x64.exe
set appname4=QuickTimeInstaller.exe
set appname5=vlc-3.0.16-win32.exe
set appname6=mrViewer-v5.9.2-Windows-64.exe
set appname7=Storyboard Pro 7.exe
set appname8=CSP_193w_setup.exe
set appname9=Media Encoder CC 2019.zip
set paste="%userprofile%\documents\STORYBOARD"

For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Krita\%appname1%","\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Blender\%appname2%","\\192.168.0.211\ITShare-FTP\Software\General Software\%appname3%","\\192.168.0.211\ITShare-FTP\Software\General Software\%appname4%","\\192.168.0.211\ITShare-FTP\Software\Video Software\%appname5%","\\192.168.0.211\ITShare-FTP\Software\Video Software\mrviewer\%appname6%","\\192.168.0.211\ITShare-FTP\Software\Graphics Software\ToonBoom\%appname7%","\\192.168.0.211\ITShare-FTP\Software\Graphics Software\clip studios\Clip Studio Paint\Clip Studio Paint EX 1.9.3 Multilingual\%appname8%","\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Adobe\%appname9%") do xcopy %%a "%paste%" /Y

pause
goto menu

REM ====================================================== END STORYBOARD =============================================================================

REM ====================================================== START 2D ANIMATOR =============================================================================

:2danimator
cls
if not exist "%userprofile%\Documents\2D-ANIMATOR" mkdir "%userprofile%\documents\2D-ANIMATOR"
set appname1=krita-x64-5.0.2-setup.exe
set appname2=mrViewer-v5.9.2-Windows-64.exe
set appname3=CSP_193w_setup.exe
set appname4=Harmony Premium 21.0.1.exe
set paste="%userprofile%\documents\2D-ANIMATOR\"

For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Krita\%appname1%","\\192.168.0.211\ITShare-FTP\Software\Video Software\mrviewer\%appname2%","\\192.168.0.211\ITShare-FTP\Software\Graphics Software\clip studios\Clip Studio Paint\Clip Studio Paint EX 1.9.3 Multilingual\%appname3%","\\192.168.0.211\ITShare-FTP\Software\Graphics Software\ToonBoom\Harmony 21\%appname4%") do xcopy %%a "%paste%" /Y

pause
goto menu

REM ====================================================== END 2D ANIMATOR =============================================================================

REM ====================================================== START 3D ANIMATOR =============================================================================

:3danimator
cls
if not exist "%userprofile%\Documents\3D-ANIMATOR" mkdir "%userprofile%\documents\3D-ANIMATOR"
set appname1=screenmarker-1.0.0.1.exe
set appname2=blender-2.93.1-windows-x64.zip
set appname3=mrViewer-v5.9.2-Windows-64.exe
set appname4=DJV-2.0.8-win64.zip
set paste="%userprofile%\documents\3D-ANIMATOR\"

For %%a in ("\\192.168.0.211\ITShare-FTP\Artist Installation\3D Animator Software Install\%appname1%","\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Blender\%appname2%","\\192.168.0.211\ITShare-FTP\Software\Video Software\mrviewer\%appname3%","\\192.168.0.211\ITShare-FTP\Software\Video Software\%appname4%") do xcopy %%a "%paste%" /Y

pause
goto menu

:graphicdesigner
cls
if not exist "%userprofile%\Documents\GRAPHIC-DESIGNER" mkdir "%userprofile%\documents\GRAPHIC-DESIGNER"
set appname1=PureRef-1.11.1_x64.exe
set appname2=krita-x64-5.0.2-setup.exe
set paste="%userprofile%\documents\GRAPHIC-DESIGNER"

For %%a in ("\\192.168.0.211\ITShare-FTP\Software\General Software\%appname1%","\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Krita\%appname2%") do xcopy %%a "%paste%" /Y

pause
goto menu

:graphicsoftware
mode con:cols=50 lines=33
cls
echo ==================================================
echo                 GRAPHIC SOFTWARE
echo ==================================================
echo:
echo   1.  ADOBE (CREATIVE CLOUD)
echo:
echo   2.  AUTODESK MAYA (MAYA/MAYA LT)
echo:
echo   3.  BLENDER
echo:
echo   4.  FOUNDRY (NUKE/KATANA)
echo:
echo   5.  HOUDINI
echo:
echo   6.  KRITA
echo:
echo   7.  MARMOSET
echo:
echo   8.  ZBRUSH
echo:
echo   9.  3DS MAX 2022
echo:
echo   10. EPIC LAUNCHER
echo:
echo   11. QUIXEL BRIDGE
echo:
echo   12. BACK
echo:
echo ==================================================
echo:
set /p gpilihan=INPUT NUMBER (1-12): 

if %gpilihan%==1 goto adobelist
if %gpilihan%==2 goto autodesklist
if %gpilihan%==3 goto blenderlist
if %gpilihan%==4 goto foundrylist
if %gpilihan%==5 goto houdinilist
if %gpilihan%==6 goto krita
if %gpilihan%==7 goto marmosetlist
if %gpilihan%==8 goto zbrushlist
if %gpilihan%==9 goto 3dsmax
if %gpilihan%==10 goto epiclauncher
if %gpilihan%==11 goto quixelbridge
if %gpilihan%==12 goto menu

goto graphicsoftware

:adobelist
cls
set paste="%userprofile%\documents"
xcopy "\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Adobe(Licensed)\Creative_Cloud_Set-Up.exe" "%paste%" /Y
pause
goto menu

:autodesklist
cls
echo ============================
echo      AUTODESK MAYA LIST
echo ============================
echo:
echo   1. MAYA
echo:
echo   2. MAYA LT
echo:
echo   3. BACK
echo:
echo ============================
echo:
set /p mpilihan=INPUT NUMBER (1-3): 

if %mpilihan%==1 goto maya
if %mpilihan%==2 goto mayaLT
if %mpilihan%==3 goto graphicsoftware

goto autodesklist


:maya
cls
echo ============================
echo         MAYA LIST
echo ============================
echo:
echo   1. MAYA 2016
echo:
echo   2. MAYA 2017
echo:
echo   3. MAYA 2018
echo:
echo   4. MAYA 2019
echo:
echo   5. MAYA 2020
echo:
echo   6. MAYA 2022
echo:
echo   7. BACK
echo:
echo ============================
echo:
set /p mypilihan=INPUT NUMBER (1-7): 

if %mypilihan%==1 goto maya2016
if %mypilihan%==2 goto maya2017
if %mypilihan%==3 goto maya2018
if %mypilihan%==4 goto maya2019
if %mypilihan%==5 goto maya2020
if %mypilihan%==6 goto maya2022
if %mypilihan%==7 goto autodesklist

pause
goto maya

:maya2016
cls
set appname1=Autodesk_Maya_2016_EN_JP_ZH_Windows_dlm.rar
set appname2=AdskLicensing-installer.exe
set paste="%userprofile%\documents\"

For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Autodesk Maya Installer\Maya\Maya 2016\%appname1%","\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Autodesk Maya Installer\%appname2%") do xcopy %%a "%paste%" /Y
echo 
pause
goto graphicsoftware

:maya2017
cls
set appname1=Autodesk Maya 2017 x64.rar
set appname2=AdskLicensing-installer.exe
set paste="%userprofile%\documents\"

For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Autodesk Maya Installer\Maya\Maya 2017\%appname1%","\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Autodesk Maya Installer\%appname2%") do xcopy %%a "%paste%" /Y

pause
goto graphicsoftware

:maya2018
cls
set appname1=Autodesk_Maya_2018.rar
set appname2=AdskLicensing-installer.exe
set paste="%userprofile%\documents\"

For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Autodesk Maya Installer\Maya\Maya 2018\original\%appname1%","\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Autodesk Maya Installer\%appname2%") do xcopy %%a "%paste%" /Y


pause
goto graphicsoftware

:maya2019
cls
set appname1=Maya 2019.rar
set appname2=AdskLicensing-installer.exe
set paste="%userprofile%\documents\"

For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Autodesk Maya Installer\Maya\Maya 2019\%appname1%","\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Autodesk Maya Installer\%appname2%") do xcopy %%a "%paste%" /Y

pause
goto graphicsoftware

:maya2020
cls
set appname1=Maya 2020.rar
set appname2=AdskLicensing-installer.exe
set paste="%userprofile%\documents\"

For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Autodesk Maya Installer\Maya\Maya 2020\%appname1%","\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Autodesk Maya Installer\%appname2%") do xcopy %%a "%paste%" /Y

pause
goto graphicsoftware

:maya2022
cls
set appname1=Autodesk_Maya_2022_ML_Windows_64bit_dlm_001_002.sfx.exe
set appname2=Autodesk_Maya_2022_ML_Windows_64bit_dlm_002_002.sfx.exe
set appname3=AdskLicensing-installer.exe
set paste="%userprofile%\documents\"

For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Autodesk Maya Installer\Maya\maya 2022\%appname1%","\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Autodesk Maya Installer\Maya\maya 2022\%appname2%","\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Autodesk Maya Installer\%appname3%") do xcopy %%a "%paste%" /Y


pause
goto graphicsoftware

:mayaLT
cls
echo ============================
echo         MAYA LT LIST
echo ============================
echo:
echo   1. MAYA LT 2019
echo:
echo   2. MAYA LT 2020
echo:
echo   3. BACK
echo:
echo ============================
echo:
set /p myltpilihan=INPUT NUMBER (1-3): 

if %myltpilihan%==1 goto mayalt2019
if %myltpilihan%==2 goto mayalt2020
if %myltpilihan%==3 goto autodesklist

pause
goto mayaLT

:mayalt2019
cls
set appname1=maya 2019 LT.rar
set appname2=AdskLicensing-installer.exe
set paste="%userprofile%\documents\"

For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Autodesk Maya Installer\Maya\Maya 2019 LT\%appname1%","\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Autodesk Maya Installer\%appname2%") do xcopy %%a "%paste%" /Y

pause
goto graphicsoftware

:mayalt2020
cls
set appname1=Autodesk_MayaLT_2020_4_ML_Windows_64bit_dlm.sfx.exe
set appname2=AdskLicensing-installer.exe
set paste="%userprofile%\documents\"

For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Autodesk Maya Installer\Maya\Maya 2020 LT\%appname1%","\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Autodesk Maya Installer\%appname2%") do xcopy %%a "%paste%" /Y

pause
goto graphicsoftware

:blenderlist
cls
echo ============================
echo        BLENDER LIST
echo ============================
echo:
echo   1. Blender-2.83.0
echo:
echo   2. Blender-2.83.3
echo:
echo   3. Blender-2.90.1
echo:
echo   4. Blender-2.91.0
echo:
echo   5. Blender-2.92.0
echo:
echo   6. Blender-2.93.1
echo:
echo   7. Blender-2.93.5
echo:
echo   8. Blender-2.93.6
echo:
echo   9. BACK
echo:
echo ============================
echo:
set /p blpilihan=INPUT NUMBER (1-8): 

if %blpilihan%==1 goto blender1
if %blpilihan%==2 goto blender2
if %blpilihan%==3 goto blender3
if %blpilihan%==4 goto blender4
if %blpilihan%==5 goto blender5
if %blpilihan%==6 goto blender6
if %blpilihan%==7 goto blender7
if %blpilihan%==8 goto blender8
if %blpilihan%==9 goto graphicsoftware


goto blenderlist


rem ==================================================================================================================================================================


:blender1
cls
set appname=blender-2.83.0-windows64.zip
set paste="%userprofile%\documents\"
For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Blender\%appname%") do xcopy %%a "%paste%" /Y

pause
goto graphicsoftware

:blender2
cls
set appname=blender-2.83.3-windows64.zip
set paste="%userprofile%\documents\"
For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Blender\%appname%") do xcopy %%a "%paste%" /Y

pause
goto graphicsoftware

:blender3
cls
set appname=blender-2.90.1-windows64.zip
set paste="%userprofile%\documents\"
For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Blender\%appname%") do xcopy %%a "%paste%" /Y

pause
goto graphicsoftware

:blender4
cls
set appname=blender-2.91.0-windows64.zip
set paste="%userprofile%\documents\"
For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Blender\%appname%") do xcopy %%a "%paste%" /Y

pause
goto graphicsoftware

:blender5
cls
set appname=blender-2.92.0-windows64.zip
set paste="%userprofile%\documents\"
For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Blender\%appname%") do xcopy %%a "%paste%" /Y

pause
goto graphicsoftware

:blender6
cls
set appname=blender-2.93.1-windows-x64.zip
set paste="%userprofile%\documents\"
For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Blender\%appname%") do xcopy %%a "%paste%" /Y

pause
goto graphicsoftware

:blender7
cls
set appname=blender-2.93.5-windows-x64.zip
set paste="%userprofile%\documents\"
For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Blender\%appname%") do xcopy %%a "%paste%" /Y

pause
goto graphicsoftware

:blender8
cls
set appname=blender-2.93.6-windows-x64.zip
set paste="%userprofile%\documents\"
For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Blender\%appname%") do xcopy %%a "%paste%" /Y

pause
goto graphicsoftware


:foundrylist
cls
echo ============================
echo        FOUNDRY LIST
echo ============================
echo:
echo   1. NUKE
echo:
echo   2. KATANA
echo:
echo   3. BACK
echo:
echo ============================
echo:
set /p frpilihan=INPUT NUMBER (1-3):

if %frpilihan%==1 goto nuke
if %frpilihan%==2 goto katanalist
if %frpilihan%==3 goto graphicsoftware
goto foundrylist

:nuke
cls
set appname=Nuke13.1v3-win-x86_64.zip
set paste="%userprofile%\documents\"
For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\nuke\%appname%") do xcopy %%a "%paste%" /Y

pause
goto graphicsoftware

:katanalist
cls
echo ============================
echo        KATANA LIST
echo ============================
echo:
echo   1. KATANA 3.6v5
echo:
echo   2. KATANA 4.0v1
echo:
echo   3. KATANA 4.0v4
echo:
echo   4. KATANA 5.0v1
echo:
echo   5. BACK
echo:
echo ============================
echo:
set /p ktpilihan=INPUT NUMBER (1-5):

if %ktpilihan%==1 goto katana1
if %ktpilihan%==2 goto katana2
if %ktpilihan%==3 goto katana3
if %ktpilihan%==4 goto katana4
if %ktpilihan%==5 goto graphicsoftware
goto katanalist

:katana1
cls
set appname=Katana3.6v5-win-x86-release-64.zip
set paste="%userprofile%\documents\"
For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Foundry\licensed\%appname%") do xcopy %%a "%paste%" /Y

pause
goto graphicsoftware

:katana2
cls
set appname=Katana4.0v1-win-x86-release-64.zip
set paste="%userprofile%\documents\"
For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Foundry\licensed\%appname%") do xcopy %%a "%paste%" /Y

pause
goto graphicsoftware

:katana3
cls
set appname=Katana4.0v4-win-x86-release-64.zip
set paste="%userprofile%\documents\"
For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Foundry\licensed\%appname%") do xcopy %%a "%paste%" /Y

pause
goto graphicsoftware

:katana4
cls
set appname=Katana5.0v1-win-x86-release-64.zip
set paste="%userprofile%\documents\"
For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Foundry\licensed\%appname%") do xcopy %%a "%paste%" /Y

pause
goto graphicsoftware

:houdinilist
cls
echo ============================
echo        HOUDINI LIST
echo ============================
echo:
echo   1. HOUDINI 17
echo:
echo   2. HOUDINI 18
echo:
echo   3. PLUGIN
echo:
echo   4. BACK
echo:
echo ============================
echo:
set /p hdpilihan=INPUT NUMBER (1-4):

if %hdpilihan%==1 goto houdini1
if %hdpilihan%==2 goto houdini2
if %hdpilihan%==3 goto houdiniplugin
if %hdpilihan%==4 goto graphicsoftware
goto houdinilist

:houdini1
cls
set appname=houdini-17.5.298-win64-vc141.exe
set paste="%userprofile%\documents\"
For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Houdini & Arnold\Houdini 17\%appname%") do xcopy %%a "%paste%" /Y

pause
goto graphicsoftware

:houdini2
cls
set appname=houdini-18.5.696-win64-vc141.exe
set paste="%userprofile%\documents\"
For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Houdini & Arnold\Houdini 18\%appname%") do xcopy %%a "%paste%" /Y

pause
goto graphicsoftware

:houdiniplugin
cls
echo ============================
echo     PLUGIN HOUDINI LIST
echo ============================
echo:
echo   1. ARNOLD FOR HOUDINI
echo:
echo   2. NIAGARA FOR UNREAL
echo:
echo   3. BACK
echo:
echo ============================
echo:
set /p phpilihan=INPUT NUMBER (1-3):

if %phpilihan%==1 goto arnold
if %phpilihan%==2 goto niagaralist
if %phpilihan%==3 goto houdinilist
goto houdiniplugin

:arnold
cls
set appname=htoa-4.0.1_ra910f19_houdini-17.5.173_windows.exe
set paste="%userprofile%\documents\"
For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Houdini & Arnold\Plugin\Arnold for Houdini\%appname%") do xcopy %%a "%paste%" /Y

pause
goto graphicsoftware

:niagaralist
cls
echo ============================
echo     PLUGIN NIAGARA LIST
echo ============================
echo:
echo   1. HOUDINI NIAGARA FOR UE4.27.2
echo:
echo   2. HOUDINI NIAGARA FOR UE5.0.0
echo:
echo   3. BACK
echo:
echo ===========================
echo:
set /p pnpilihan=INPUT NUMBER (1-3):

if %pnpilihan%==1 goto niagara1
if %pnpilihan%==2 goto niagara2
if %pnpilihan%==3 goto houdiniplugin
goto niagaralist

:niagara1
cls
set appname=HoudiniNiagara-v2.3.0-UE4.27.2-Win64.zip
set paste="%userprofile%\documents\"
For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Houdini & Arnold\Plugin\Niagara for Unreal\%appname%") do xcopy %%a "%paste%" /Y

pause
goto graphicsoftware

:niagara2
cls
set appname=HoudiniNiagara-v2.3.0-UE5.00_EA-Win64.zip
set paste="%userprofile%\documents\"
For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Houdini & Arnold\Plugin\Niagara for Unreal\%appname%") do xcopy %%a "%paste%" /Y

pause
goto graphicsoftware

:krita
cls
set appname=krita-x64-5.0.2-setup.exe
set paste="%userprofile%\documents\"
For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Krita\%appname%") do xcopy %%a "%paste%" /Y

pause
goto graphicsoftware

:marmosetlist
cls
echo ============================
echo        MARMOSET LIST
echo ============================
echo:
echo   1. MARMOSET TOOLBAG 401
echo:
echo   2. MARMOSET TOOLBAG 403
echo:
echo   3. BACK
echo:
echo ===========================
echo:
set /p mmpilihan=INPUT NUMBER (1-3):

if %mmpilihan%==1 goto marmoset1
if %mmpilihan%==2 goto marmoset2
if %mmpilihan%==3 goto graphicsoftware
goto marmosetlist

:marmoset1
cls
set appname=toolbag_install_401.exe
set paste="%userprofile%\documents\"
For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Marmoset\%appname%") do xcopy %%a "%paste%" /Y

pause
goto graphicsoftware

:marmoset2
cls
set appname=toolbag_install_403.exe
set paste="%userprofile%\documents\"
For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Marmoset\licensed\%appname%") do xcopy %%a "%paste%" /Y

pause
goto graphicsoftware

:zbrushlist
cls
echo ============================
echo        ZBRUSH LIST
echo ============================
echo:
echo   1. ZBRUSH 2020.1.1
echo:
echo   2. ZBRUSH 2020.1.4
echo:
echo   3. ZBRUSH 2021.0.0
echo:
echo   4. ZBRUSH 2021.1.2
echo:
echo   5. ZBRUSH 2021.5
echo:
echo   6. ZBRUSH 2021.6.6
echo:
echo   7. ZBRUSH 2021.7.1
echo:
echo   8. ZBRUSH 2022.0.2
echo:
echo   9. ZBRUSH 2022.0.5
echo:
echo   10. BACK
echo:
echo ============================
echo:
set /p zbpilihan=INPUT NUMBER (1-10):

if %zbpilihan%==1 goto zbrush1
if %zbpilihan%==2 goto zbrush2
if %zbpilihan%==3 goto zbrush3
if %zbpilihan%==4 goto zbrush4
if %zbpilihan%==5 goto zbrush5
if %zbpilihan%==6 goto zbrush6
if %zbpilihan%==7 goto zbrush7
if %zbpilihan%==8 goto zbrush8
if %zbpilihan%==9 goto zbrush9
if %zbpilihan%==10 goto graphicsoftware
goto zbrushlist

:zbrush1
cls
set appname=ZBrush_2020_Installer.exe
set paste="%userprofile%\documents\"
For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Zbrush\Zbrush 2020.1.1\%appname%") do xcopy %%a "%paste%" /Y

pause
goto graphicsoftware

:zbrush2
set appname=ZBrush 2020.1.4 - Installer.exe
set paste="%userprofile%\documents\"
For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Zbrush\ZBrush 2020.1.4\%appname%") do xcopy %%a "%paste%" /Y

pause
goto graphicsoftware

:zbrush3
set appname=ZBrush_2021_Installer.exe
set paste="%userprofile%\documents\"
For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Zbrush\ZBrush 2021.0.0\%appname%") do xcopy %%a "%paste%" /Y

pause
goto graphicsoftware

:zbrush4
set appname=ZBrush_2021.1.2_Installer.exe
set paste="%userprofile%\documents\"
For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Zbrush\Zbrush 2021.1.2\%appname%") do xcopy %%a "%paste%" /Y

pause
goto graphicsoftware

:zbrush5
set appname=ZBrush_2021.5_Full Installer.exe
set paste="%userprofile%\documents\"
For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Zbrush\ZBrush 2021.5\%appname%") do xcopy %%a "%paste%" /Y

pause
goto graphicsoftware

:zbrush6
set appname=ZBrush_2021.6.6_Installer.exe
set paste="%userprofile%\documents\"
For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Zbrush\Licensed\%appname%") do xcopy %%a "%paste%" /Y

pause
goto graphicsoftware

:zbrush7
set appname=ZBrush_2021.7.1_Installer.exe
set paste="%userprofile%\documents\"
For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Zbrush\Licensed\%appname%") do xcopy %%a "%paste%" /Y

pause
goto graphicsoftware

:zbrush8
set appname=ZBrush_2022.0.2_Installer.exe
set paste="%userprofile%\documents\"
For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Zbrush\Licensed\%appname%") do xcopy %%a "%paste%" /Y

pause
goto graphicsoftware

:zbrush9
set appname=ZBrush_2022.0.5_Installer.exe
set paste="%userprofile%\documents\"
For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Zbrush\Licensed\%appname%") do xcopy %%a "%paste%" /Y

pause
goto graphicsoftware

:3dsmax
set appname=3DS Max 2022.exe
set paste="%userprofile%\documents\"
For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Autodesk Maya Installer\3DS Max\%appname%") do xcopy %%a "%paste%" /Y

pause
goto graphicsoftware

:epiclauncher
set appname=EpicInstaller-13.0.0-d49c65087a26498c9d60588f4afedd61.msi
set paste="%userprofile%\documents\"
For %%a in ("\\192.168.0.211\ITShare-FTP\%appname%") do xcopy %%a "%paste%" /Y

pause
goto graphicsoftware

:quixelbridge
set appname=Bridge (2021).exe
set paste="%userprofile%\documents\"
For %%a in ("\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Quixel\%appname%") do xcopy %%a "%paste%" /Y

pause
goto graphicsoftware

:softwarelist
mode con:cols=50 lines=41
cls
echo ==================================================
echo                   SOFTWARE LIST
echo ==================================================
echo:
echo   1.  ROCKET CHAT
echo:
echo   2.  WPS
echo:
echo   3.  OFFICE 365
echo:
echo   4.  PURE REF
echo:
echo   5.  ANYDESK
echo:
echo   6.  VNC
echo:
echo   7.  360 SECURITY
echo:
echo   8.  BITDEFENDER
echo:
echo   9.  OBS
echo:
echo   10. MRVIEWER
echo:
echo   11. DJV
echo:
echo   12. MEDIA PLAYER CLASSIC
echo:
echo   13. VLC
echo:
echo   14. VISUAL STUDIO 2019
echo:
echo   15. VISUAL STUDIO 2022
echo:
echo   16. BACK
echo:
echo ==================================================
echo:
set /p input=INPUT NUMBER (1-16) : 

if %input%==1 goto softwarelist
if %input%==2 goto softwarelist
if %input%==3 goto softwarelist
if %input%==16 goto menu

pause
goto softwarelist

:changeaddress
mode con:cols=50 lines=17
cls
set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/c cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
echo ==================================================
echo                 CHANGE IP ADDRESS
echo ==================================================
echo:
echo   1. LOBY
echo:
echo   2. FLOOR 1
echo:
echo   3. FLOOR 2
echo:
echo   4. BACK
echo:
echo ==================================================
echo:
set /p input=INPUT NUMBER (1-4) : 

if %input%==1 goto loby
if %input%==2 goto floor1
if %input%==3 goto floor2
if %input%==4 goto menu

pause
goto changeaddress

:loby
cls
for /f "tokens=2 delims==" %%A in ('wmic nic where "NetConnectionStatus=2 and AdapterTypeId=0" get NetConnectionID /format:list') do set network=%%A

echo INPUT YOUR IP:
echo:
set /p ip_address= 192.168.23.

echo:
echo "Setting Static IP Information"
echo:
netsh interface ip set address "%network%" static 192.168.23.%ip_address% 255.255.255.0 192.168.23.1 1
netsh interface ip add dns name="%network%" addr=192.168.0.201 index=1 >nul
netsh interface ip add dns name="%network%" addr=8.8.8.8 index=2 >nul

 
pause
goto menu

:floor1
cls
for /f "tokens=2 delims==" %%A in ('wmic nic where "NetConnectionStatus=2 and AdapterTypeId=0" get NetConnectionID /format:list') do set network=%%A

echo:
echo INPUT YOUR IP:
echo:
set /p ip_address= 192.168.22.

echo:
echo "Setting Static IP Information"
echo:
netsh interface ip set address "%network%" static 192.168.22.%ip_address% 255.255.255.0 192.168.22.1 1
netsh interface ip add dns name="%network%" addr=192.168.0.201 index=1 >nul
netsh interface ip add dns name="%network%" addr=8.8.8.8 index=2 >nul

pause
goto menu

:floor2
cls
for /f "tokens=2 delims==" %%A in ('wmic nic where "NetConnectionStatus=2 and AdapterTypeId=0" get NetConnectionID /format:list') do set network=%%A

echo:
echo INPUT YOUR IP:
echo:
set /p ip_address=192.168.21.

echo:
cls
echo "Setting Static IP Information"
echo:
netsh interface ip set address "%network%" static 192.168.21.%ip_address% 255.255.255.0 192.168.21.1 1
netsh interface ip add dns name="%network%" addr=192.168.0.201 index=1 >nul
netsh interface ip add dns name="%network%" addr=8.8.8.8 index=2 >nul


pause
goto menu



:remotelist
mode con:cols=50 lines=17
cls
echo ==================================================
echo                   REMOTE VNC
echo ==================================================
echo:
echo   Use NICKNAME on Database FBI
echo:
echo   Example : shally / momo
echo:
echo ==================================================
echo:
set /p inputvnc=INPUT USER: 
echo:
echo ==================================================

if %inputvnc%==setup goto setup
if %inputvnc%==101 goto 101
if %inputvnc%==gameroom goto gameroom
if %inputvnc%==agus goto agus
if %inputvnc%==ary goto ary
if %inputvnc%==nimas goto nimas
if %inputvnc%==asep goto asep
if %inputvnc%==habibie goto habibie
if %inputvnc%==billy goto billy
if %inputvnc%==rama goto rama
if %inputvnc%==natalia goto natalia
if %inputvnc%==christa goto christa
if %inputvnc%==ani goto ani
if %inputvnc%==jeremy goto jeremy
if %inputvnc%==syifana goto syifana
if %inputvnc%==momo goto momo
if %inputvnc%==valiant goto valiant
if %inputvnc%==yulya goto yulya
if %inputvnc%==fajar goto fajar
if %inputvnc%==alicia goto alicia
if %inputvnc%==eni goto eni
if %inputvnc%==bagas goto bagas
if %inputvnc%==rizha goto rizha
if %inputvnc%==oscar goto oscar
if %inputvnc%==ilenda goto ilenda
if %inputvnc%==raditya goto raditya
if %inputvnc%==raissa goto raissa
if %inputvnc%==aulia goto aulia
if %inputvnc%==viriya goto viriya
if %inputvnc%==hamzah goto hamzah
if %inputvnc%==david goto david
if %inputvnc%==crystal goto crystal
if %inputvnc%==ivan goto ivan
if %inputvnc%==asrina goto asrina
if %inputvnc%==adrian goto adrian
if %inputvnc%==moch goto moch
if %inputvnc%==shally goto shally
if %inputvnc%==ashilina goto ashilina
if %inputvnc%==dylan goto dylan
if %inputvnc%==stevianto goto stevianto
if %inputvnc%==alan goto alan
if %inputvnc%==sonia goto sonia
if %inputvnc%==anjani goto anjani
if %inputvnc%==mufti goto mufti
if %inputvnc%==andri goto andri
if %inputvnc%==villa goto villa
if %inputvnc%==hei goto hei
if %inputvnc%==kenin goto kenin
if %inputvnc%==raihan goto raihan
if %inputvnc%==astri goto astri
if %inputvnc%==firdaus goto firdaus
if %inputvnc%==riyad goto riyad
if %inputvnc%==dino goto dino
if %inputvnc%==dewi goto dewi
if %inputvnc%==ky goto ky
if %inputvnc%==miriam goto miriam
if %inputvnc%==thariq goto thariq
if %inputvnc%==ihsan goto ihsan123
if %inputvnc%==simon goto simon
if %inputvnc%==lafina goto lafina
if %inputvnc%==kanzu goto kanzu
if %inputvnc%==neliia goto nelia
if %inputvnc%==dary goto dary
if %inputvnc%==fahmi goto fahmi
if %inputvnc%==riyandi goto riyandi
if %inputvnc%==wulan goto wulan
if %inputvnc%==dine goto dine
if %inputvnc%==rachmat goto rachmat
if %inputvnc%==danang goto danang
if %inputvnc%==rifqi goto rifqi
if %inputvnc%==robin goto robin
if %inputvnc%==sara goto sara
if %inputvnc%==sansan goto sansan
if %inputvnc%==alifadar goto alifadar
if %inputvnc%==sekar goto sekar
if %inputvnc%==selly goto selly
if %inputvnc%==gionela goto gionela
if %inputvnc%==evelyne goto evelyne
if %inputvnc%==naafi goto naafi
if %inputvnc%==fachry goto fachry
if %inputvnc%==gamal goto gamal
if %inputvnc%==levina goto levina
if %inputvnc%==jovian goto jovian
if %inputvnc%==farhan1 goto farhan1
if %inputvnc%==julio goto julio
if %inputvnc%==hana goto hana
if %inputvnc%==nabila goto nabila
if %inputvnc%==farhan2 goto farhan2
if %inputvnc%==trianto goto trianto
if %inputvnc%==firina goto firina
if %inputvnc%==lougeo goto lougeo

goto remotelist

:setup
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.21.97 -password BVn3v3rd3ad
goto menu

:101
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.101 -password BVn3v3rd3ad
goto menu

:gameroom
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.23.101 -password BVn3v3rd3ad
goto menu

:agus
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.30 -password BVn3v3rd3ad
goto menu

:ary
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.21.41 -password BVn3v3rd3ad
goto menu

:villa
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.61 -password BVn3v3rd3ad
goto menu

:nimas
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.39 -password BVn3v3rd3ad
goto menu

:asep
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.28 -password BVn3v3rd3ad
goto menu

:habibie
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.50 -password BVn3v3rd3ad
goto menu

:billy
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.12 -password BVn3v3rd3ad
goto menu

:rama
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.21 -password BVn3v3rd3ad
goto menu

:natalia
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.69 -password BVn3v3rd3ad
goto menu

:christa
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.21.87 -password BVn3v3rd3ad
goto menu

:ani
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.70 -password BVn3v3rd3ad
goto menu

:jeremy
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.63 -password BVn3v3rd3ad
goto menu

:syifana
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.21.59 -password BVn3v3rd3ad
goto menu

:momo
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.21.80 -password BVn3v3rd3ad
goto menu

:valiant
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.21.11 -password BVn3v3rd3ad
goto menu

:yulya
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.68 -password BVn3v3rd3ad
goto menu

:fajar
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.21.49 -password BVn3v3rd3ad
goto menu

:alicia
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.21.58 -password BVn3v3rd3ad
goto menu

:eni
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.21.29 -password BVn3v3rd3ad
goto menu

:bagas
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.21.45 -password BVn3v3rd3ad
goto menu

:rizha
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.17 -password BVn3v3rd3ad
goto menu

:oscar
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.21.76 -password BVn3v3rd3ad
goto menu

:ilenda
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.21.92 -password BVn3v3rd3ad
goto menu

:raditya
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.21.85 -password BVn3v3rd3ad
goto menu

:raissa
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.21.27 -password BVn3v3rd3ad
goto menu

:aulia
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.53 -password BVn3v3rd3ad
goto menu

:viriya
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.25 -password BVn3v3rd3ad
goto menu

:hamzah
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.23 -password BVn3v3rd3ad
goto menu

:david
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.47 -password BVn3v3rd3ad
goto menu

:crystal
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.21.28 -password BVn3v3rd3ad
goto menu

:ivan
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.16 -password BVn3v3rd3ad
goto menu

:asrina
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.65 -password BVn3v3rd3ad
goto menu

:adrian
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.21.44 -password BVn3v3rd3ad
goto menu

:moch
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.21.48 -password BVn3v3rd3ad
goto menu

:shally
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.45 -password BVn3v3rd3ad
goto menu

:ashilina
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.0.44 -password BVn3v3rd3ad
goto menu

:dylan
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.34 -password BVn3v3rd3ad
goto menu

:stevianto
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.35 -password BVn3v3rd3ad
goto menu

:alan
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.33 -password BVn3v3rd3ad
goto menu

:sonia
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.21.31 -password BVn3v3rd3ad
goto menu

:anjani
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.21.18 -password BVn3v3rd3ad
goto menu

:mufti
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.21.95 -password BVn3v3rd3ad
goto menu

:andri
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.42 -password BVn3v3rd3ad
goto menu

:hei
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.21.88 -password BVn3v3rd3ad
goto menu

:kenin
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.37 -password BVn3v3rd3ad
goto menu

:raihan
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.49 -password BVn3v3rd3ad
goto menu

:astri
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.21.21 -password BVn3v3rd3ad
goto menu

:firdaus
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.27 -password BVn3v3rd3ad
goto menu

:riyad
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.19 -password BVn3v3rd3ad
goto menu

:dino
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.21.72 -password BVn3v3rd3ad
goto menu

:dewi
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.22 -password BVn3v3rd3ad
goto menu

:ky
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.51 -password BVn3v3rd3ad
goto menu

:miriam
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.26 -password BVn3v3rd3ad
goto menu

:thariq
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.21.73 -password BVn3v3rd3ad
goto menu

:ihsan123
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 0.0.0.0 -password BVn3v3rd3ad
goto menu

:simon
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.21.40 -password BVn3v3rd3ad
goto menu

:lafina
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.38 -password BVn3v3rd3ad
goto menu

:kanzu
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.15 -password BVn3v3rd3ad
goto menu

:nelia
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.18 -password BVn3v3rd3ad
goto menu

:dary
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.24 -password BVn3v3rd3ad
goto menu

:fahmi
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.21.98 -password BVn3v3rd3ad
goto menu

:riyandi
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.31 -password BVn3v3rd3ad
goto menu

:wulan
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.64 -password BVn3v3rd3ad
goto menu

:dine
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.46 -password BVn3v3rd3ad
goto menu

:rachmat
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.21.51 -password BVn3v3rd3ad
goto menu

:danang
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.21.38 -password BVn3v3rd3ad
goto menu

:rifqi
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.21.78 -password BVn3v3rd3ad
goto menu

:robin
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.55 -password BVn3v3rd3ad
goto menu

:sara
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.21.57 -password BVn3v3rd3ad
goto menu

:sansan
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.21.68 -password BVn3v3rd3ad
goto menu

:alifadar
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.29 -password BVn3v3rd3ad
goto menu

:sekar
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.54 -password BVn3v3rd3ad
goto menu

:ary
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.44 -password BVn3v3rd3ad
goto menu

:gionela
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.58 -password BVn3v3rd3ad
goto menu

:evelyne
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.40 -password BVn3v3rd3ad
goto menu

:naafi
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.36 -password BVn3v3rd3ad
goto menu

:fachry
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.59 -password BVn3v3rd3ad
goto menu

:gamal
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.21.55 -password BVn3v3rd3ad
goto menu

:levina
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.21.77 -password BVn3v3rd3ad
goto menu

:jovian
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.21.74 -password BVn3v3rd3ad
goto menu

:farhan1
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.41 -password BVn3v3rd3ad
goto menu

:julio
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.48 -password BVn3v3rd3ad
goto menu

:hana
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.22.57 -password BVn3v3rd3ad
goto menu

:nabila
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.21.33 -password BVn3v3rd3ad
goto menu

:farhan2
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.21.52 -password BVn3v3rd3ad
goto menu

:trianto
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.21.95 -password BVn3v3rd3ad
goto menu

:firina
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.21.95 -password BVn3v3rd3ad
goto menu

:lougeo
cls
Start "REMOTE"  "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" 192.168.21.95 -password BVn3v3rd3ad


:user
cls
set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/c cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
net user Administrator /active:yes
net user "Administrator" J@ck2@21^&*
net localgroup Administrators
WMIC USERACCOUNT WHERE "Name='Administrator'" SET PasswordExpires=FALSE
WMIC USERACCOUNT WHERE "Name='Administrator'" SET Passwordchangeable=TRUE

echo:
echo:
echo Will restart in 5 second..
echo:
TIMEOUT /T 5 /NOBREAK
shutdown -l 


:rdc
cls
echo:
echo:
echo:
set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/c cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
netsh advfirewall firewall set rule group="remote desktop" new enable=YES > nul && echo success 
echo:
echo:
echo:

pause
goto menu

