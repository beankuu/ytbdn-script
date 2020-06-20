@Echo off
echo ============================
echo      Youtube Downloader
echo ============================
echo.
echo.

:runName
set /p link="link: "
if /I "%link%" Equ "q" goto :end
  start youtube-dl --ignore-errors --quiet --extract-audio --audio-format mp3 %link%
echo.
goto :runName

:end
echo byebye
exit