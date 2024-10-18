@echo off
chcp 65001 > nul
setlocal enabledelayedexpansion

echo 하위 폴더의 .git 폴더를 삭제합니다.
echo 주의: 이 작업은 되돌릴 수 없습니다!
set /p confirm=계속하시겠습니까? (Y/N): 

if /i "%confirm%" neq "Y" (
    echo 작업이 취소되었습니다.
    exit /b
)

for /d /r %%i in (.git) do (
    if exist "%%i" (
        echo 삭제 중: %%i
        rmdir /s /q "%%i"
    )
)

echo 모든 .git 폴더가 삭제되었습니다.
pause