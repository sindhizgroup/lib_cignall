@ECHO OFF

for /f tokens^=2^ delims^=^" %%i in ('reg query HKEY_CLASSES_ROOT\jarfile\shell\open\command /ve') do set JAVAW_PATH=%%i


if "%JAVAW_PATH%"=="" GOTO JAVA_NOT_INSTALLED


set JAVA_HOME=%JAVAW_PATH%

set CD=C:\merchantpulse
set CLASSPATH=.
set CLASSPATH=%CLASSPATH%;%CD%\lib_cignall\*.jar

cd %CD%\lib_cignall

nssm install MpulseJob "%JAVA_HOME%"  -cp "%CLASSPATH%" -jar -Dconfig.home="c:/merchantpulse" "%CD%"\lib_cignall\CignallScripts-1.0-SNAPSHOT.jar
nssm start MpulseJob


GOTO END

:JAVA_NOT_INSTALLED
REM Do whatever you want to do when Java is NOT installed
ECHO Java Not Found. Please contact administrator

GOTO END

:END
PAUSE
REM End of Batch File
