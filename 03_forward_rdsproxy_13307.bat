@echo off
setlocal

set SSH_USER=SSH USER
set SSH_HOST=127.0.0.1
set SSH_PORT=2222

set LOCAL_PORT=13307
set DB_HOST=REPLACE_WITH_YOUR_RDS_PROXY_ENDPOINT
set DB_PORT=3306

echo Forwarding MySQL (RDS Proxy endpoint)...
echo( localhost:%LOCAL_PORT% -^> %DB_HOST%:%DB_PORT% via SSH^(%SSH_HOST%:%SSH_PORT%^)
echo.
echo Press Ctrl+C to stop.
echo.

ssh -p %SSH_PORT% -N -L %LOCAL_PORT%:%DB_HOST%:%DB_PORT% %SSH_USER%@%SSH_HOST%

endlocal
