@echo off
echo ========================================
echo      SWIGGAA PROJECT STATUS CHECKER
echo ========================================
echo.

echo Checking service status...
echo.

REM Check Java processes
echo 🔍 Running Java Services:
echo ----------------------------------------
jps -l | findstr -i "eureka\|auth\|menu\|order\|gateway\|webapp"
if %errorlevel% neq 0 (
    echo ❌ No Swiggaa services found running
) else (
    echo.
)

echo.
echo 🌐 Port Status:
echo ----------------------------------------

REM Check each port
netstat -an | findstr ":8761 " >nul
if %errorlevel% equ 0 (
    echo ✅ Port 8761 ^(Eureka Server^) - ACTIVE
) else (
    echo ❌ Port 8761 ^(Eureka Server^) - NOT ACTIVE
)

netstat -an | findstr ":8081 " >nul
if %errorlevel% equ 0 (
    echo ✅ Port 8081 ^(Auth Service^) - ACTIVE
) else (
    echo ❌ Port 8081 ^(Auth Service^) - NOT ACTIVE
)

netstat -an | findstr ":8082 " >nul
if %errorlevel% equ 0 (
    echo ✅ Port 8082 ^(Menu Service^) - ACTIVE
) else (
    echo ❌ Port 8082 ^(Menu Service^) - NOT ACTIVE
)

netstat -an | findstr ":8083 " >nul
if %errorlevel% equ 0 (
    echo ✅ Port 8083 ^(Order Service^) - ACTIVE
) else (
    echo ❌ Port 8083 ^(Order Service^) - NOT ACTIVE
)

netstat -an | findstr ":8080 " >nul
if %errorlevel% equ 0 (
    echo ✅ Port 8080 ^(Gateway^) - ACTIVE
) else (
    echo ❌ Port 8080 ^(Gateway^) - NOT ACTIVE
)

netstat -an | findstr ":8090 " >nul
if %errorlevel% equ 0 (
    echo ✅ Port 8090 ^(WebApp Frontend^) - ACTIVE
) else (
    echo ❌ Port 8090 ^(WebApp Frontend^) - NOT ACTIVE
)

echo.
echo 🔗 Quick Access URLs:
echo ----------------------------------------
echo • Main Application: http://localhost:8090/swiggaa
echo • Eureka Dashboard: http://localhost:8761
echo • Auth Service:     http://localhost:8081
echo • Menu Service:     http://localhost:8082
echo • Order Service:    http://localhost:8083
echo • Gateway:          http://localhost:8080

echo.
echo ⚡ Quick Actions:
echo ----------------------------------------
echo • To START all services: start-swiggaa-project.bat
echo • To STOP all services:  stop-swiggaa-project.bat
echo • To check status again: status-swiggaa-project.bat

echo.
echo Press any key to exit...
pause >nul