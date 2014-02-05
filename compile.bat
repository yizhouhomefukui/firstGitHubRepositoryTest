@echo off
rem Batch file to compile a sample of Astah API on Windows

setlocal

set ASTAH_HOME=..\
if exist "%ASTAH_HOME%\jre\bin\javaw.exe" set PATH=%ASTAH_HOME%\jre\bin;%PATH%

rem Remove "rem" from following two lines, if you'd like to use j2sdk.
rem set JAVA_HOME=C:\jdk1.7.0_11
rem set PATH=%JAVA_HOME%\bin

set ASTAH_SYSML_JAR=%ASTAH_HOME%\astah-sys.jar
set API_JAR=%ASTAH_HOME%\astah-api.jar
set CLASSPATH=%ASTAH_JAR%;%ASTAH_SYSML_JAR%

rem compile
javac -classpath %CLASSPATH% *.java
IF ERRORLEVEL 2 goto noJavac
goto end

:noJavac
echo.
echo Failed to compile.
echo Java SDK is required to compile.
echo.
pause
goto end

:end

endlocal
