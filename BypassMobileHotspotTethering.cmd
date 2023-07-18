@ECHO OFF

:MAIN1
CLS
SET INPUT1=false
SET "MAIN1="
ECHO + =========================================== +
ECHO +   Configuration for bypass Mobile Hotspot   +
ECHO + =========================================== +
ECHO + [1] Show IPV4 details.                      +
ECHO + [2] Show IPV6 details.                      +
ECHO + [3] Set default hop limit for IPV4.         +
ECHO + [4] Set default hop limit for IPV6.         +
ECHO + [5] Reset default hop limit for IPV4.       +
ECHO + [6] Reset default hop limit for IPV6.       +
ECHO + =========================================== +
ECHO + [7] Exit                                    +
ECHO + =========================================== +
SET /p MAIN1="Input MENU number then press ENTER: "
IF NOT DEFINED MAIN1 GOTO:MAIN1
IF %MAIN1%==1 GOTO:SHOWIPV4
IF %MAIN1%==2 GOTO:SHOWIPV6
IF %MAIN1%==3 GOTO:CHANGEIPV4
IF %MAIN1%==4 GOTO:CHANGEIPV6
IF %MAIN1%==5 GOTO:RESETIPV4
IF %MAIN1%==6 GOTO:RESETIPV6
IF %MAIN1%==7 GOTO:EOF
IF %INPUT1%==false GOTO:MAIN1

::SHOW
:SHOWIPV4
CLS
netsh int ipv4 show global
PAUSE
GOTO:MAIN1
:SHOWIPV6
CLS
netsh int ipv6 show global
PAUSE
GOTO:MAIN1

::SET
:CHANGEIPV4
CLS
netsh int ipv4 set global defaultcurhoplimit=65
PAUSE
GOTO:MAIN1
:CHANGEIPV6
CLS
netsh int ipv6 set global defaultcurhoplimit=65
PAUSE
GOTO:MAIN1

::RESET
:RESETIPV4
CLS
netsh int ipv4 set global defaultcurhoplimit=128
PAUSE
GOTO:MAIN1
:RESETIPV6
CLS
netsh int ipv6 set global defaultcurhoplimit=128
PAUSE
GOTO:MAIN1
