@echo Off
:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%ERRORLEVEL%' NEQ '0' (
    ::echo Run as Admin
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"="
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------

:: SetHostsFile
set newLine=^& echo.
set hostsFile="%SYSTEMROOT%\System32\drivers\etc\hosts"

find /C /I "Performance boost" %hostsFile%
if '%ERRORLEVEL%' NEQ '0' echo %newLine%^# Performance boost redirects public domains to localhost>> %hostsFile%

find /C /I "www.facebook.com" %hostsFile%
if '%ERRORLEVEL%' NEQ '0' echo %newLine%^127.0.0.1 www.facebook.com>> %hostsFile%

find /C /I "bg-bg.facebook.com" %hostsFile%
if '%ERRORLEVEL%' NEQ '0' echo %newLine%^127.0.0.1 bg-bg.facebook.com>> %hostsFile%

find /C /I "9gag.com" %hostsFile%
if '%ERRORLEVEL%' NEQ '0' echo %newLine%^127.0.0.1 9gag.com>> %hostsFile%

find /C /I "www.linkedin.com" %hostsFile%
if '%ERRORLEVEL%' NEQ '0' echo %newLine%^127.0.0.1 www.linkedin.com>> %hostsFile%