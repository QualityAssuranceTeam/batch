@echo off
:: the "@echo off" line sets the whole batch file not to print commands
:: You need to run the bat via cmd and pass it a name as an argument
:: Example: mk-empty-cucumber.bat ProjectName
set projectName=%1
:: the caret sign ^ is used to split a long command into multiple lines
mvn archetype:generate ^
-B ^
-DgroupId=%projectName% ^
-DartifactId=%projectName% ^
-Dpackage=%projectName% ^
-DarchetypeGroupId=io.cucumber ^
-DarchetypeArtifactId=cucumber-archetype ^
-DarchetypeVersion=2.3.1.2 > .\console.log | echo Creating an empty cucumber project ...
echo Done!
echo Project is created in "%cd%\%projectName%"