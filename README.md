VLC-Desktop-BG-startup-script
=============================

*~Torrentails*  
For use in the Public Domain (see licence file for more info)

A simple batch script for windows to launch a given video file at system startup.

DISCLAIMER:
-----------------------------

**The information contained here within, is a guide ONLY! I can not be held responsible for any damage or loss incured by yourself. If you are not sure about anything in this README then proceed with caution and/or ask for help.**

Use:
-----------------------------

1.  Save the script in the same folder as the video(s) you want to play at startup. 
2.  Right-click it and select edit. 
3.  Change the path between the `<`angle brackets`>` to the full path of the script.  
    EG. `"File:///C:/Users/yourname/videos/%chosen%"`    
4.  Install [VLC](http://www.videolan.org/vlc/download-windows.html) if you haven't done so already. 
5.  (Optional) Change the `CD` path to the path of your VLC installation.      
    This shouldn't be nessesary if you installed to the Default directory and are running a 64 bit opperating system.  
    If you aren't using a 64 bit system then you should be able to simply remove the *(x86)* part. 
6.  Save the file and then run the script to confirm that it plays as your desktop background. 
7.  Download and install [WinPatrol](http://www.winpatrol.com/) 
8.  Once installed, open it as an administrator and goto the startup programs tab. 
9.  Click 'Add' at the bottom of the screen and navigate to the startup script. 
10. Reboot your computer and enjoy! (hopefully, see notes/troubleshooting) 

Optional, advanced but recomended:
-----------------------------

In WinPatrol -> Startup Programs, there will be quite a few entries on this list, each of them delays the startup time of your computer and will more than likely delay the playing of the video.  

It would be a good idea to look at each of them and decide if you need them to start up as soon as the computer boots. For most of them, the answer will be no.  
If this is the case, right click on an entry and select 'Move to Delayed Start Program List' (don't move vidStart.bat)  

Once you have moved the desired items to Delayed Start, click on that tab and change their startup times by selecting on an item and clicking 'Delay Options' at the bottom.  

You should really only need to change the delay time. Try to stager the startup times so that everything doesn't open all at once.  
Also try to start any CPU or Hard Drive intensive applications with a delay longer than the length of the video(s).  

FAQ:
-----------------------------

+   **Q:** What do all those parameters after the start command do?  
    **A:** `/min`  
    Starts VLC minimized so you don't have to look at it, blocking your nice desktop.  
    `/BELOWNORMAL`  
    Runs VLC at a low processor priority so that it won't prevent you from using your computer while playing.  
    `--directx-hw-yuv`  
    Sets the output to DirectX; required to play video as desktop background.  
    `--video-wallpaper`  
    This tells VLC to actually set video as your wallpaper.  
    `--qt-start-minimized`  
    Starts VLC minimized.  
    Shouldn't need it but it doesn't work properly if we leave it out.  
    `-I dummy`  
    Simply sets the interface to a blank (dummy) interface.  
    Not sure if we actually need it, but it doesn't hurt.  
    `--no-qt-notification`  
    Prevents an annoying popup from showing.  
    `--no-qt-name-in-title`  
    Doesn't set the VLC title to the file name title.  
    Not sure if we actually need it, but it doesn't hurt.  
    `--no-video-title-show`  
    Prevents the title being displayed on your nice desktop background.  
    `--no-subsdec-autodetect-utf8`  
    Disables subtitles if your video has them.  
    `--no-osd`  
    Disables the on screen display, things like the controls and other junk we don't need to see.  
    `--play-and-exit`  
    Exits VLC once it's finished playing your video, so that it doesn't hang arround on the taskbar.
+   **Q:** What is WinPatrol?  
    **A:** WinPatrol is a windows tool to help protect your computer from malware and help it function properly.  
    To be honest, I only found WinPatrol while putting together this script because I wanted a way to control the start order of startup applications. I've been using it for a long time since and consider it one of the most useful tools on Windows.  
    I'm actually quite fond of it now, my computer starts up so much more efficiently! :)
+   **Q:** What is VLC?  
    **A:** ***OMGWTFBBQ!?*** **0_o** I'm suprised you've not heared of it!  
    VLC stands for Video LAN Client, and it is one of, if not, the most popular media player available. It's open source and has a huge, active user base and is easily extensible.  
+   **Q:** This is too hard to understand! Is there a video tutorial I can watch?  
    **A:** Not yet, but I'm working on it!  
    Check my [youtube chanel](http://www.youtube.com/user/torrentails) to see if it's up.

Notes/Troubleshooting:
-----------------------------

+   This script was made and only tested Windows 7 x64 with VLC version 2.0.8 and as such, may work diferently or not work at all for you.
+   This is a Windows batch script, VLC is available on other operating systems but you will need to figure it out your self to get something like this working.
+   Unless you are running a really fast/powerfull computer with solid state drives (and mybe even if you are), there will still be a delay between your desktop showing and VLC actually kicking in. You can reduce this by doing the folowing:  
    Follow the Optional Advanced instructions above.  
    Keep your hard drive clean and with plenty of space.  
    Uninstall any programs you don't need, esspecially true for programs that start at windows startup. 
+   This doesn't work at all if DreamScene is enabled. If you don't know what DreamScene is, then don't worry, you more than likely don't have it enabled.
+   Windows Aero features are disabled while the video is playing, this is an unavoidable side effect of the DirectX output method.  
    Aero will be re-enabled once the video finishes, so no big loss.
