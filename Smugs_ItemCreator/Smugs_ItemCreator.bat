@echo off
title Smugs Item Creator OX
echo "Thanks For Downloading Smugs Item Creator"
echo "This Tool was made for Ox_Inventory \ ESX"
echo "SmugsBackup#2252   |   SG DEVELOPMENT"
echo https://forum.cfx.re/u/okcrp/






:GetItem
set /p item_name= "Enter the item name : " 
set /p item_label= "Enter the item label : "  
set /p item_descript= "Enter the item description : " 
set /p item_weight= "Enter the item weight : " 
set /p item_stack= "Can the item be stacked? (True or False) : " 
set /p item_close= "Close upon using? (True or False) : " 



(echo.>items.txt)


(echo ['%item_name%'] = {) >> items.txt
(echo label = '%item_label%',) >> items.txt
(echo weight = '%item_weight%',) >> items.txt
(echo stack = '%item_stack%',) >> items.txt
(echo close = '%item_close%',) >> items.txt
(echo description = '%item_descript%',) >> items.txt
(echo },) >> items.txt
goto :CopyItem


:CopyItem
clip < "items.txt"
goto :Init




:Init
set /p ABC_DEF=Create a New Item or Exit ? (1/2):
if %ABC_DEF%==1 goto GetItem
if %ABC_DEF%==2 goto Exit
pause



:Exit
echo Bye
pause
