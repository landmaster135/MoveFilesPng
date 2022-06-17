:: Initializes variables
set destFolder="%userprofile%\Downloads\ScreenshotOfSatisfactory"
set srcFolder="%userprofile%\Documents\My Games\FactoryGame\Screenshots"
echo %destFolder%
echo %srcFolder%
:: Moves files
move /-Y %srcFolder%\* %destFolder%
:: Releases variables
set destFolder=
set srcFolder=
%destFolder
