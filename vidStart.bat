@echo off
TIMEOUT /T 1
CD "C:\Program Files (x86)\VideoLAN\VLC"
START /min /high vlc.exe --directx-hw-yuv --video-wallpaper --qt-start-minimized -I dummy --no-qt-notification --no-qt-name-in-title --no-video-title-show --no-subsdec-autodetect-utf8 --no-osd --play-and-exit "File:///C:/Users/Torren/Videos/DreamScenes/Dork_PMV.mp4"