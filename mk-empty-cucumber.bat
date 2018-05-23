REM You need to run the bat via cmd and pass it a name as an argument
REM Example: mk-empty-cucumber.bat ProjectName
set name=%1
mvn archetype:generate -DinteractiveMode=false -DgroupId=%name% -DartifactId=%name% -Dpackage=%name% -DarchetypeVersion=1.3 > ./console.log