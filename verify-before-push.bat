@echo off
REM Verification script before pushing to GitHub

echo ==========================================
echo GitHub Push Verification
echo ==========================================
echo.

REM Check if .env is ignored
echo Checking .env is ignored...
git check-ignore .env >nul 2>&1
if %errorlevel% equ 0 (
    echo   [OK] .env is properly ignored
) else (
    echo   [ERROR] .env is NOT ignored!
    exit /b 1
)

REM Check if .env.example exists
echo Checking .env.example exists...
if exist .env.example (
    echo   [OK] .env.example exists
) else (
    echo   [ERROR] .env.example not found!
    exit /b 1
)

REM Check documentation files
echo Checking documentation...
if exist README.md (
    echo   [OK] README.md exists
) else (
    echo   [ERROR] README.md not found!
    exit /b 1
)

if exist LICENSE (
    echo   [OK] LICENSE exists
) else (
    echo   [ERROR] LICENSE not found!
    exit /b 1
)

if exist .gitignore (
    echo   [OK] .gitignore exists
) else (
    echo   [ERROR] .gitignore not found!
    exit /b 1
)

echo.
echo ==========================================
echo All checks passed!
echo ==========================================
echo.
echo Ready to push to GitHub:
echo   git add .
echo   git commit -m "Initial commit"
echo   git push origin main
echo.
