@echo off
rem =================================================================
rem WinSysInfo.cmd
rem Описание: Отображает подробную информацию о системе
rem          в консольном виде.
rem =================================================================

title Системная информация

echo.
echo ========================================================
echo            ИНФОРМАЦИЯ О СИСТЕМЕ (WinSysInfo.cmd)
echo ========================================================
echo.

echo --- 1. Система и Материнская плата ---
echo Имя компьютера:       %COMPUTERNAME%
for /f "tokens=2 delims==" %%a in ('wmic os get caption /value') do echo ОС:                 %%a
for /f "tokens=2 delims==" %%a in ('wmic os get osarchitecture /value') do echo Архитектура ОС:      %%a
for /f "tokens=2 delims==" %%a in ('wmic computersystem get manufacturer /value') do echo Производитель ПК:     %%a
for /f "tokens=2 delims==" %%a in ('wmic computersystem get model /value') do echo Модель ПК:            %%a
for /f "tokens=2 delims==" %%a in ('wmic baseboard get product /value') do echo Модель мат. платы:    %%a
for /f "tokens=2 delims==" %%a in ('wmic bios get serialnumber /value') do echo Серийный номер:       %%a
echo.

echo --- 2. Процессор (CPU) ---
for /f "tokens=2 delims==" %%a in ('wmic cpu get name /value') do echo Модель CPU:           %%a
for /f "tokens=2 delims==" %%a in ('wmic cpu get numberofcores /value') do echo Физических ядер:      %%a
for /f "tokens=2 delims==" %%a in ('wmic cpu get numberoflogicalprocessors /value') do echo Логических процессоров: %%a
echo.

echo --- 3. Оперативная память (RAM) ---
for /f "tokens=2 delims==" %%a in ('wmic OS get TotalVisibleMemorySize /value') do set /a "mem=%%a/1024"
set /a "mem_gb=%mem%/1024"
echo Общий объём RAM:      %mem_gb% GB (приблизительно)
for /f "tokens=2 delims==" %%a in ('wmic memorychip get speed /value') do echo Частота модулей (MHz): %%a
echo.

echo --- 4. Дисковые накопители (HDD/SSD) ---
echo Модель диска:
wmic diskdrive get model,size
echo.

echo --- 5. Логические диски ---
echo Разделы:
wmic logicaldisk get caption,volumename,drivetype,freespace,size
echo (DriveType: 3 = Локальный диск)
echo (Размеры указаны в байтах)
echo.

echo --- 6. Видеокарта ---
for /f "tokens=2 delims==" %%a in ('wmic path win32_videocontroller get name /value 2^>nul') do echo Видеокарта:         %%a
for /f "tokens=2 delims==" %%a in ('wmic path win32_videocontroller get DriverVersion /value 2^>nul') do echo Версия драйвера:      %%a
for /f "tokens=2 delims==" %%a in ('wmic path win32_videocontroller get VideoModeDescription /value 2^>nul') do echo Текущее разрешение: %%a
echo.

echo --- 7. Сетевые адаптеры ---
echo Список активных сетевых подключений:
wmic nic where "NetConnectionStatus=2" get Name,MACAddress
echo.

echo ========================================================
echo              Сбор информации завершён
echo ========================================================
echo.
pause