# file_diff.exe
Utility that compares two given files and tells the exact percentage of how much different they are. It does also tell you the exact places where the two files are different.
In order to use it, you need to simply drag and drop both files onto the exe icon. You can also launch it from command line, but seriously, why bothering to do that when you can just drag and drop??

# youtube-dl_interface.bat
Minimal interface for youtube-dl. Download youtube-dl and you put this little .bat file in the same folder, then launch it with a double click. A cmd window will show up. Just right click on it, paste the url of the video that you want to download, and hit enter!
If you have connection issues, don't worry: in case of connection lost, it resumes download right away, until the video is completely downloaded.
If you need to download Nicovideo videos, you need to first edit this .bat file with notepad. Just replace "my_username" with your Nicovideo username, and replace "my_password" with your Nicovideo password. Don't worry, it's safe.

# sprite corrector for SNES Prince of Persia
Script that allows to see the player even when the screen is completely glitched out.
This is just a lua script, however I can't upload it in the userfiles because it depends on some .png files. Many, actually. In any case, everything is included in the .zip file. Just extract it where you want and use it with BizHawk.

# stream cropper
Little tool that allows to live stream only a section of your monitor, as opposed of streaming the full screen or a specific window only, as the Discord streaming functionality doesn't support alternatives. Launch the .exe file, and a black window will appear. Then, start the streaming on Discord, and choose to stream the window of this tool. Every other window that is placed on top of the black rectangle will be streamed. Written in C++ with Win32 API, for high performance.

# TAStudio color hack
Tool for changing the colors in TAStudio, by hacking specific bytes in EmuHawk.exe. Currently works only for BizHawk 2.4.2.
Has a nice GUI interface and can use Windows' internal color picker, by clicking on the colored rectangles.
It also allows to revert to the original colors, but it would still be a good idea to keep a backup file of EmuHawk.exe.
