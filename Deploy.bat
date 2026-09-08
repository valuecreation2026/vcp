@echo off
:: 한글 깨짐 방지
chcp 65001 >nul
title 🚀 VCP 웹사이트 원클릭 배포 터미널

:: 1. 현재 배치 파일이 있는 폴더로 이동
cd /d "%~dp0"

echo ====================================================================
echo    🚀 VCP 웹사이트 원클릭 배포 (Cloudflare Pages)
echo ====================================================================
echo.
echo  [1/2] 원격 저장소의 변경 사항을 확인하고 병합합니다...
echo.

:: 2. 원격 저장소 변경 사항 병합
git pull --no-edit

echo.
echo ====================================================================
echo  [2/2] 준비 완료! GitHub로 푸시하여 Cloudflare 자동 배포를 시작합니다.
echo  [안내] 충돌이 없다면 그대로 [Enter] 키만 누르세요!
echo ====================================================================
echo.

:: 3. Git 커밋 & 푸시 자동 타이핑 (푸시 즉시 Cloudflare Pages가 자동 빌드/배포)
powershell -NoProfile -Command "$wshell = New-Object -ComObject WScript.Shell; sleep -m 500; $wshell.SendKeys('git add . && git commit -m \"Update\" && git push')"

:: 4. 터미널 대기
cmd /k