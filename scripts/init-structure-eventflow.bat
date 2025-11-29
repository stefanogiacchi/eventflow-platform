@echo off
REM ======================================================
REM  Initialize folder structure for EventFlow Platform
REM  Run this from the ROOT of the repository:
REM  D:\src\eventflow-platform> init-structure-eventflow.bat
REM ======================================================

echo [BACKEND] Creating backend structure...

REM backend root
mkdir backend

REM backend/src
mkdir backend\src
mkdir backend\src\EventFlow.API
mkdir backend\src\EventFlow.Application
mkdir backend\src\EventFlow.Domain
mkdir backend\src\EventFlow.Infrastructure
mkdir backend\src\EventFlow.Shared

REM backend/tests
mkdir backend\tests
mkdir backend\tests\EventFlow.UnitTests
mkdir backend\tests\EventFlow.IntegrationTests

REM backend/docker
mkdir backend\docker

echo [FRONTEND] Creating frontend structure...

mkdir frontend
mkdir frontend\eventflow-react
mkdir frontend\eventflow-react\src
mkdir frontend\eventflow-react\public

IF NOT EXIST frontend\eventflow-react\README.md (
    echo # EventFlow React frontend>frontend\eventflow-react\README.md
)

echo [DOCS] Creating docs structure...

mkdir docs
mkdir docs\architecture
mkdir docs\api
mkdir docs\flows

echo [GITHUB] Creating GitHub workflows folder...

mkdir .github
mkdir .github\workflows

echo [ROOT] Creating root files if missing...

IF NOT EXIST docker-compose.yml (
    echo # Docker Compose for EventFlow Platform>docker-compose.yml
)

IF NOT EXIST README.md (
    echo # EventFlow Platform>README.md
)

echo.
echo Done. Folder structure for EventFlow Platform has been created.
echo.
pause
