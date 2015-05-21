@echo off
timeout /t 1
setlocal EnableDelayedExpansion
echo %RANDOM%+!random! >> nul
set count=0
for /f "delims=" %%a in ('dir /b *.mp4') do @(
	set filename[!count!]=%%a
	set /a count = count + 1
)
set /a choose = (%random% * 32768 + %random%) %% count
set chosen=!filename[%choose%]!
CD "C:\Program Files (x86)\VideoLAN\VLC"
START /min /BELOWNORMAL vlc.exe --directx-hw-yuv --video-wallpaper --qt-start-minimized -I dummy --no-qt-notification --no-qt-name-in-title --no-video-title-show --no-subsdec-autodetect-utf8 --no-osd --play-and-exit "File:///<FULL PATH OF THE VIDEOS>/%chosen%"
