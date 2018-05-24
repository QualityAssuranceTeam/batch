REM You need to run the bat via cmd and pass it a name as an argument
REM Example: mk-empty-cucumber.bat ProjectName
set name=%1
mvn archetype:generate -B -DgroupId=%name% -DartifactId=%name% -Dpackage=%name% -DarchetypeGroupId=io.cucumber -DarchetypeArtifactId=cucumber-archetype -DarchetypeVersion=2.3.1.2 > ./console.log