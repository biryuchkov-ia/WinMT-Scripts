@echo off
setlocal enabledelayedexpansion

:: Определяем путь к файлу лога в папке со скриптом
set "LOG_FILE=%~dp0net_diag_report.txt"

echo === ЗАПУСК ДИАГНОСТИКИ: %date% %time% === > "%LOG_FILE%"
echo Подготовка отчета... Пожалуйста, подождите.
echo.

echo [1/5] Очистка DNS...
ipconfig /flushdns >> "%LOG_FILE%" 2>&1
echo DNS очищен.

echo [2/5] Сбор конфигурации ipconfig...
echo. >> "%LOG_FILE%"
echo --- ПОЛНАЯ КОНФИГУРАЦИЯ --- >> "%LOG_FILE%"
ipconfig /all >> "%LOG_FILE%" 2>&1

echo [3/5] Проверка пинга (8.8.8.8)...
ping -n 4 8.8.8.8 >> "%LOG_FILE%" 2>&1
if %errorlevel%==0 (echo ИНТЕРНЕТ: OK) else (echo ИНТЕРНЕТ: ОШИБКА)

echo [4/5] Проверка DNS (google.com)...
nslookup google.com >> "%LOG_FILE%" 2>&1
if %errorlevel%==0 (echo DNS: OK) else (echo DNS: ОШИБКА)

echo [5/5] Трассировка маршрута...
echo. >> "%LOG_FILE%"
echo --- ТРАССИРОВКА --- >> "%LOG_FILE%"
tracert -d -h 10 8.8.8.8 >> "%LOG_FILE%" 2>&1

echo.
echo Готово! Лог сохранен рядом со скриптом.
echo Нажмите любую клавишу, чтобы открыть отчет...
pause >nul

:: Открываем созданный лог в Блокноте
start notepad "%LOG_FILE%"
