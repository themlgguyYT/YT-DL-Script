@echo off
echo 1 = Video
echo 2 = Audio
echo 3 = Video Playlist
echo 4 = Audio Playlist
set /p mode="Mode: "
IF /I "%mode%" EQU "1" echo Video mode is Selected
IF /I "%mode%" EQU "2" echo Audio mode is Selected
IF /I "%mode%" EQU "3" echo Video Playlist mode is Selected
IF /I "%mode%" EQU "4" echo Audio Playlist mode is Selected
set /p id="Enter ID: "
IF /I "%mode%" EQU "1" youtube-dl %id% -x --recode-video mp4 -o "downloads\%%(title)s %%(id)s.%%(ext)s"
IF /I "%mode%" EQU "2" youtube-dl %id% -x --audio-format mp3 -o "downloads\%%(title)s %%(id)s.%%(ext)s"
IF /I "%mode%" EQU "3" youtube-dl %id% -x --recode-video mp4 --playlist -o "downloads\%%(title)s %%(id)s.%%(ext)s"
IF /I "%mode%" EQU "4" youtube-dl %id% -x --audio-format mp3 --playlist -o "downloads\%%(title)s %%(id)s.%%(ext)s"
pause