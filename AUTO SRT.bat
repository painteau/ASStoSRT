for %%a in (ASS\*.ass) do (
TITLE "%%~na"
ffmpeg -i "%%a" "SRT\%%~na".en.srt
)