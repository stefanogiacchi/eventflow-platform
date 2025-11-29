@echo off
REM ======================================================
REM   Initialize folder structure for EventFlow Platform
REM   This version includes .gitkeep files to ensure Git tracks all directories.
REM ======================================================

echo [BACKEND] Creating backend structure...

REM Create the root 'backend' directory
mkdir backend

REM backend/src and subdirectories
mkdir backend\src
echo. > backend\src\.gitkeep
mkdir backend\src\EventFlow.API
echo. > backend\src\EventFlow.API\.gitkeep
mkdir backend\src\EventFlow.Application
echo. > backend\src\EventFlow.Application\.gitkeep
mkdir backend\src\EventFlow.Domain
echo. > backend\src\EventFlow.Domain\.gitkeep
mkdir backend\src\EventFlow.Infrastructure
echo. > backend\src\EventFlow.Infrastructure\.gitkeep
mkdir backend\src\EventFlow.Shared
echo. > backend\src\EventFlow.Shared\.gitkeep

REM backend/tests and subdirectories
mkdir backend\tests
echo. > backend\tests\.gitkeep
mkdir backend\tests\EventFlow.UnitTests
echo. > backend\tests\EventFlow.UnitTests\.gitkeep
mkdir backend\tests\EventFlow.IntegrationTests
echo. > backend\tests\EventFlow.IntegrationTests\.gitkeep

REM backend/docker
mkdir backend\docker
echo. > backend\docker\.gitkeep

echo [FRONTEND] Creating frontend structure...

REM Create the root 'frontend' directory
mkdir frontend

REM frontend/eventflow-react and subdirectories
mkdir frontend\eventflow-react
mkdir frontend\eventflow-react\src
echo. > frontend\eventflow-react\src\.gitkeep
mkdir frontend\eventflow-react\public
echo. > frontend\eventflow-react\public\.gitkeep

REM Creating the README.md file for the frontend
IF NOT EXIST frontend\eventflow-react\README.md (
    echo # EventFlow React Frontend>frontend\eventflow-react\README.md
)

echo [DOCS] Creating docs structure...

REM Create the root 'docs' directory and subdirectories
mkdir docs
echo. > docs\.gitkeep
mkdir docs\architecture
echo. > docs\architecture\.gitkeep
mkdir docs\api
echo. > docs\api\.gitkeep
mkdir docs\flows
echo. > docs\flows\.gitkeep

echo [GITHUB] Creating GitHub workflows folder...

REM Create .github and subdirectories
mkdir .github
mkdir .github\workflows
echo. > .github\workflows\.gitkeep

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
echo Done. Folder structure for EventFlow Platform has been created and populated with .gitkeep files.
echo.
pause