:Start
@echo off

rem Проверяем существование и создаем необходимые каталоги

if not exist "Archives" md "Archives"

if not exist "Music" md "Music"

if not exist "Video" md "Video"

if not exist "Photos" md "Photos"

if not exist "Images" md "Images"

if not exist "Docs" md "Docs"

if not exist "Apps" md "Apps"


rem Архивы

for %%f in (*.zip,*.gz,*.tgz,*.rar,*.7z) do move "%%f" "Archives"


rem Видео

for %%f in (*.avi,*.mov,*.mp4,*.mkv,*.3gp) do move "%%f" "Video"


rem Музыка

for %%f in (*.mp3,*.wav,*.flac) do move "%%f" "Music"


rem Фото

for %%f in (*.jpg,*.raw) do move "%%f" "Photos"


rem Изображения

for %%f in (*.png,*.jpeg,*.bmp,*.gif,*.tiff) do move "%%f" "Images"


rem Документы

for %%f in (*.pdf,*.txt,*.doc,*.docx,*.xls) do move "%%f" "Docs"


rem Программы и батники

for %%f in (*.exe,*.bat) do move "%%f" "Apps"