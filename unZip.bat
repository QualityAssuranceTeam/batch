REM This script unzips all zips to the respective dirs and reports to list.txt
REM Tweaks: "-y" to force mode, select *.zip, *.rar, *.7z or any other extension.
set id=%RANDOM%
7z x .\*.zip -o*-%id% -r -y > list-%id%.txt