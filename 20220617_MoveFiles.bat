:: Initializes variables
set destFolder=ScreenshotOfSatisfactory
set destFolderFull="%userprofile%\Downloads\%destFolder%"
set srcFolder="%userprofile%\Documents\My Games\FactoryGame\Screenshots"
echo %destFolder%
echo %srcFolder%
:: Moves files
mkdir %destFolderFull% > NUL 2>&1
move /-Y %srcFolder%\* %destFolder%
:: Releases variables
set destFolder=
set destFolderFull=
set srcFolder=
%destFolder%
%destFolderFull%
%srcfolder%
