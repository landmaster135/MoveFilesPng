@REM Initializes variables
set destFolder=ScreenshotOfSatisfactory
set destFolderFull="%userprofile%\Downloads\%destFolder%"
set srcFolder=%userprofile%\Videos\Captures
echo %destFolder%
echo %destFolderFull%
echo %srcFolder%
:: Renames Files
@REM for %A in (%srcFolder%\*) do (set Str1=%A&call powershell -command "$lengthOfYear = 4; $lengthOfMonth = 2; $lengthOfDay = 2; $lengthOfHour = 2; $lengthOfMinute = 2; $lengthOfSecond = 2; $startOfYear = 16; $startOfMonth = $startOfYear + 1;  $startOfDay = $startOfMonth + 1; $startOfHour = $startOfDay + 1; $startOfMinute = $startOfHour + 1; $startOfSecond = $startOfMinute + 1; $srcFolder = '%srcFolder%'; $srcFile = '%A%'; Write-Host $srcFile.Length; $newFileName = $srcFile.Substring($srcFolder.Length + $startOfYear, $lengthOfYear); $newFileName += $srcFile.Substring($srcFolder.Length + $startOfMonth, $lengthOfMonth); $srcFile.Substring($srcFolder.Length + $startOfDay, $lengthOfDay); $srcFile.Substring($srcFolder.Length + $startOfHour, $lengthOfHour); $srcFile.Substring($srcFolder.Length + $startOfminute, $lengthOfminute); $srcFile.Substring($srcFolder.Length + $startOfSecond, $lengthOfSecond); Write-Host $newfileName;")
for %A in (%srcFolder%\*) do (set Str1=%A&call powershell -command "$prefixOfFiles = 'Satisfactory   '; $newPrefixOfFiles = 'Screenshot'; $delim = '_'; $newDelim = ''; $srcFolder = '%srcFolder%'; $srcFile = '%A'; $newFile = $srcFile.Replace($prefixOfFiles, $newPrefixOfFiles); $newFile = $newFile.Replace($delim, $newDelim); $validLengthOfHhmmss = 6; If($newFile.IndexOf('.', $newFile.IndexOf(' ')) - $newFile.IndexOf(' ') -ne $validLengthOfHhmmss + 1){$newFile = $newFile.Replace(' ', ' 0'); }; $newFile = $newFile.Replace(' ', '-'); $newFile = $newFile.Replace('.', '000000.');Write-Host 'old name: ' $srcFile; Write-Host 'new name: ' $newFile; Rename-Item $srcFile $newFile;")
@REM Moves files
mkdir %destFolderFull% > NUL 2>&1
move /-Y %srcFolder%\* %destFolderFull%
@REM Releases variables
set destFolder=
set destFolderFull=
set srcFolder=
%destFolder%
%destFolderFull%
%srcfolder%
