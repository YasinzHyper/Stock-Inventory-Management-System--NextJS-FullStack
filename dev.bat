@echo off
setlocal enabledelayedexpansion

REM Docker Development Helper Script for Stockly Inventory Management System (Windows)

set "command=%~1"

if "%command%"=="" (
    call :show_help
    exit /b 0
)

if "%command%"=="start" (
    call :start_dev
) else if "%command%"=="stop" (
    call :stop_dev
) else if "%command%"=="restart" (
    call :restart_dev
) else if "%command%"=="logs" (
    call :logs_dev %2
) else if "%command%"=="status" (
    call :status
) else if "%command%"=="shell" (
    call :shell
) else if "%command%"=="db" (
    call :db_operations %2
) else if "%command%"=="cleanup" (
    call :cleanup
) else if "%command%"=="help" (
    call :show_help
) else (
    echo [ERROR] Unknown command: %command%
    call :show_help
    exit /b 1
)

exit /b 0

:start_dev
echo [INFO] Starting Stockly development environment...
call :check_docker
if errorlevel 1 exit /b 1

if not exist .env (
    echo [WARNING] .env file not found. Creating from .env.docker template...
    copy .env.docker .env
)

docker-compose up --build -d
echo [SUCCESS] Development environment started!
echo [INFO] Services:
echo [INFO]   - Application: http://localhost:3000
echo [INFO]   - MongoDB: mongodb://localhost:27017
echo.
echo [INFO] To view logs, run: dev.bat logs
echo [INFO] To stop the environment, run: dev.bat stop
exit /b 0

:stop_dev
echo [INFO] Stopping Stockly development environment...
docker-compose down
echo [SUCCESS] Development environment stopped!
exit /b 0

:restart_dev
echo [INFO] Restarting Stockly development environment...
docker-compose restart
echo [SUCCESS] Development environment restarted!
exit /b 0

:logs_dev
echo [INFO] Showing logs for Stockly development environment...
if "%~1"=="" (
    docker-compose logs -f
) else (
    docker-compose logs -f %~1
)
exit /b 0

:status
echo [INFO] Stockly Development Environment Status:
docker-compose ps
exit /b 0

:shell
echo [INFO] Entering app container shell...
docker-compose exec app sh
exit /b 0

:db_operations
set "operation=%~1"
if "%operation%"=="reset" (
    echo [WARNING] Resetting database... This will delete all data!
    set /p "confirm=Are you sure? (y/N): "
    if /i "!confirm!"=="y" (
        docker-compose exec app npx prisma db push --force-reset
        echo [SUCCESS] Database reset completed!
    ) else (
        echo [INFO] Database reset cancelled.
    )
) else if "%operation%"=="studio" (
    echo [INFO] Opening Prisma Studio...
    docker-compose exec app npx prisma studio
) else if "%operation%"=="generate" (
    echo [INFO] Generating Prisma client...
    docker-compose exec app npx prisma generate
    echo [SUCCESS] Prisma client generated!
) else (
    echo [ERROR] Unknown database operation: %operation%
    echo [INFO] Available operations: reset, studio, generate
)
exit /b 0

:cleanup
echo [INFO] Cleaning up Docker resources...
docker-compose down -v --remove-orphans
docker system prune -f
echo [SUCCESS] Cleanup completed!
exit /b 0

:check_docker
docker info >nul 2>&1
if errorlevel 1 (
    echo [ERROR] Docker is not running. Please start Docker and try again.
    exit /b 1
)
exit /b 0

:show_help
echo Stockly Inventory Management System - Development Helper (Windows)
echo.
echo Usage: dev.bat [COMMAND]
echo.
echo Commands:
echo   start       Start the development environment
echo   stop        Stop the development environment
echo   restart     Restart the development environment
echo   logs [svc]  Show logs (optionally for specific service)
echo   status      Show status of all services
echo   shell       Enter the app container shell
echo   db ^<op^>     Database operations (reset, studio, generate)
echo   cleanup     Clean up Docker resources
echo   help        Show this help message
echo.
echo Examples:
echo   dev.bat start
echo   dev.bat logs app
echo   dev.bat db reset
echo   dev.bat db studio
exit /b 0