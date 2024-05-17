@echo off
:: DEV NOTE
:: Array will be discontinued.
title LAUNCH INTERFACE 
::Start Set
set notif=None
set pass=false
set MYuser=root
set MYpath=main
set MYid=0
set MYcredit=0
set MYemail=-
set MYrole=Default
set pathSet=Check
set guiSet=Check
set sysSet=Check
set conSet=Check
set logSet=Check
set v1Set=Check
set v2Set=Check
set v3Set=Check
set dcSet=Check
set A1=#
set A2=#
set A3=#
set A4=#
set A5=#
set A6=#
set A7=#
set A8=#
set A9=#
set B1=#
set B2=#
set B3=#
set B4=#
set B5=#
set B6=#
set B7=#
set B8=#
set B9=#
set C1=#
set C2=#
set C3=#
set C4=#
set C5=#
set C6=#
set C7=#
set C8=#
set C9=#
set D1=#
set D2=#
set D3=#
set D4=#
set D5=#
set D6=#
set D7=#
set D8=#
set D9=#
set E1=#
set E2=#
set E3=#
set E4=#
set E5=#
set E6=#
set E7=#
set E8=#
set E9=#
set F1=#
set F2=#
set F3=#
set F4=#
set F5=#
set F6=#
set F7=#
set F8=#
set F9=#
set G1=#
set G2=#
set G3=#
set G4=#
set G5=#
set G6=#
set G7=#
set G8=#
set G9=#
set H1=#
set H2=#
set H3=#
set H4=#
set H5=#
set H6=#
set H7=#
set H8=#
set H9=#
set I1=#
set I2=#
set I3=#
set I4=#
set I5=#
set I6=#
set I7=#
set I8=#
set I9=#
goto mainInterface
:mainInterface 
set MYpath=main
if "%lock.interface%" == "true" goto mainInterfaceLOCK 
echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo :: Interface                                              ::System Configuration  :: System Check
echo :  ---------                                              : Time   : %time%       : user   : %username%  
echo :                                                         : Date   : %date%       : eLvl   : %errorLevel%
echo :                                                         ``````````````````````  :...............:
echo :                                                         : Credits :%MYcredit%   ::   Set Check   
echo                                                           ``````````````````````` :pathSet : %pathSet%
echo                                                           ::Profile Status        :guiSet  : %guiSet%
echo                                                           : User   : %MYuser%     :sysSet  : %sysSet%
echo                                                           : Role   : %MYrole%    :conSet  : %conSet%
echo                                                           ``````````````````````` :logSet  : %logSet%
echo                                                                                   :v1Set   : %v1Set%
echo                                                                                   :v2Set   : %v2Set%
echo                                                                                   :v3Set   : %v3Set%
echo                                                                                   :dcSet   : %dcSet%
echo ABCDEFGHI                                                                      `````````````````
echo %A1%%B1%%C1%%D1%%E1%%F1%%G1%%H1%%I1%:1
echo %A2%%B2%%C2%%D2%%E2%%F2%%G2%%C2%%I2%:2
echo %A3%%B3%%C3%%D3%%E3%%F3%%G3%%C3%%I3%:3
echo %A4%%B4%%C4%%D4%%E4%%F4%%G4%%C4%%I4%:4
echo %A5%%B5%%C5%%D5%%E5%%F5%%G5%%C5%%I5%:5
echo %A6%%B6%%C6%%D6%%E6%%F6%%G6%%C6%%I6%:6
echo %A7%%B7%%C7%%D7%%E7%%F7%%G7%%C7%%I7%:7
echo %A8%%B8%%C8%%D8%%E8%%F8%%G8%%C8%%I8%:8
echo %A9%%B9%%C9%%D9%%E9%%F9%%G9%%C9%%I9%:9
type notif.txt
echo .
echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
goto mainInterfaceINPUT
:mainInterfaceLOCKDOWN
set MYpath=LOCKDOWN
set /p input=%MYuser%@%MYpath%:~$	
if %input%==exit goto exit
ECHO UNAVAILABLE - Auto-Response: Lockdown is active.
goto mainInterfaceLOCK
:mainInterfaceINPUT
if "%lock.interface%" == "true" goto mainInterfaceLOCK 
set /p input=%MYuser%@%MYpath%:~$ 

if %input%==display goto mainInterface

if %input%==signin goto signin
if %input%==logout goto logout

if %input%==settings goto settings
if %input%==devsettings goto developersettings

if %input%==notifcreate goto notifcreate
if %input%==create_notif goto notifcreate
if %input%==createnotif goto notifcreate

if %input%==lock.signin goto lock.signin
if %input%==lock.notif goto lock.notif
if %input%==lock.interface goto lock.interface

if %input%==bal goto EXcreditbalance
if %input%==credits goto EXcreditbalance

if %input% == server goto arraySort
if %input% == server.stash goto arraySort
if %input% == server.grid goto serverGrid
::if %input% == server.control goto serverControl

if %input%==help goto help
if %input%==help.login goto help.login
if %input%==help.login.1 goto help.login
if %input%==help.signin goto help.login
if %input%==help.signin.1 goto help.login
if %input%==help.notifcreate goto help.notifcreate
if %input%==help.notifcreate.1 goto help.notifcreate
if %input%==help.notif goto help.notifcreate
if %input%==help.notif.1 goto help.notifcreate


if %input%==test1 goto load1

if %input%==cls goto cls
if %input%==exit goto exit

goto mainInterfaceINPUT

:mainInterfaceLOCK
echo mainInterfaceLOCK Enabled.
set MYpath=LOCK
echo mainInterface Locked therfore mainInterfaceINPUT isn't possible. (10 delay)
ping localhost -n 10 >nul
if "%lock.interface%" == "false" goto mainInterface
goto mainInterfaceLOCK

:ping
ECHO Ping suscess!
pause
cls
goto mainInterface

:signin
ECHO ==========
ECHO ==========
ECHO  SIGN IN
ECHO ==========
set MYpath=profile
set pass=false
if "%lock.signin%" == "true" goto signinLOCK
ECHO User:
set /p MYuser=%MYuser%@%MYpath%:~$/User: 
ECHO Username [MYuser] set as '%MYuser%'.
ECHO Identification Pin (4 Digits):`xdc
color 0
set /p MYid=%MYuser%@%MYpath%:~$/Identification: 
ECHO Username [MY] set as '%MYid%'.
set MYrole=Member 
cls
if "%MYuser%" == "root" echo "/ / / ERROR: Default 'MYuser' term."
if "%MYuser%" == "reala" goto signinMYid
if "%MYuser%" == "guest" goto signinMYid2
goto mainInterface

:signinMYid
if not "%MYid%" == "9628" goto mainInterface
set pass=true
set MYrole=*Developer*
echo PERMISSIONS ACTIVE.
goto mainInterface

:signinMYid2
set pass=false
set MYrole=*Guest*
echo PERMISSIONS LIMITED.
goto mainInterface

:signinLOCK
echo signinLOCK Enabled.
set MYpath=LOCK
goto mainInterfaceINPUT


:logout
set pass=false
if "%lock.signin%" == "true" goto signinLOCK
echo Logged out of %MYuser%
set MYuser=root
set MYrole=Default
goto mainInterfaceINPUT

:notifcreate
set MYpath=notifEDIT
if "%MYuser%" == "root" echo "/ / / ERROR: Default 'MYuser' term."
if "%MYuser%" == "root" goto error

if not "%pass%"=="true" goto error


ECHO ==========
ECHO ==========
ECHO NOTIF EDIT
ECHO ==========
if "%lock.notif%" == "true" goto notifcreateLOCK
set /A notifnumberrandom=%RANDOM% * 1000 / 32768 + 1
ECHO NOTIFICATION NUMBER [%notifnumberrandom%] 
ECHO USER                [%MYuser%]
ECHO DATE/TIME           [%date% / %time%]
ECHO ____________________
ECHO For security reasons, computer information will
ECHO be stored on this notification but will not be
ECHO shown publicly. Below will be the information
ECHO collected.
ECHO USER                [%username%]
ECHO COMPUTER NAME       [%computername%]
ECHO ------------------------------------------------
ECHO By entering your notification number below, you
ECHO agree to all the information that will be gathered
ECHO and stored.
set /p input=%MYuser%@%MYpath%:~$/CONFIMATION: 
if %input%==%notifnumberrandom% goto notifcreate1
if %input%==t goto mainInterface

cls
ECHO INVALID NOTFICATION NUMBER.
goto notifcreate
:notifcreate1
ECHO ENTER TITLE:
set /p notiftitle=%MYuser%@%MYpath%:~$/Title: 
set /p notifcontext=%MYuser%@%MYpath%:~$/Content: 
echo ==========
echo   ALERT 
echo ==========
echo Are you sure you want to post notification? [Y\N]
set /p input=%MYuser%@%MYpath%:~$/CONFIMATION: 
if %input%==y goto notifcreate2
if %input%==Y goto notifcreate2
if %input%==n goto mainInterface
if %input%==N goto mainInterface
ECHO Invalid Choice (Required to restart).
goto notifcreate1
:notifcreate2
cd \%username%\Downloads\DevConsole-main\DevConsole-main\vSystem\Testing BETA\Launch
echo NOTIF %notifnumberrandom% :: [%notiftitle%] "%notifcontext%" > notif.txt
echo NOTIF %notifnumberrandom% :: [%MYuser%{%MYrole%}(%username%)] - [C: %computername%] - [(%notiftitle%)"%notifcontext%"] >> notifdata.txt
set notif=NOTIF %notifnumberrandom% :: [%notiftitle%] "%notifcontext%"
ECHO SUSSESFULLY CREATED!
goto mainInterface
:notifcreateLOCK
echo notifcreateLOCK Enabled.
set MYpath=LOCK
goto mainInterfaceINPUT

:settings
set MYpath=settings
ECHO ==========
ECHO ==========
ECHO  SETTINGS
ECHO ==========
echo TO CHANGE INFORMATION, CONTACT alpamartin2007@gmail.com
echo } PUBLIC INFORMATION {
ECHO USER                [%MYuser%]
ECHO DATE/TIME           [%date% / %time%]
ECHO ____________________
ECHO } PERSONAL INFORMATION {
ECHO PC USER             [%username%]
ECHO EMAIL               [%MYemail%]
ECHO COMPUTER NAME       [%computername%]
ECHO ------------------------------------------------
goto BGappcheck
:developersettings
set MYpath=devsettings
if not "%pass%"=="true" goto error
ECHO ==========
ECHO ==========
ECHO DEVSETTING
ECHO ==========
cd C:\Users\%username%\Downloads\DevConsole-main\DevConsole-main
tree
echo TO CHANGE INFORMATION, CONTACT alpamartin2007@gmail.com
echo } APPLICATION STATUS {
ECHO [%devconsolecheck%] DevConsole             
ECHO [%devconsolelitecheck%] DevConsole LITE           
ECHO [%devconsolesetupcheck%] DevConsole_setup
ECHO [%logcheck%] log
ECHO [%log1check%] log1
ECHO [%log2check%] log2
ECHO [%log3check%] log3
ECHO ____________________
ECHO } cmd DevConsole-main {
cd C:\Users\%username%\Downloads\DevConsole-main\DevConsole-main
dir
ECHO ------------------------------------------------
pause
goto mainInterfaceINPUT
::CORDINATE START

:arraySort
set MYpath=arraySORT
if "%MYuser%" == "root" echo "/ / / ERROR: Default 'MYuser' term."
if "%MYuser%" == "root" goto error

if not "%pass%"=="true" goto error

set arrayMARK=@
set arraySCAR=X
set arrayRESET=#
set /p arraySector=Server Sector: 
echo %arraySector% action?
set /p arrayAction=:: 
echo %arrayAction% in %arraySector%
if %arrayAction%==mark goto arraySort2
if %arrayAction%==scar goto arraySort3
if %arrayAction%==reset goto arraySort4
echo Invalid action.
goto mainInterface


:arraySort2
set arrayACTION=@
set %arraySector%=%arrayAction%
goto mainInterface
:arraySort3
set arrayACTION=X
set %arraySector%=%arrayAction%
goto mainInterface
:arraySort4
set arrayACTION=#
set %arraySector%=%arrayAction%
goto mainInterface


:serverGrid
set MYpath=serverGrid
if "%MYuser%" == "root" echo "/ / / ERROR: Default 'MYuser' term."
if "%MYuser%" == "root" goto error
if not "%pass%"=="true" goto error

echo SERVER GRID :: 
echo A  B  C  D  E  F  G  H  I  
echo %A1%  %B1%  %C1%  %D1%  %E1%  %F1%  %G1%  %H1%  %I1% :1
echo %A2%  %B2%  %C2%  %D2%  %E2%  %F2%  %G2%  %C2%  %I2% :2
echo %A3%  %B3%  %C3%  %D3%  %E3%  %F3%  %G3%  %C3%  %I3% :3
echo %A4%  %B4%  %C4%  %D4%  %E4%  %F4%  %G4%  %C4%  %I4% :4
echo %A5%  %B5%  %C5%  %D5%  %E5%  %F5%  %G5%  %C5%  %I5% :5
echo %A6%  %B6%  %C6%  %D6%  %E6%  %F6%  %G6%  %C6%  %I6% :6
echo %A7%  %B7%  %C7%  %D7%  %E7%  %F7%  %G7%  %C7%  %I7% :7
echo %A8%  %B8%  %C8%  %D8%  %E8%  %F8%  %G8%  %C8%  %I8% :8
echo %A9%  %B9%  %C9%  %D9%  %E9%  %F9%  %G9%  %C9%  %I9% :9
goto mainInterfaceINPUT

:serverControl
set MYpath=serverControl
if "%MYuser%" == "root" echo "/ / / ERROR: Default 'MYuser' term."
if "%MYuser%" == "root" goto error
if not "%pass%"=="true" goto error

echo ==============
echo SERVER CONTROL {%random%.%random%.%random%}
echo ===========================================
echo %MYuser% / %MYrole% / %MYpath% | %time%
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo SERVER GRID :: 
echo A  B  C  D  E  F  G  H  I  
echo %A1%  %B1%  %C1%  %D1%  %E1%  %F1%  %G1%  %H1%  %I1% :1
echo %A2%  %B2%  %C2%  %D2%  %E2%  %F2%  %G2%  %C2%  %I2% :2
echo %A3%  %B3%  %C3%  %D3%  %E3%  %F3%  %G3%  %C3%  %I3% :3
echo %A4%  %B4%  %C4%  %D4%  %E4%  %F4%  %G4%  %C4%  %I4% :4
echo %A5%  %B5%  %C5%  %D5%  %E5%  %F5%  %G5%  %C5%  %I5% :5
echo %A6%  %B6%  %C6%  %D6%  %E6%  %F6%  %G6%  %C6%  %I6% :6
echo %A7%  %B7%  %C7%  %D7%  %E7%  %F7%  %G7%  %C7%  %I7% :7
echo %A8%  %B8%  %C8%  %D8%  %E8%  %F8%  %G8%  %C8%  %I8% :8
echo %A9%  %B9%  %C9%  %D9%  %E9%  %F9%  %G9%  %C9%  %I9% :9
echo ===========================================

echo } APPLICATION STATUS {
ECHO [%devconsolecheck%] DevConsole             
ECHO [%devconsolelitecheck%] DevConsole LITE           
ECHO [%devconsolesetupcheck%] DevConsole_setup
ECHO [%logcheck%] log
ECHO [%log1check%] log1
ECHO [%log2check%] log2
ECHO [%log3check%] log3
echo ===========================================
goto mainInterfaceINPUT



:serverControlTEST
::This current section is just a test of what the potentialy new
::and updated code of the interface will look like. 
echo = = = = = = = = = =
echo SERVER CONTROL
echo = = = = = = =  = = =
echo echo %MYuser% / %MYuser% / %MYpath% | %time%
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo %A1%  %B1%  %C1%  %D1%  %E1%  %F1%  %G1%  %H1%  %I1% :1   |  
echo %A2%  %B2%  %C2%  %D2%  %E2%  %F2%  %G2%  %C2%  %I2% :2   |
echo %A3%  %B3%  %C3%  %D3%  %E3%  %F3%  %G3%  %C3%  %I3% :3   |
echo %A4%  %B4%  %C4%  %D4%  %E4%  %F4%  %G4%  %C4%  %I4% :4   |
echo %A5%  %B5%  %C5%  %D5%  %E5%  %F5%  %G5%  %C5%  %I5% :5   |
echo %A6%  %B6%  %C6%  %D6%  %E6%  %F6%  %G6%  %C6%  %I6% :6   |
echo %A7%  %B7%  %C7%  %D7%  %E7%  %F7%  %G7%  %C7%  %I7% :7   |
echo %A8%  %B8%  %C8%  %D8%  %E8%  %F8%  %G8%  %C8%  %I8% :8   |
echo %A9%  %B9%  %C9%  %D9%  %E9%  %F9%  %G9%  %C9%  %I9% :9   |
echo ===========================================

::===================================
::HELP SECTION START
::===================================

:help
cls
set MYpath=help
echo =============================
echo HELP / TROUBLESHOOT / SUPPORT
echo =============================
echo // 
echo Format: help.[phrase/number].[section [0]]
echo ------------------------------------------------
echo ERROR - DID NOT INCLUDE PHRASE OR NUMBER AT END.
echo Note: Enter key words such as 'login' or 'support'.
goto mainInterfaceINPUT



:help.login
cls
set MYpath=help.login
echo =============================
echo HELP / TROUBLESHOOT / SUPPORT
echo =============================
echo //%input%
echo ------------------------------------------------
echo cmdPath: [input] - User (INPUT) - Identification (PIN)
echo ____________________
echo {STEPS}
echo 1. Enter 'signin'.
echo 2. Enter Username [MYuser].
echo 3. Enter Identification Pin (4 Digits) [MYid].
pause
goto mainInterfaceINPUT

:help.notifcreate
cls
set MYpath=help.notifcreate
echo =============================
echo HELP / TROUBLESHOOT / SUPPORT
echo =============================
echo //%input%
echo ------------------------------------------------
echo cmdPath: [input] - ConfPin (CONF) - Content (INPUT)
echo ____________________
echo {STEPS}
echo 1. Enter 'notifcreate'.
echo 2. Enter Confirmation Pin. (4 Digits)
echo 3. Enter Title; then Content.
echo 4. Confirm notif.
pause
goto mainInterfaceINPUT

:lock.interface
if not "%pass%" == "true" goto error
set lock.interface=true
set MYpath=LOCKED
echo lock.interface ON
cd C:\Users\alpam\Documents\DevConsole-main1\DevConsole-main-main\DevConsole-main\vSystem\Testing BETA\Launch\DISmain
echo LOCKDOWN> T1status.txt
echo T2 is currently unavailable due to the console status.
echo Status : %T1status%
timeout 5
goto mainInterface
:lock.notif
if not "%pass%" == "true" goto error
set lock.notif=true
set MYpath=LOCKED
echo lock.notif ON
goto mainInterface
:lock.signin
if not "%pass%" == "true" goto error
set lock.signin=true
set MYpath=LOCKED
echo lock.signin ON
goto mainInterface

:unlock.interface 
if not "%pass%" == "true" goto error
set lock.interface=false
set MYpath=UNLOCKED
echo lock.interface OFF
goto mainInterface

:BGappcheck
IF EXIST DevConsole.bat (
    set devconsolecheck=O
) ELSE (
    set devconsolecheck=X
)
IF EXIST DevConsole-ex.bat (
    set devconsolelitecheck=O
) ELSE (
    set devconsolelitecheck=X
)
IF EXIST DevConsole_setup.bat (
    set devconsolesetupcheck=O
) ELSE (
    set devconsolesetupcheck=X
)
IF EXIST log.txt (
    set logcheck=O
) ELSE (
    set logcheck=X
)
IF EXIST log1.txt (
    set log1check=O
) ELSE (
    set log1check=X
)
)IF EXIST log2.txt (
    set log2check=O
) ELSE (
    set log2check=X
)
)IF EXIST log3.txt (
    set log3check=O
) ELSE (
    set log3check=X
)
goto developersettings
:error
echo ERROR :: %time% [cmdPath(%MYpath%)][%MYuser%{%MYrole%}(%username%)] >> log.txt

echo --------------------
echo %MYuser% [%MYpath%] 
echo     %time%
echo --------------------
echo Error / Access Denied
goto mainInterfaceINPUT

:EXcreditbalance
set MYpath=EXbal-default
if "%MYuser%" == "root" goto error

set EXcredit=283
set EXuser1=Joe
set EXuser2=Tom
set EXtransfertotal=32
set EXtransferstatus=PENDING
set EXsentcheck=O
set EXrecievedcheck=X
set /A EXCtransfernumber=%RANDOM% * 100000000 / 32768 + 1
::This is an example of a Credit balance accocunt.
echo ===============
echo ===============
echo CREDIT BALANCE
echo ===============
echo EXAMPLE #001
echo _______________
echo CREDITS : %EXcredit%
echo ON HOLD : %EXtransfertotal%
echo _______________
echo  } TRANSFER {
echo :::
echo [%EXCtransfernumber%] %EXtransferstatus%
echo ~ %EXuser1% - %EXuser2%
echo --- Sent (%EXsentcheck%)    Recieved (%EXrecievedcheck%)
echo --- Amount: %EXtransfertotal% 
echo ---- Transfer Status : %EXtransferstatus%
echo ---- Transfer [%EXCtransfernumber%] Documeunt: transferdata.txt
echo :::
echo } SIGNIN LOG {
echo [123:456.78 / 05/18/2022] Joe - Deposited 12 credits
echo [234:567.89 / 05/16/2022] Joe - Traded 9 credits to Bob
echo ;;Please report to support if you have any concerns.
pause 
set MYpath=main
goto mainInterfaceINPUT

:EXcreditbalance1
set MYpath=EXbal1-default
if "%MYuser%" == "root" goto error

set EXcredit=283
set EXuser1=Joe
set EXuser2=Tom
set EXtransfertotal=32
set EXtransferstatus=PENDING
set EXsentcheck=O
set EXrecievedcheck=X
set /A EXCtransfernumber=%RANDOM% * 100000000 / 32768 + 1
::This is an example of a Credit balance accocunt.
echo ===============
echo ===============
echo CREDIT BALANCE
echo ===============
echo EXAMPLE #002
echo _______________
echo } DASHBOARD {
echo CREDITS : %EXcredit%
echo ON HOLD : %EXtransfertotal%
echo TAX %   : %EXtax%
echo _______________
echo  } TRANSFER {
echo ...............
echo ::: [%EXCtransfernumber%] %EXtransferstatus%
echo SENDER/RECIEVER : %EXuser1% - %EXuser2%
echo --- Sent (%EXsentcheck%)    Recieved (%EXrecievedcheck%)
echo --- Amount: %EXtransfertotal% without tax.
echo . . . . .
echo Transfer [%EXCtransfernumber%] Documeunt: transferdata.txt
echo :::
echo ;;Please report to support if you have any concerns.
pause 
set MYpath=main
goto mainInterfaceINPUT
:credit.deposit
:credit.withdraw
:credit.trade


::Endless loop add a input in which a .txt file would stop the
::repeat back into load1.
:load1 
set MYpath=load1
if "%MYuser%" == "root" goto error 
cls
echo Load: .--
ping localhost -n 3 >nul
cls
echo Load: -.-
ping localhost -n 3 >nul
cls
   echo Load: --.
ping localhost -n 3 >nul
goto load1

:DevLog
echo This article is open to everyone; free and open source!
echo 


:exit
set MYpath=exit
cd \%username%\Downloads\DevConsole-main\DevConsole-main\vSystem\Testing BETA\Launch
echo --------------------
echo %MYuser% [%errorLevel%] 
echo     %time%
echo --------------------
echo Console Terminated.@echo off
:: DEV NOTE
:: Array will be discontinued.
title LAUNCH INTERFACE 
::Start Set
set notif=None
set pass=false
set MYuser=root
set MYpath=main
set MYid=0
set MYcredit=0
set MYemail=-
set MYrole=Default
set pathSet=Check
set guiSet=Check
set sysSet=Check
set conSet=Check
set logSet=Check
set v1Set=Check
set v2Set=Check
set v3Set=Check
set dcSet=Check
set A1=#
set A2=#
set A3=#
set A4=#
set A5=#
set A6=#
set A7=#
set A8=#
set A9=#
set B1=#
set B2=#
set B3=#
set B4=#
set B5=#
set B6=#
set B7=#
set B8=#
set B9=#
set C1=#
set C2=#
set C3=#
set C4=#
set C5=#
set C6=#
set C7=#
set C8=#
set C9=#
set D1=#
set D2=#
set D3=#
set D4=#
set D5=#
set D6=#
set D7=#
set D8=#
set D9=#
set E1=#
set E2=#
set E3=#
set E4=#
set E5=#
set E6=#
set E7=#
set E8=#
set E9=#
set F1=#
set F2=#
set F3=#
set F4=#
set F5=#
set F6=#
set F7=#
set F8=#
set F9=#
set G1=#
set G2=#
set G3=#
set G4=#
set G5=#
set G6=#
set G7=#
set G8=#
set G9=#
set H1=#
set H2=#
set H3=#
set H4=#
set H5=#
set H6=#
set H7=#
set H8=#
set H9=#
set I1=#
set I2=#
set I3=#
set I4=#
set I5=#
set I6=#
set I7=#
set I8=#
set I9=#
goto mainInterface
:mainInterface 
set MYpath=main
if "%lock.interface%" == "true" goto mainInterfaceLOCK 
echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo :: Interface                                              ::System Configuration  :: System Check
echo :  ---------                                              : Time   : %time%       : user   : %username%  
echo :                                                         : Date   : %date%       : eLvl   : %errorLevel%
echo :                                                         ``````````````````````  :...............:
echo :                                                         : Credits :%MYcredit%   ::   Set Check   
echo                                                           ``````````````````````` :pathSet : %pathSet%
echo                                                           ::Profile Status        :guiSet  : %guiSet%
echo                                                           : User   : %MYuser%     :sysSet  : %sysSet%
echo                                                           : Role   : %MYrole%    :conSet  : %conSet%
echo                                                           ``````````````````````` :logSet  : %logSet%
echo                                                                                   :v1Set   : %v1Set%
echo                                                                                   :v2Set   : %v2Set%
echo                                                                                   :v3Set   : %v3Set%
echo                                                                                   :dcSet   : %dcSet%
echo ABCDEFGHI                                                                      `````````````````
echo %A1%%B1%%C1%%D1%%E1%%F1%%G1%%H1%%I1%:1
echo %A2%%B2%%C2%%D2%%E2%%F2%%G2%%C2%%I2%:2
echo %A3%%B3%%C3%%D3%%E3%%F3%%G3%%C3%%I3%:3
echo %A4%%B4%%C4%%D4%%E4%%F4%%G4%%C4%%I4%:4
echo %A5%%B5%%C5%%D5%%E5%%F5%%G5%%C5%%I5%:5
echo %A6%%B6%%C6%%D6%%E6%%F6%%G6%%C6%%I6%:6
echo %A7%%B7%%C7%%D7%%E7%%F7%%G7%%C7%%I7%:7
echo %A8%%B8%%C8%%D8%%E8%%F8%%G8%%C8%%I8%:8
echo %A9%%B9%%C9%%D9%%E9%%F9%%G9%%C9%%I9%:9
type notif.txt
echo .
echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
goto mainInterfaceINPUT
:mainInterfaceLOCKDOWN
set MYpath=LOCKDOWN
set /p input=%MYuser%@%MYpath%:~$	
if %input%==exit goto exit
ECHO UNAVAILABLE - Auto-Response: Lockdown is active.
goto mainInterfaceLOCK
:mainInterfaceINPUT
if "%lock.interface%" == "true" goto mainInterfaceLOCK 
set /p input=%MYuser%@%MYpath%:~$ 

if %input%==display goto mainInterface

if %input%==signin goto signin
if %input%==logout goto logout

if %input%==settings goto settings
if %input%==devsettings goto developersettings

if %input%==notifcreate goto notifcreate
if %input%==create_notif goto notifcreate
if %input%==createnotif goto notifcreate

if %input%==lock.signin goto lock.signin
if %input%==lock.notif goto lock.notif
if %input%==lock.interface goto lock.interface

if %input%==bal goto EXcreditbalance
if %input%==credits goto EXcreditbalance

if %input% == server goto arraySort
if %input% == server.stash goto arraySort
if %input% == server.grid goto serverGrid
::if %input% == server.control goto serverControl

if %input%==help goto help
if %input%==help.login goto help.login
if %input%==help.login.1 goto help.login
if %input%==help.signin goto help.login
if %input%==help.signin.1 goto help.login
if %input%==help.notifcreate goto help.notifcreate
if %input%==help.notifcreate.1 goto help.notifcreate
if %input%==help.notif goto help.notifcreate
if %input%==help.notif.1 goto help.notifcreate


if %input%==test1 goto load1

if %input%==cls goto cls
if %input%==exit goto exit

goto mainInterfaceINPUT

:mainInterfaceLOCK
echo mainInterfaceLOCK Enabled.
set MYpath=LOCK
echo mainInterface Locked therfore mainInterfaceINPUT isn't possible. (10 delay)
ping localhost -n 10 >nul
if "%lock.interface%" == "false" goto mainInterface
goto mainInterfaceLOCK

:ping
ECHO Ping suscess!
pause
cls
goto mainInterface

:signin
ECHO ==========
ECHO ==========
ECHO  SIGN IN
ECHO ==========
set MYpath=profile
set pass=false
if "%lock.signin%" == "true" goto signinLOCK
ECHO User:
set /p MYuser=%MYuser%@%MYpath%:~$/User: 
ECHO Username [MYuser] set as '%MYuser%'.
ECHO Identification Pin (4 Digits):`xdc
color 0
set /p MYid=%MYuser%@%MYpath%:~$/Identification: 
ECHO Username [MY] set as '%MYid%'.
set MYrole=Member 
cls
if "%MYuser%" == "root" echo "/ / / ERROR: Default 'MYuser' term."
if "%MYuser%" == "reala" goto signinMYid
if "%MYuser%" == "guest" goto signinMYid2
goto mainInterface

:signinMYid
if not "%MYid%" == "9628" goto mainInterface
set pass=true
set MYrole=*Developer*
echo PERMISSIONS ACTIVE.
goto mainInterface

:signinMYid2
set pass=false
set MYrole=*Guest*
echo PERMISSIONS LIMITED.
goto mainInterface

:signinLOCK
echo signinLOCK Enabled.
set MYpath=LOCK
goto mainInterfaceINPUT


:logout
set pass=false
if "%lock.signin%" == "true" goto signinLOCK
echo Logged out of %MYuser%
set MYuser=root
set MYrole=Default
goto mainInterfaceINPUT

:notifcreate
set MYpath=notifEDIT
if "%MYuser%" == "root" echo "/ / / ERROR: Default 'MYuser' term."
if "%MYuser%" == "root" goto error

if not "%pass%"=="true" goto error


ECHO ==========
ECHO ==========
ECHO NOTIF EDIT
ECHO ==========
if "%lock.notif%" == "true" goto notifcreateLOCK
set /A notifnumberrandom=%RANDOM% * 1000 / 32768 + 1
ECHO NOTIFICATION NUMBER [%notifnumberrandom%] 
ECHO USER                [%MYuser%]
ECHO DATE/TIME           [%date% / %time%]
ECHO ____________________
ECHO For security reasons, computer information will
ECHO be stored on this notification but will not be
ECHO shown publicly. Below will be the information
ECHO collected.
ECHO USER                [%username%]
ECHO COMPUTER NAME       [%computername%]
ECHO ------------------------------------------------
ECHO By entering your notification number below, you
ECHO agree to all the information that will be gathered
ECHO and stored.
set /p input=%MYuser%@%MYpath%:~$/CONFIMATION: 
if %input%==%notifnumberrandom% goto notifcreate1
if %input%==t goto mainInterface

cls
ECHO INVALID NOTFICATION NUMBER.
goto notifcreate
:notifcreate1
ECHO ENTER TITLE:
set /p notiftitle=%MYuser%@%MYpath%:~$/Title: 
set /p notifcontext=%MYuser%@%MYpath%:~$/Content: 
echo ==========
echo   ALERT 
echo ==========
echo Are you sure you want to post notification? [Y\N]
set /p input=%MYuser%@%MYpath%:~$/CONFIMATION: 
if %input%==y goto notifcreate2
if %input%==Y goto notifcreate2
if %input%==n goto mainInterface
if %input%==N goto mainInterface
ECHO Invalid Choice (Required to restart).
goto notifcreate1
:notifcreate2
cd \%username%\Downloads\DevConsole-main\DevConsole-main\vSystem\Testing BETA\Launch
echo NOTIF %notifnumberrandom% :: [%notiftitle%] "%notifcontext%" > notif.txt
echo NOTIF %notifnumberrandom% :: [%MYuser%{%MYrole%}(%username%)] - [C: %computername%] - [(%notiftitle%)"%notifcontext%"] >> notifdata.txt
set notif=NOTIF %notifnumberrandom% :: [%notiftitle%] "%notifcontext%"
ECHO SUSSESFULLY CREATED!
goto mainInterface
:notifcreateLOCK
echo notifcreateLOCK Enabled.
set MYpath=LOCK
goto mainInterfaceINPUT

:settings
set MYpath=settings
ECHO ==========
ECHO ==========
ECHO  SETTINGS
ECHO ==========
echo TO CHANGE INFORMATION, CONTACT alpamartin2007@gmail.com
echo } PUBLIC INFORMATION {
ECHO USER                [%MYuser%]
ECHO DATE/TIME           [%date% / %time%]
ECHO ____________________
ECHO } PERSONAL INFORMATION {
ECHO PC USER             [%username%]
ECHO EMAIL               [%MYemail%]
ECHO COMPUTER NAME       [%computername%]
ECHO ------------------------------------------------
goto BGappcheck
:developersettings
set MYpath=devsettings
if not "%pass%"=="true" goto error
ECHO ==========
ECHO ==========
ECHO DEVSETTING
ECHO ==========
cd C:\Users\%username%\Downloads\DevConsole-main\DevConsole-main
tree
echo TO CHANGE INFORMATION, CONTACT alpamartin2007@gmail.com
echo } APPLICATION STATUS {
ECHO [%devconsolecheck%] DevConsole             
ECHO [%devconsolelitecheck%] DevConsole LITE           
ECHO [%devconsolesetupcheck%] DevConsole_setup
ECHO [%logcheck%] log
ECHO [%log1check%] log1
ECHO [%log2check%] log2
ECHO [%log3check%] log3
ECHO ____________________
ECHO } cmd DevConsole-main {
cd C:\Users\%username%\Downloads\DevConsole-main\DevConsole-main
dir
ECHO ------------------------------------------------
pause
goto mainInterfaceINPUT
::CORDINATE START

:arraySort
set MYpath=arraySORT
if "%MYuser%" == "root" echo "/ / / ERROR: Default 'MYuser' term."
if "%MYuser%" == "root" goto error

if not "%pass%"=="true" goto error

set arrayMARK=@
set arraySCAR=X
set arrayRESET=#
set /p arraySector=Server Sector: 
echo %arraySector% action?
set /p arrayAction=:: 
echo %arrayAction% in %arraySector%
if %arrayAction%==mark goto arraySort2
if %arrayAction%==scar goto arraySort3
if %arrayAction%==reset goto arraySort4
echo Invalid action.
goto mainInterface


:arraySort2
set arrayACTION=@
set %arraySector%=%arrayAction%
goto mainInterface
:arraySort3
set arrayACTION=X
set %arraySector%=%arrayAction%
goto mainInterface
:arraySort4
set arrayACTION=#
set %arraySector%=%arrayAction%
goto mainInterface


:serverGrid
set MYpath=serverGrid
if "%MYuser%" == "root" echo "/ / / ERROR: Default 'MYuser' term."
if "%MYuser%" == "root" goto error
if not "%pass%"=="true" goto error

echo SERVER GRID :: 
echo A  B  C  D  E  F  G  H  I  
echo %A1%  %B1%  %C1%  %D1%  %E1%  %F1%  %G1%  %H1%  %I1% :1
echo %A2%  %B2%  %C2%  %D2%  %E2%  %F2%  %G2%  %C2%  %I2% :2
echo %A3%  %B3%  %C3%  %D3%  %E3%  %F3%  %G3%  %C3%  %I3% :3
echo %A4%  %B4%  %C4%  %D4%  %E4%  %F4%  %G4%  %C4%  %I4% :4
echo %A5%  %B5%  %C5%  %D5%  %E5%  %F5%  %G5%  %C5%  %I5% :5
echo %A6%  %B6%  %C6%  %D6%  %E6%  %F6%  %G6%  %C6%  %I6% :6
echo %A7%  %B7%  %C7%  %D7%  %E7%  %F7%  %G7%  %C7%  %I7% :7
echo %A8%  %B8%  %C8%  %D8%  %E8%  %F8%  %G8%  %C8%  %I8% :8
echo %A9%  %B9%  %C9%  %D9%  %E9%  %F9%  %G9%  %C9%  %I9% :9
goto mainInterfaceINPUT

:serverControl
set MYpath=serverControl
if "%MYuser%" == "root" echo "/ / / ERROR: Default 'MYuser' term."
if "%MYuser%" == "root" goto error
if not "%pass%"=="true" goto error

echo ==============
echo SERVER CONTROL {%random%.%random%.%random%}
echo ===========================================
echo %MYuser% / %MYrole% / %MYpath% | %time%
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo SERVER GRID :: 
echo A  B  C  D  E  F  G  H  I  
echo %A1%  %B1%  %C1%  %D1%  %E1%  %F1%  %G1%  %H1%  %I1% :1
echo %A2%  %B2%  %C2%  %D2%  %E2%  %F2%  %G2%  %C2%  %I2% :2
echo %A3%  %B3%  %C3%  %D3%  %E3%  %F3%  %G3%  %C3%  %I3% :3
echo %A4%  %B4%  %C4%  %D4%  %E4%  %F4%  %G4%  %C4%  %I4% :4
echo %A5%  %B5%  %C5%  %D5%  %E5%  %F5%  %G5%  %C5%  %I5% :5
echo %A6%  %B6%  %C6%  %D6%  %E6%  %F6%  %G6%  %C6%  %I6% :6
echo %A7%  %B7%  %C7%  %D7%  %E7%  %F7%  %G7%  %C7%  %I7% :7
echo %A8%  %B8%  %C8%  %D8%  %E8%  %F8%  %G8%  %C8%  %I8% :8
echo %A9%  %B9%  %C9%  %D9%  %E9%  %F9%  %G9%  %C9%  %I9% :9
echo ===========================================

echo } APPLICATION STATUS {
ECHO [%devconsolecheck%] DevConsole             
ECHO [%devconsolelitecheck%] DevConsole LITE           
ECHO [%devconsolesetupcheck%] DevConsole_setup
ECHO [%logcheck%] log
ECHO [%log1check%] log1
ECHO [%log2check%] log2
ECHO [%log3check%] log3
echo ===========================================
goto mainInterfaceINPUT



:serverControlTEST
::This current section is just a test of what the potentialy new
::and updated code of the interface will look like. 
echo = = = = = = = = = =
echo SERVER CONTROL
echo = = = = = = =  = = =
echo echo %MYuser% / %MYuser% / %MYpath% | %time%
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo %A1%  %B1%  %C1%  %D1%  %E1%  %F1%  %G1%  %H1%  %I1% :1   |  
echo %A2%  %B2%  %C2%  %D2%  %E2%  %F2%  %G2%  %C2%  %I2% :2   |
echo %A3%  %B3%  %C3%  %D3%  %E3%  %F3%  %G3%  %C3%  %I3% :3   |
echo %A4%  %B4%  %C4%  %D4%  %E4%  %F4%  %G4%  %C4%  %I4% :4   |
echo %A5%  %B5%  %C5%  %D5%  %E5%  %F5%  %G5%  %C5%  %I5% :5   |
echo %A6%  %B6%  %C6%  %D6%  %E6%  %F6%  %G6%  %C6%  %I6% :6   |
echo %A7%  %B7%  %C7%  %D7%  %E7%  %F7%  %G7%  %C7%  %I7% :7   |
echo %A8%  %B8%  %C8%  %D8%  %E8%  %F8%  %G8%  %C8%  %I8% :8   |
echo %A9%  %B9%  %C9%  %D9%  %E9%  %F9%  %G9%  %C9%  %I9% :9   |
echo ===========================================

::===================================
::HELP SECTION START
::===================================

:help
cls
set MYpath=help
echo =============================
echo HELP / TROUBLESHOOT / SUPPORT
echo =============================
echo // 
echo Format: help.[phrase/number].[section [0]]
echo ------------------------------------------------
echo ERROR - DID NOT INCLUDE PHRASE OR NUMBER AT END.
echo Note: Enter key words such as 'login' or 'support'.
goto mainInterfaceINPUT



:help.login
cls
set MYpath=help.login
echo =============================
echo HELP / TROUBLESHOOT / SUPPORT
echo =============================
echo //%input%
echo ------------------------------------------------
echo cmdPath: [input] - User (INPUT) - Identification (PIN)
echo ____________________
echo {STEPS}
echo 1. Enter 'signin'.
echo 2. Enter Username [MYuser].
echo 3. Enter Identification Pin (4 Digits) [MYid].
pause
goto mainInterfaceINPUT

:help.notifcreate
cls
set MYpath=help.notifcreate
echo =============================
echo HELP / TROUBLESHOOT / SUPPORT
echo =============================
echo //%input%
echo ------------------------------------------------
echo cmdPath: [input] - ConfPin (CONF) - Content (INPUT)
echo ____________________
echo {STEPS}
echo 1. Enter 'notifcreate'.
echo 2. Enter Confirmation Pin. (4 Digits)
echo 3. Enter Title; then Content.
echo 4. Confirm notif.
pause
goto mainInterfaceINPUT

:lock.interface
if not "%pass%" == "true" goto error
set lock.interface=true
set MYpath=LOCKED
echo lock.interface ON
cd C:\Users\alpam\Documents\DevConsole-main1\DevConsole-main-main\DevConsole-main\vSystem\Testing BETA\Launch\DISmain
echo LOCKDOWN> T1status.txt
echo T2 is currently unavailable due to the console status.
echo Status : %T1status%
timeout 5
goto mainInterface
:lock.notif
if not "%pass%" == "true" goto error
set lock.notif=true
set MYpath=LOCKED
echo lock.notif ON
goto mainInterface
:lock.signin
if not "%pass%" == "true" goto error
set lock.signin=true
set MYpath=LOCKED
echo lock.signin ON
goto mainInterface

:unlock.interface 
if not "%pass%" == "true" goto error
set lock.interface=false
set MYpath=UNLOCKED
echo lock.interface OFF
goto mainInterface

:BGappcheck
IF EXIST DevConsole.bat (
    set devconsolecheck=O
) ELSE (
    set devconsolecheck=X
)
IF EXIST DevConsole-ex.bat (
    set devconsolelitecheck=O
) ELSE (
    set devconsolelitecheck=X
)
IF EXIST DevConsole_setup.bat (
    set devconsolesetupcheck=O
) ELSE (
    set devconsolesetupcheck=X
)
IF EXIST log.txt (
    set logcheck=O
) ELSE (
    set logcheck=X
)
IF EXIST log1.txt (
    set log1check=O
) ELSE (
    set log1check=X
)
)IF EXIST log2.txt (
    set log2check=O
) ELSE (
    set log2check=X
)
)IF EXIST log3.txt (
    set log3check=O
) ELSE (
    set log3check=X
)
goto developersettings
:error
echo ERROR :: %time% [cmdPath(%MYpath%)][%MYuser%{%MYrole%}(%username%)] >> log.txt

echo --------------------
echo %MYuser% [%MYpath%] 
echo     %time%
echo --------------------
echo Error / Access Denied
goto mainInterfaceINPUT

:EXcreditbalance
set MYpath=EXbal-default
if "%MYuser%" == "root" goto error

set EXcredit=283
set EXuser1=Joe
set EXuser2=Tom
set EXtransfertotal=32
set EXtransferstatus=PENDING
set EXsentcheck=O
set EXrecievedcheck=X
set /A EXCtransfernumber=%RANDOM% * 100000000 / 32768 + 1
::This is an example of a Credit balance accocunt.
echo ===============
echo ===============
echo CREDIT BALANCE
echo ===============
echo EXAMPLE #001
echo _______________
echo CREDITS : %EXcredit%
echo ON HOLD : %EXtransfertotal%
echo _______________
echo  } TRANSFER {
echo :::
echo [%EXCtransfernumber%] %EXtransferstatus%
echo ~ %EXuser1% - %EXuser2%
echo --- Sent (%EXsentcheck%)    Recieved (%EXrecievedcheck%)
echo --- Amount: %EXtransfertotal% 
echo ---- Transfer Status : %EXtransferstatus%
echo ---- Transfer [%EXCtransfernumber%] Documeunt: transferdata.txt
echo :::
echo } SIGNIN LOG {
echo [123:456.78 / 05/18/2022] Joe - Deposited 12 credits
echo [234:567.89 / 05/16/2022] Joe - Traded 9 credits to Bob
echo ;;Please report to support if you have any concerns.
pause 
set MYpath=main
goto mainInterfaceINPUT

:EXcreditbalance1
set MYpath=EXbal1-default
if "%MYuser%" == "root" goto error

set EXcredit=283
set EXuser1=Joe
set EXuser2=Tom
set EXtransfertotal=32
set EXtransferstatus=PENDING
set EXsentcheck=O
set EXrecievedcheck=X
set /A EXCtransfernumber=%RANDOM% * 100000000 / 32768 + 1
::This is an example of a Credit balance accocunt.
echo ===============
echo ===============
echo CREDIT BALANCE
echo ===============
echo EXAMPLE #002
echo _______________
echo } DASHBOARD {
echo CREDITS : %EXcredit%
echo ON HOLD : %EXtransfertotal%
echo TAX %   : %EXtax%
echo _______________
echo  } TRANSFER {
echo ...............
echo ::: [%EXCtransfernumber%] %EXtransferstatus%
echo SENDER/RECIEVER : %EXuser1% - %EXuser2%
echo --- Sent (%EXsentcheck%)    Recieved (%EXrecievedcheck%)
echo --- Amount: %EXtransfertotal% without tax.
echo . . . . .
echo Transfer [%EXCtransfernumber%] Documeunt: transferdata.txt
echo :::
echo ;;Please report to support if you have any concerns.
pause 
set MYpath=main
goto mainInterfaceINPUT
:credit.deposit
:credit.withdraw
:credit.trade


::Endless loop add a input in which a .txt file would stop the
::repeat back into load1.
:load1 
set MYpath=load1
if "%MYuser%" == "root" goto error 
cls
echo Load: .--
ping localhost -n 3 >nul
cls
echo Load: -.-
ping localhost -n 3 >nul
cls
   echo Load: --.
ping localhost -n 3 >nul
goto load1

:DevLog
echo This article is open to everyone; free and open source!
echo 


:exit
set MYpath=exit
cd \%username%\Downloads\DevConsole-main\DevConsole-main\vSystem\Testing BETA\Launch
echo --------------------
echo %MYuser% [%errorLevel%] 
echo     %time%
echo --------------------
echo Console Terminated.