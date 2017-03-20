::Fichier bat par Endia, ce programme (tout du moins fenètre intéractive) a été écrit et imaginé par moi même,
::Merci de ne pas retirer cette mention, si vous aimer mon travail, soutenez moi sur github : (arrive bientot)
::File batch by Endia, this program (or interactive window) as been writed by me,
::Pls do not remove this mention, if u like my work, support me on github : (comming soon)


@echo off
cls
color 07
:language
set /p choice=Language : (FR/EN) :
if /I "%choice%"=="FR" (goto :question)
if /I "%choice%"=="fr" (goto :question)
if /I "%choice%"=="EN" (goto :ask) 
if /I "%choice%"=="en" (goto :ask) 
:question
echo pour de l aide, taper 5
set /p choix=Que voulez vous faire ?(1,2,3,4) :
 
if /I "%choix%"=="1" (goto :A)
if /I "%choix%"=="2" (goto :B)
if /I "%choix%"=="3" (goto :C)
if /I "%choix%"=="4" (goto :D)
if /I "%choix%"=="5" (goto :E)
goto question
 
:A
echo.
echo Le server de license virtuel pour Teamspeak se lance !
start AccountingServerEmulator-Windows.exe
goto question
 
:B
echo.
echo  Le server ts se lance !
start ts3server_win32.exe
goto question
 
:C
echo.
echo Vous avez decider de quitter le programme !
pause
goto end

:D 
echo.
taskkill /f /im ts3server_win32.exe
taskkill /f /im AccountingServerEmulator-Windows.exe
echo Cette action va arreter le serveur de license et le serveur ts et fermer cette fenetre !
pause
goto end

:E
echo.
echo le choix 1 correspond au lancement du crack
echo le choix 2 correspond au lancement du server ts
echo le 3 a la fermeture de cette console interactive 
echo le 4 correspond a l'arret des serveurs et de la fenetre !
goto question

:end
echo.
echo Fin du programme (source http://redsymbiose.fr/ressources/ts_crack_with_laucher-win.rar)
