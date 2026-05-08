# Windows Maintenance Scripts

Этот репозиторий (`WinMT-Scripts`) представляет собой коллекцию `.cmd` скриптов, предназначенных для автоматизации рутинных задач по обслуживанию, диагностике и оптимизации операционных систем Windows.

---

## 🇷🇺 Русская версия

### О проекте

**Что это?**
Это набор готовых к использованию инструментов командной строки, которые решают распространенные проблемы и выполняют трудоемкие задачи по администрированию Windows в один клик.

**Для кого этот проект?**
*   **Специалисты технической поддержки (Helpdesk):** Для мгновенного решения типичных проблем пользователей (проблемы с обновлениями, нехватка места на диске, диагностика сети).
*   **Системные администраторы:** Для быстрой настройки новых рабочих мест, обслуживания парка компьютеров и выполнения стандартных процедур.
*   **Продвинутые пользователи:** Для поддержания собственной системы в идеальном состоянии без необходимости запоминать и вводить длинные команды.

**В чем реальная польза? (Экономия времени и сил)**
Автоматизация - это ключ к эффективности. Вместо того чтобы вручную выполнять последовательность из 5-10 шагов, вы просто запускаете один скрипт.

*   **Экономия времени:** Задача, которая вручную занимала 10-15 минут (например, полная очистка системы или резервное копирование драйверов), теперь выполняется за секунды. В масштабах месяца это экономит часы рабочего времени.
*   **Снижение ошибок:** Скрипт всегда выполняет команды в правильной последовательности и с нужными параметрами. Это исключает "человеческий фактор" - опечатки или пропущенные шаги.
*   **Повышение производительности:** Быстрая диагностика (`WinNT-DG.cmd`) и решение проблем с производительностью (`WinUltraPF.cmd`, `WinPT-Off.cmd`) позволяют быстрее восстанавливать работоспособность системы и возвращать пользователей к работе.
*   **Доступность:** Сложные для запоминания команды становятся доступны даже начинающим специалистам, что ускоряет их обучение и повышает эффективность всей команды.

### 📜 Содержание скриптов

#### ⚙️ Обслуживание и оптимизация системы

| Имя файла | Описание |
| :--- | :--- |
| **WinLightSize.cmd** | Уменьшает занимаемое место ОС путем отключения гибернации, сжатия системы и удаления зарезервированного хранилища. |
| **WinSxS-CL.cmd** | Выполняет глубокую очистку папки `WinSxS`. **Внимание:** После выполнения становится невозможным удаление старых обновлений. |
| **WinUp-CL.cmd** | Очищает кэш Центра обновления Windows. Помогает решить проблемы с загрузкой и установкой обновлений. |
| **WinSortFL.cmd** | **Автоматически сортирует файлы в текущей папке,** распределяя их по подкаталогам (`Документы`, `Изображения`) в зависимости от расширения. |

#### 🚀 Производительность и настройка

| Имя файла | Описание |
| :--- | :--- |
| **WinUltraPF.cmd** | Активирует схему электропитания "Максимальная производительность" для повышения производительности на стационарных ПК. |
| **WinPT-Off.cmd** | Отключает механизм `Power Throttling`, который может замедлять фоновые приложения для экономии энергии. |
| **WinNT-Off.cmd** | Отключает ограничение пропускной способности сети (Network Throttling Index), что помогает снизить задержки в играх. |
| **WinST-RS.cmd** | Оптимизирует отзывчивость системы (`SystemResponsiveness`), отдавая приоритет активным приложениям и играм. |
| **WinWP-QL.cmd** | Улучшает качество отображения обоев рабочего стола, убирая артефакты сжатия JPEG. |

#### 🛡️ Диагностика и восстановление

| Имя файла | Описание |
| :--- | :--- |
| **WinDR-BU.cmd** | Создает резервную копию всех сторонних драйверов системы в папку `C:\Drivers`. |
| **WinDR-RS.cmd** | Восстанавливает драйверы из резервной копии, созданной `WinDR-BU.cmd`. |
| **WinHealthFix.cmd**| Последовательно запускает `sfc /scannow` и `dism /RestoreHealth` для комплексного восстановления системных файлов. |
| **WinNT-DG.cmd** | Проводит диагностику сети (ping, tracert, ipconfig, nslookup) и сохраняет отчет в лог-файл на рабочем столе. |
| **WinSysInfo.cmd** | Собирает и выводит на экран подробную информацию о системе (аналог `msinfo32`) для быстрой диагностики аппаратного и программного обеспечения. |

### 💡 Как использовать

1.  Скачайте нужный `.cmd` файл.
2.  Нажмите на него правой кнопкой мыши.
3.  Выберите **"Запуск от имени администратора"**.

### Лицензия / Отказ от ответственности

Этот проект распространяется под лицензией **MIT** — подробности см. в файле [LICENSE](LICENSE).

### ⚠️ ВАЖНО:

* **Использование на свой страх и риск:** Данные скрипты и инструкция предоставляются «как есть» (as is). Автор не несет ответственности за любые сбои в работе вашей системы, потерю данных или повреждение оборудования.
* **Внешние зависимости:** При установке библиотек Вы используете стороннее ПО, за безопасность которого автор ответственности не несет.
* **Проверка кода:** Настоятельно рекомендуется изучить код перед запуском и протестировать его в безопасной среде, а перед применением выполнить создание точки восстановления системы.

---

**Авторские права © 2026 [Иван Бирючков / https://github.com/biryuchkov-ia]**

---

## 🇬🇧 English Version

# Windows Maintenance Scripts

This repository (`WinMT-Scripts`) is a collection of `.cmd` scripts designed for automating routine maintenance, diagnostics, and optimization tasks on Windows operating systems.

### About This Project

**What is this?**
This is a collection of ready-to-use command-line tools that solve common issues and perform time-consuming Windows administration tasks in a single click.

**Who is this for?**
*   **Helpdesk Specialists:** To instantly resolve typical user problems (update issues, low disk space, network diagnostics).
*   **System Administrators:** For quickly setting up new workstations, maintaining a fleet of computers, and executing standard procedures.
*   **Power Users:** To keep their own systems in perfect condition without needing to remember and type long commands.

**What's the real benefit? (Saving Time and Effort)**
Automation is the key to efficiency. Instead of manually performing a 5-10 step sequence, you just run one script.

*   **Time Savings:** A task that used to take 10-15 minutes manually (e.g., a full system cleanup or driver backup) is now done in seconds. Over a month, this saves hours of work.
*   **Error Reduction:** A script always executes commands in the correct sequence and with the right parameters. This eliminates "human error" like typos or missed steps.
*   **Increased Productivity:** Quick diagnostics (`WinNT-DG.cmd`) and performance fixes (`WinUltraPF.cmd`, `WinPT-Off.cmd`) allow for faster system recovery, getting users back to work sooner.
*   **Accessibility:** Complex commands become accessible even to junior specialists, which speeds up their training and boosts the entire team's effectiveness.

### 📜 Script Contents

#### ⚙️ System Maintenance and Optimization

| Filename | Description |
| :--- | :--- |
| **WinLightSize.cmd** | Reduces OS footprint by disabling hibernation, compressing the OS, and removing reserved storage. |
| **WinSxS-CL.cmd** | Performs a deep clean of the `WinSxS` folder. **Warning:** Makes it impossible to uninstall old updates after running. |
| **WinUp-CL.cmd** | Clears the Windows Update cache. Helps to resolve issues with downloading and installing updates. |
| **WinSortFL.cmd** | **Automatically sorts files in the current folder,** distributing them into subdirectories (`Documents`, `Images`, etc.) based on their extension. |

#### 🚀 Performance and Tweaks

| Filename | Description |
| :--- | :--- |
| **WinUltraPF.cmd** | Activates the "Ultimate Performance" power scheme to boost performance on desktop PCs. |
| **WinPT-Off.cmd** | Disables Power Throttling, a mechanism that can slow down background applications to save energy. |
| **WinNT-Off.cmd** | Disables the Network Throttling Index to improve network stability and reduce latency in online games. |
| **WinST-RS.cmd** | Optimizes system responsiveness (`SystemResponsiveness`) by giving higher priority to active applications. |
| **WinWP-QL.cmd** | Improves the quality of desktop wallpapers by removing JPEG compression artifacts. |

#### 🛡️ Diagnostics and Recovery

| Filename | Description |
| :--- | :--- |
| **WinDR-BU.cmd** | Creates a backup of all third-party system drivers into the `C:\Drivers` folder. |
| **WinDR-RS.cmd** | Restores drivers from the backup created by `WinDR-BU.cmd`. |
| **WinHealthFix.cmd**| Sequentially runs `sfc /scannow` and `dism /RestoreHealth` for a comprehensive system file repair. |
| **WinNT-DG.cmd** | Performs network diagnostics (ping, tracert, ipconfig, nslookup) and saves a report to a log file on the desktop. |
| **WinSysInfo.cmd** | Collects and displays detailed system information on the screen (similar to `msinfo32`) for quick hardware and software diagnostics. |

### 💡 How to Use

1.  Download the desired `.cmd` file.
2.  Right-click on it.
3.  Select **"Run as administrator"**.

### License / Disclaimer

This project is licensed under the **MIT License** — see the [LICENSE](LICENSE) file for details.

### ⚠️ IMPORTANT:

* **Use at your own risk:** These scripts and instruction are provided "as is". The author is not liable for any system failures, data loss, or hardware damage.
* **External dependencies:** By installing libraries, you are using third-party software for which the author assumes no responsibility.
* **Code review:** It is highly recommended to study the code before execution and test it in a safe environment. It is also advised to create a system restore point before use.

---

**Copyright © 2026 [Ivan Biryuchkov / https://github.com/biryuchkov-ia]**

---