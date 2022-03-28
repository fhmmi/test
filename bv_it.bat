@echo off
net use \\192.168.0.211 Bismillah41 /USER:bv0166
::set "params=%*"
::cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/c cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
color 2
title BV_IT
:menu
cls
echo ============================
echo         COPY FILES
echo ============================
echo:
echo   1. GENERAL SOFTWARE
echo:
echo   2. ARTIST INSTALLATION 
echo:
echo   3. GRAPHIC SOFTWARE
echo:
echo   4. CHANGE IP ADDRESS
echo:
echo   5. EXIT
echo:
echo ============================
echo:
set /p pilihan=INPUT NUMBER (1-5): 

if %pilihan%==1 goto generalsoftware
if %pilihan%==2 goto artistlist
if %pilihan%==3 goto graphicsoftware
if %pilihan%==4 goto changeaddress
if %pilihan%==5 goto exit

goto menu

REM ================================================== START GENERAL SOFTWARE =============================================================================

:generalsoftware
cls
echo:
echo ============================
echo    COPY GENERAL SOFTWARE
echo ============================
echo:

set appname1=(Must install)WindowsAdminCenter2110.msi
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
set appname12=rocketchat-setup-3.7.5.exe
set appname13=360TS_Setup_10.8.0.1393.exe
set paste="%userprofile%\documents\"

For %%a in ("\\192.168.0.211\ITShare-FTP\Software\General Software\%appname1%","\\192.168.0.211\ITShare-FTP\Software\General Software\%appname2%","\\192.168.0.211\ITShare-FTP\Software\General Software\%appname3%","\\192.168.0.211\ITShare-FTP\Software\General Software\%appname4%","\\192.168.0.211\ITShare-FTP\Software\General Software\%appname5%","\\192.168.0.211\ITShare-FTP\Software\General Software\%appname6%","\\192.168.0.211\ITShare-FTP\Software\General Software\%appname7%","\\192.168.0.211\ITShare-FTP\Software\General Software\%appname8%","\\192.168.0.211\ITShare-FTP\Software\General Software\%appname9%","\\192.168.0.211\ITShare-FTP\Software\General Software\%appname10%","\\192.168.0.211\ITShare-FTP\Software\General Software\not need\%appname11%","\\192.168.0.211\ITShare-FTP\Software\Chat system\%appname12%","\\192.168.0.211\ITShare-FTP\Software\Security, Backup, and Antivirus Software\360 Total Security\%appname13%") do xcopy %%a "%paste%" /Y
echo:
echo ============================
echo:
pause
goto menu

REM ================================================== END GENERAL SOFTWARE =============================================================================

REM ==================================================   START ARTIST LIST  =============================================================================

:artistlist
cls
echo ============================
echo      ARTIST STARTING KIT
echo ============================
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
echo ============================
echo:
set /p pilihan=INPUT NUMBER (1-7): 
if %pilihan%==1 goto modeller
if %pilihan%==2 goto concept
if %pilihan%==3 goto vfx
if %pilihan%==4 goto storyboard
if %pilihan%==5 goto 2danimator
if %pilihan%==6 goto 3danimator
if %pilihan%==7 goto graphicdesigner
if %pilihan%==8 goto menu

goto artistlist

REM ====================================================== END ARTIST LIST =============================================================================

REM ====================================================== START MODELLER  =============================================================================

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

REM ====================================================== END MODELLER  =============================================================================

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


REM ====================================================== END 2D ANIMATOR =============================================================================

REM ====================================================== START GRAPHIC SOFTWARE ========================================================================

:graphicsoftware
cls
echo ==========================================
echo              GRAPHIC SOFTWARE
echo ==========================================
echo:
echo   1. ADOBE (CREATIVE CLOUD)
echo:
echo   2. AUTODESK MAYA (MAYA/MAYA LT)
echo:
echo   3. BLENDER
echo:
echo   4. FOUNDRY (NUKE/KATANA)
echo:
echo   5. HOUDINI
echo:
echo   6. KRITA
echo:
echo   7. MARMOSET
echo:
echo   8. ZBRUSH
echo:
echo   9. BACK
echo:
echo ==========================================
echo:
set /p gpilihan=INPUT NUMBER (1-9): 

if %gpilihan%==1 goto adobelist
if %gpilihan%==2 goto autodesklist
if %gpilihan%==3 goto blenderlist
if %gpilihan%==4 goto alert
if %gpilihan%==5 goto alert
if %gpilihan%==6 goto alert
if %gpilihan%==7 goto alert
if %gpilihan%==8 goto alert
if %gpilihan%==9 goto menu

goto graphicsoftware

REM ====================================================== END GRAPHIC SOFTWARE ========================================================================


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
echo   4. Blender-2.92.0
echo:
echo   5. Blender-2.93.1
echo:
echo   6. Blender-2.93.5
echo:
echo   7. Blender-2.93.6
echo:
echo   8. BACK
echo:
echo ============================
echo:
set /p blpilihan=INPUT NUMBER (1-3): 

if %blpilihan%==1 goto blender1
if %blpilihan%==2 goto blender2
if %blpilihan%==3 goto blender3
if %blpilihan%==4 goto blender4
if %blpilihan%==5 goto blender5
if %blpilihan%==6 goto blender6
if %blpilihan%==7 goto blender7
if %blpilihan%==8 goto graphicsoftware


goto blenderlist





rem ==================================================================================================================================================================




:blender1
xcopy "\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Blender\blender-2.83.0-windows64.zip" "D:\Software" /D /Y
echo Success
pause
goto menu

:blender2
xcopy "\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Blender\blender-2.83.3-windows64.zip" "D:\Software" /D /Y
echo Success
pause
goto menu

:blender3
xcopy "\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Blender\blender-2.90.1-windows64.zip" "D:\Software" /D /Y
echo Success
pause
goto menu

:blender4
xcopy "\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Blender\blender-2.92.0-windows64.zip" "D:\Software" /D /Y
echo Success
pause
goto menu

:blender5
xcopy "\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Blender\blender-2.93.1-windows-x64.zip" "D:\Software" /D /Y
echo Success
pause
goto menu

:blender6
xcopy "\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Blender\blender-2.93.5-windows-x64.zip" "D:\Software" /D /Y
echo Success
pause
goto menu

:blender7
xcopy "\\192.168.0.211\ITShare-FTP\Software\Graphics Software\Blender\blender-2.93.6-windows-x64.zip" "D:\Software" /D /Y
echo Success
pause
goto menu

rem ============================================================ IP ADDRESS =====================================================


::wmic nic where "NetConnectionStatus=2 and AdapterTypeId=0" get NetConnectionID /format:list

::for /f "tokens=2 delims==" %%F in ('wmic nic where "NetConnectionStatus=2 and AdapterTypeId=0" get NetConnectionID /format:list') do set InterFaceName=%%F
::echo %interfaceName% 
:changeaddress
cls
echo ============================
echo      CHANGE IP ADDRESS
echo ============================
echo:
echo   1. LOBY
echo:
echo   2. FLOOR 1
echo:
echo   3. FLOOR 2
echo:
echo   4. BACK
echo:
echo ============================
echo:
set /p input=INPUT NUMBER : 

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


:exit
echo:
pause
exit

:alert
echo:
echo:
echo ON PROGRESS..........
echo:
echo:
pause
goto menu