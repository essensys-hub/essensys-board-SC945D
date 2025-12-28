@echo off

rem Formate la uSD en FAT16
rem /Y = pas de prompt (répond oui par défaut)
rem /Q = formatage rapide
format E: /Y /FS:FAT /Q /A:64K

xcopy *.wav E:\ /D /Y
xcopy *.4FN E:\ /D /Y
xcopy *.4XE E:\ /D /Y
xcopy *.Dat E:\ /D /Y
xcopy *.Gci E:\ /D /Y

echo ========================================
echo ============ COPIE TERMINEE ============
echo ========================================
rem bip-bip-bip pour signaler la fin de la copie
echo 
pause