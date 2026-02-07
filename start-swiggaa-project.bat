@echo off
echo ========================================
echo      SWIGGAA MICROSERVICES STARTER
echo ========================================
echo.
echo Starting Swiggaa Food Delivery System...
echo.

REM Set the base directory
set BASE_DIR=%~dp0
echo Base Directory: %BASE_DIR%
echo.

REM Check if Java is available
java -version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Java is not installed or not in PATH
    echo Please install Java and add it to your PATH
    pause
    exit /b 1
)

echo ✓ Java is available
echo.

REM Function to check if port is in use
echo Checking for port conflicts...
netstat -an | findstr ":8761 " >nul
if %errorlevel% equ 0 (
    echo WARNING: Port 8761 is already in use
)

netstat -an | findstr ":8081 " >nul
if %errorlevel% equ 0 (
    echo WARNING: Port 8081 is already in use
)

netstat -an | findstr ":8082 " >nul
if %errorlevel% equ 0 (
    echo WARNING: Port 8082 is already in use
)

netstat -an | findstr ":8083 " >nul
if %errorlevel% equ 0 (
    echo WARNING: Port 8083 is already in use
)

netstat -an | findstr ":8080 " >nul
if %errorlevel% equ 0 (
    echo WARNING: Port 8080 is already in use
)

netstat -an | findstr ":8090 " >nul
if %errorlevel% equ 0 (
    echo WARNING: Port 8090 is already in use
)

echo.
echo Starting services in order...
echo.

REM 1. Start Eureka Server (Service Discovery)
echo [1/6] Starting Eureka Server on port 8761...
start "Eureka Server" cmd /k "cd /d "%BASE_DIR%eureka-server" && mvnw.cmd spring-boot:run"
echo ✓ Eureka Server starting...
echo   Waiting 30 seconds for Eureka to initialize...
timeout /t 10 /nobreak >nul
echo.

REM 2. Start Auth Service
echo [2/6] Starting Auth Service on port 8081...
start "Auth Service" cmd /k "cd /d "%BASE_DIR%auth-service" && mvnw.cmd spring-boot:run"
echo ✓ Auth Service starting...
echo   Waiting 20 seconds for Auth Service to register...
timeout /t 10 /nobreak >nul
echo.

REM 3. Start Menu Service
echo [3/6] Starting Menu Service on port 8082...
start "Menu Service" cmd /k "cd /d "%BASE_DIR%menu-service" && mvnw.cmd spring-boot:run"
echo ✓ Menu Service starting...
echo   Waiting 20 seconds for Menu Service to register...
timeout /t 10 /nobreak >nul
echo.

REM 4. Start Order Service
echo [4/6] Starting Order Service on port 8083...
start "Order Service" cmd /k "cd /d "%BASE_DIR%order-service" && mvnw.cmd spring-boot:run"
echo ✓ Order Service starting...
echo   Waiting 20 seconds for Order Service to register...
timeout /t 10 /nobreak >nul
echo.

REM 5. Start Gateway
echo [5/6] Starting Gateway on port 8080...
start "Gateway" cmd /k "cd /d "%BASE_DIR%Gateway" && mvnw.cmd spring-boot:run"
echo ✓ Gateway starting...
echo   Waiting 20 seconds for Gateway to register...
timeout /t 10 /nobreak >nul
echo.

REM 6. Start WebApp Frontend
echo [6/6] Starting WebApp Frontend on port 8090...
start "WebApp Frontend" cmd /k "cd /d "%BASE_DIR%WebApp" && mvnw.cmd spring-boot:run"
echo ✓ WebApp Frontend starting...
echo   Waiting 25 seconds for WebApp to start...
timeout /t 10 /nobreak >nul
echo.

echo ========================================
echo       ALL SERVICES STARTED!
echo ========================================
echo.
echo Services Status:
echo ✓ Eureka Server    - http://localhost:8761
echo ✓ Auth Service     - http://localhost:8081
echo ✓ Menu Service     - http://localhost:8082  
echo ✓ Order Service    - http://localhost:8083
echo ✓ Gateway          - http://localhost:8080
echo ✓ WebApp Frontend  - http://localhost:8090
echo.
echo ========================================
echo        APPLICATION READY!
echo ========================================
echo.
echo 🌐 Open your browser and go to:
echo    👉 http://localhost:8090/swiggaa
echo.
echo 📊 Eureka Dashboard (Service Registry):
echo    👉 http://localhost:8761
echo.
echo 🛒 Features Available:
echo    • User Registration & Login
echo    • Browse 100%% Vegetarian Menu
echo    • Add Items to Cart (with Popup)
echo    • Place Orders
echo    • View Order History
echo.
echo ⚠️  Keep this window open to see the status
echo    Close individual service windows to stop them
echo.

REM Wait for 10 seconds then open the application
echo Opening application in 10 seconds...
timeout /t 10 /nobreak >nul

REM Open the application in default browser
start http://localhost:8090/swiggaa

echo.
echo 🎉 Swiggaa is now running!
echo    Press any key to exit this status window...
pause >nul