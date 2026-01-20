@echo off
setlocal

set AWSCLI=C:\hoge\bin\Amazon\AWSCLIV2\aws
set PROFILE=xxx
set INSTANCE_ID=YOUR EC2 INSTANCE_ID

set LOCAL_PORT=2222
set REMOTE_PORT=22

echo Starting SSM SSH tunnel...
echo( localhost:%LOCAL_PORT% -^> %INSTANCE_ID%:%REMOTE_PORT%
echo.
echo Press Ctrl+C to stop.
echo.

"%AWSCLI%" --profile %PROFILE% ssm start-session ^
  --target %INSTANCE_ID% ^
  --document-name AWS-StartPortForwardingSession ^
  --parameters "localPortNumber=%LOCAL_PORT%,portNumber=%REMOTE_PORT%"

endlocal
