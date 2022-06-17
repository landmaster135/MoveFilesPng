:: Dependency is pngquant.

:: Initializes variables
set dlFolder=%userprofile%\Downloads
set dlFileName=pngquant-windows
set exeFolder="%dlFolder%\%dlFileName%\pngquant"
:: Initializes variables
set destFolder="%userprofile%\Downloads\ScreenshotOfSatisfactory"
set srcFolder="%userprofile%\Documents\My Games\FactoryGame\Screenshots"
echo %destFolder%
echo %srcFolder%
:: Downloads file
cd %dlFolder%
bitsadmin /transfer download https://pngquant.org/pngquant-windows.zip %dlFolder%\%dlFileName%.zip
call powershell -command "Expand-Archive %dlFolder%\%dlFileName%.zip"
:: Compresses files
cd %exeFolder%
pngquant %srcFolder%\*
:: Moves Compressed files
cd %srcFolder%
set compressedFolder=compressed
mkdir %compressedFolder% > NUL 2>&1
set compressedMark=-fs8
move %srcFolder%\*%compressedMark%* %compressedFolder%
:: Moves files
move /-Y %srcFolder%\* %destFolder%
:: Releases variables
cd %exeFolder%
set dlFolder=
set dlFileName=
set exeFolder=
set destFolder=
set srcFolder=
set compressedFolder=
set compressedMark=
%dlFolder%
%dlFileName%
%exeFolder%
%destFolder%
%srcFolder%
%compressedFolder%
%compressedMark%
