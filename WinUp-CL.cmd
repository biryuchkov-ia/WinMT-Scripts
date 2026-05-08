net stop wuauserv
sc config wuauserv start=disabled
net stop usosvc
sc config usosvc start=disabled
del /f /s /q /a %systemroot%\\SoftwareDistribution\\DataStore\\Logs\\edb.log
del /f /s /q /a %ProgramData%\\USOPrivate\\UpdateStore\\*
sc config wuauserv start=auto
net start wuauserv
sc config usosvc start=delayed-auto
net start usosvc