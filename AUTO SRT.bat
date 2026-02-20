@echo off
setlocal

if not exist "ASS\" (
    echo Erreur : le dossier ASS n'existe pas.
    pause
    exit /b 1
)

if not exist "SRT\" mkdir "SRT"

for %%a in (ASS\*.ass) do (
    TITLE Conversion : %%~na
    echo Conversion de %%~na...
    ffmpeg -i "%%a" "SRT\%%~na.en.srt"
)

echo Termine.
pause
