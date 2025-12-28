@echo off

rem Formate la uSD en FAT16
rem /Y = pas de prompt (répond oui par défaut)
rem /Q = formatage rapide
format D: /Y /FS:FAT /Q /A:64K

xcopy *.wav D:\ /D /Y
xcopy *.4FN D:\ /D /Y
xcopy *.4XE D:\ /D /Y
xcopy *.Dat D:\ /D /Y
xcopy *.Gci D:\ /D /Y

echo ========================================
echo ============ COPIE TERMINEE ============
echo ========================================

rem Vérification du nombre de fichiers copiés sur la uSD
for /r "D:" %%i in (*.*) do set /a cpt+=1
echo.
echo Nombre total de fichiers copies = %cpt%
echo.

rem bip-bip-bip pour signaler la fin de la copie
echo 

pause