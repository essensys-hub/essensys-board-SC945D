@echo off

rem Formate la uSD en FAT16
rem /Y = pas de prompt (répond oui par défaut)
rem /Q = formatage rapide
format F: /Y /FS:FAT /Q /A:64K

xcopy *.wav F:\ /D /Y
xcopy *.4FN F:\ /D /Y
xcopy *.4XE F:\ /D /Y
xcopy *.Dat F:\ /D /Y
xcopy *.Gci F:\ /D /Y

echo ========================================
echo ============ COPIE TERMINEE ============
echo ========================================
rem bip-bip-bip pour signaler la fin de la copie
echo 
pause