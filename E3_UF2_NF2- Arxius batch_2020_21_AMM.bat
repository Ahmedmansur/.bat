@echo off

:menu 
echo. Menu
echo  1 = Crear l'estructura      
echo  2 = Visualitza l'estructura 
echo  3 = Esborra l'estructura    
echo  4 = Copia de seguretat      
echo  5 = Sortir                  


set /p opció= "Que vols,(1),(2),(3), (4) o (5)?"
if %opció%==1 goto Crear
if %opció%==2 goto Visualitza
if %opció%==3 goto Esborra
if %opció%==4 goto Copia de seguretat
if %opció%==5 goto Sortir


:crear
cd %Homepath%/Desktop
echo Crear l'estructura M2-Sistemes_operatius
md M2-Sistemes_operatius
cd M2-Sistemes_operatius
md UF1-Introduccio_als_SMO UF2-Sistemes_operatius_propietaris UF3-Sistemes_operatius_lliures
cd UF2-Sistemes_operatius_propietaris
md Instal_lacio_Windows_10 Tasques_configuracio_Windows_10 Tasques_administracio_Windows_10
cd ..
echo.
pause
echo.
goto menu

:Visualitza
echo Visualitza l'estructura
cd %Homepath%/Desktop
tree M2-Sistemes_operatius
echo.
pause
echo.
goto menu

:Esborra
echo "esborrar Sistemes_Operatius"
cd %Homepath%/Desktop
rd /s /q M2-Sistemes_operatius 
echo. 
goto menu

:Copia de seguretat
echo "crear backup carpeta"
cd %Homepath%/Desktop 
md M2-SMO-Backup-%date:~10,4%%date:~7,2%%date:~4,2%
robocopy %Homepath%/Desktop/M2-Sistemes_operatius %Homepath%/Desktop/M2-SMO-Backup-%date:~10,4%%date:~7,2%%date:~4,2% /E >>log.txt
echo.
pause
echo.
goto menu

:sortir
echo fin del programa
pause
exit


