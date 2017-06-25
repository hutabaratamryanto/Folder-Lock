cls 
@ECHO OFF 
title Folder Private 
if EXIST "HTG Locker" goto UNLOCK 
if NOT EXIST Private goto MDLOCKER 
:CONFIRM 
echo Yakin do ho naeng mangutci Private folder i? (Y/N) 
set/p "cho=>" 
if %cho%==Y goto LOCK 
if %cho%==y goto LOCK 
if %cho%==n goto END 
if %cho%==N goto END 
echo Salah mamitcit do ho ces! Fokus jo ces!. 
goto CONFIRM 
:LOCK 
ren Private "HTG Locker" 
attrib +h +s "HTG Locker" 
echo Folder tarkutci! 
goto End 
:UNLOCK 
echo Pamasuk passport na ces! 
set/p "pass=>" 
if NOT %pass%== r4hasia goto FAIL 
attrib -h -s "HTG Locker" 
ren "HTG Locker" Private 
echo Oke, nga tarbukka be! 
goto End 
:FAIL 
echo Salah passport do ho ces!
goto end 
:MDLOCKER 
md Private 
echo Private created successfully 
goto End 
:End
