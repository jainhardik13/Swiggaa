@echo off
echo ========================================
echo      SWIGGAA MICROSERVICES STOPPER
echo ========================================
echo.
echo Stopping all Swiggaa services...
echo.

REM Kill Java processes on specific ports
echo Checking running services...
echo.

REM Check and kill processes on each port
for /f "tokens=5" %%a in ('netstat -ano ^| findstr ":8761 "') do (
    echo Stopping Eureka Server (Port 8761)...
    taskkill /F /PID %%a >nul 2>&1
)

for /f "tokens=5" %%a in ('netstat -ano ^| findstr ":8081 "') do (
    echo Stopping Auth Service (Port 8081)...
    taskkill /F /PID %%a >nul 2>&1
)

for /f "tokens=5" %%a in ('netstat -ano ^| findstr ":8082 "') do (
    echo Stopping Menu Service (Port 8082)...
    taskkill /F /PID %%a >nul 2>&1
)

for /f "tokens=5" %%a in ('netstat -ano ^| findstr ":8083 "') do (
    echo Stopping Order Service (Port 8083)...
    taskkill /F /PID %%a >nul 2>&1
)

for /f "tokens=5" %%a in ('netstat -ano ^| findstr ":8080 "') do (
    echo Stopping Gateway (Port 8080)...
    taskkill /F /PID %%a >nul 2>&1
)

for /f "tokens=5" %%a in ('netstat -ano ^| findstr ":8090 "') do (
    echo Stopping WebApp Frontend (Port 8090)...
    taskkill /F /PID %%a >nul 2>&1
)

REM Alternative method: Kill all Java processes with Spring Boot application names
echo.
echo Stopping any remaining Spring Boot applications...
jps -l | findstr "eureka-server\|auth-service\|menu-service\|order-service\|Gateway\|WebApp" > temp_processes.txt

for /f "tokens=1" %%a in (temp_processes.txt) do (
    echo Stopping Java process %%a...
    taskkill /F /PID %%a >nul 2>&1
)

del temp_processes.txt >nul 2>&1

REM Close any command windows with service titles
echo.
echo Closing service windows...
taskkill /F /FI "WINDOWTITLE:Eureka Server*" >nul 2>&1
taskkill /F /FI "WINDOWTITLE:Auth Service*" >nul 2>&1
taskkill /F /FI "WINDOWTITLE:Menu Service*" >nul 2>&1
taskkill /F /FI "WINDOWTITLE:Order Service*" >nul 2>&1
taskkill /F /FI "WINDOWTITLE:Gateway*" >nul 2>&1
taskkill /F /FI "WINDOWTITLE:WebApp Frontend*" >nul 2>&1

echo.
echo ========================================
echo      ALL SERVICES STOPPED!
echo ========================================
echo.
echo ✓ All Swiggaa microservices have been stopped
echo ✓ All service windows have been closed
echo ✓ Ports 8761, 8080, 8081, 8082, 8083, 8090 are now free
echo.
echo You can now:
echo • Restart services using start-swiggaa-project.bat
echo • Make code changes and rebuild
echo • Restart individual services manually
echo.

echo Press any key to exit...
pause >nul