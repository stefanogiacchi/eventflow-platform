@echo off
REM ======================================================
REM   Initialize folder structure for EventFlow Platform
REM   Run this from the ROOT of the repository:
REM   D:\src\eventflow-platform> init-structure-eventflow.bat
REM ======================================================

echo [BACKEND] Creating backend structure...

REM Create the root 'backend' directory
mkdir backend

REM backend/src and subdirectories
mkdir backend\src
mkdir backend\src\EventFlow.API
mkdir backend\src\EventFlow.Application
mkdir backend\src\EventFlow.Domain
mkdir backend\src\EventFlow.Infrastructure
mkdir backend\src\EventFlow.Shared

REM backend/tests and subdirectories
mkdir backend\tests
mkdir backend\tests\EventFlow.UnitTests
mkdir backend\tests\EventFlow.IntegrationTests

REM backend/docker
mkdir backend\docker

echo [FRONTEND] Creating frontend structure...

REM Create the root 'frontend' directory
mkdir frontend

REM frontend/eventflow-react and subdirectories
mkdir frontend\eventflow-react
mkdir frontend\eventflow-react\src
mkdir frontend\eventflow-react\public

REM Creating the README.md file for the frontend
IF NOT EXIST frontend\eventflow-react\README.md (
    echo # EventFlow React Frontend>frontend\eventflow-react\README.md
)

echo [DOCS] Creating docs structure...

REM Create the root 'docs' directory and subdirectories
mkdir docs
mkdir docs\architecture
mkdir docs\api
mkdir docs\flows

echo [GITHUB] Creating GitHub workflows folder...

REM Create .github and subdirectories
mkdir .github
mkdir .github\workflows

echo [ROOT] Creating root files if missing...

REM Creating the docker-compose.yml file in the root
IF NOT EXIST docker-compose.yml (
    echo version: "3.8" > docker-compose.yml
    echo # Docker Compose for EventFlow Platform>>docker-compose.yml
)

REM Creating the README.md file in the root
IF NOT EXIST README.md (
    echo # EventFlow Platform>README.md
)

echo.
echo Done. Folder structure for EventFlow Platform has been created.
echo.
pause