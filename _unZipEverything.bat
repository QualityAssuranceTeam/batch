REM This script unzips anything to the respective dir and reports to list.txt
REM Tweaks: "-y" to force mode, set *.zip; *.rar, *.7z or any for specific archives;
set id=%RANDOM%
7z x .\*.* -o*-%id% -r -y > _list-%id%.txt