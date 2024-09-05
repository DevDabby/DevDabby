@echo off

title X#

goto MainMenu

:MainMenu

set OpenBrowser = OpenBrowser();

set KillConsole = KillConsole();

set clearPage = clear;

set OpenExplorer = start("location: NULL; solution: explorer;");

set OpenDesktop = start("location: Desktop;");

:: Console

set /p RUN=/^>

if %RUN% == %OpenBrowser% (
  start Chrome
)

if %RUN% == %KillConsole% (
  exit
)

if %RUN% == showFiles(); (
  tree
)

if %RUN% == %clearPage% (
  cls
)

if %RUN% == %OpenExplorer% (
  explorer
)

if %RUN% == %OpenDesktop% (
  start Desktop
)
