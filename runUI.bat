@ECHO OFF
set CLASSPATH=.
set CLASSPATH=%CLASSPATH;
cd C:\merchantpulse\lib_cignall
start /B javaw -jar -Dconfig.home="c:/merchantpulse" CignallUI-1.0-SNAPSHOT.jar

exit
