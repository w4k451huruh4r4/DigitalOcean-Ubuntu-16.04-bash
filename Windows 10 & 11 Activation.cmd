:MENU1
@ECHO OFF
CLS
SET INPUT=false
SET "OPTION="
SET "PRODUCT_KEY="
SET "KMS_CLIENT="

ECHO PLEASE MAKE SURE THIS APPLICATION RUNNING AS ADMINISTRATOR!
ECHO.
ECHO +=========================================================================+
ECHO + (1) Display detailed Windows license information.                       +
ECHO + (2) Display the activation expiration date for the Windows product key. +
ECHO +     By default, this refers to the current Windows edition and is       +
ECHO +     primarily useful for KMS clients, because MAK and RETAIL activation +
ECHO +     is perpetual.                                                       +
ECHO + (3) Uninstalls the product key of the current Windows edition.          +
ECHO + (4) Clear Windows product key from registry.                            +
ECHO + (5) Install Windows product key.                                        +
ECHO + (6) Key Management Services (KMS) client activation.                    +
ECHO + (7) Removes the specified KMS host name, address, and port information  +
ECHO +     from the registry and restores KMS auto-discovery behavior.         +
ECHO +=========================================================================+
ECHO + (8) Exit                                                                +
ECHO +=========================================================================+
ECHO.
SET /p OPTION="Input MENU number then press ENTER: "

IF %OPTION%==1 GOTO OPTION1
IF %OPTION%==2 GOTO OPTION2
IF %OPTION%==3 GOTO OPTION3
IF %OPTION%==4 GOTO OPTION4
IF %OPTION%==5 GOTO OPTION5
IF %OPTION%==6 GOTO OPTION6
IF %OPTION%==7 GOTO OPTION7
IF %OPTION%==8 GOTO OPTION8
IF %INPUT%==false GOTO DEFAULT

:OPTION1
CLS
cscript slmgr.vbs /dlv
PAUSE
GOTO MENU1

:OPTION2
CLS
cscript slmgr.vbs /xpr
PAUSE
GOTO MENU1

:OPTION3
CLS
cscript slmgr.vbs /upk
cscript slmgr.vbs /cpky
PAUSE
GOTO MENU1

:OPTION4
CLS
cscript slmgr.vbs /cpky
PAUSE
GOTO MENU1

:OPTION5
CLS
cscript slmgr.vbs /upk
cscript slmgr.vbs /cpky
SET INPUT=true
SET /p PRODUCT_KEY="Enter your product key (XXXXX-XXXXX-XXXXX-XXXXX-XXXXX) then press ENTER or (n/N) to go back to MENU: "
IF %PRODUCT_KEY%==n GOTO MENU1
IF %PRODUCT_KEY%==N GOTO MENU1
cscript slmgr.vbs /ipk %PRODUCT_KEY%
cscript slmgr.vbs /ato
PAUSE
GOTO MENU1

:OPTION6
CLS
ECHO +==================================================================+
ECHO +     Windows 10 and Windows 11 (Semi-Annual Channel versions)     +
ECHO +==================================================================+
ECHO + (1) Windows 10/11 Pro                                            +
ECHO + (2) Windows 10/11 Pro N                                          +
ECHO + (3) Windows 10/11 Pro for Workstations                           +
ECHO + (4) Windows 10/11 Pro for Workstations N                         +
ECHO + (5) Windows 10/11 Pro Education                                  +
ECHO + (6) Windows 10/11 Pro Education N                                +
ECHO + (7) Windows 10/11 Education                                      +
ECHO + (8) Windows 10/11 Education N                                    +
ECHO + (9) Windows 10/11 Enterprise                                     +
ECHO + (10) Windows 10/11 Enterprise N                                  +
ECHO + (11) Windows 10/11 Enterprise G                                  +
ECHO + (12) Windows 10/11 Enterprise G N                                +
ECHO +==================================================================+
ECHO + (13) Back to main menu (14) Exit                                 +
ECHO +==================================================================+
ECHO.
SET /p OPTION2="Input MENU number then press ENTER: "

IF %OPTION2%==1 GOTO OPTION2A
IF %OPTION2%==2 GOTO OPTION2B
IF %OPTION2%==3 GOTO OPTION2C
IF %OPTION2%==4 GOTO OPTION2D
IF %OPTION2%==5 GOTO OPTION2E
IF %OPTION2%==6 GOTO OPTION2F
IF %OPTION2%==7 GOTO OPTION2G
IF %OPTION2%==8 GOTO OPTION2H
IF %OPTION2%==9 GOTO OPTION2I
IF %OPTION2%==10 GOTO OPTION2J
IF %OPTION2%==11 GOTO OPTION2K
IF %OPTION2%==12 GOTO OPTION2L
IF %OPTION2%==13 GOTO OPTION2M
IF %OPTION2%==14 GOTO OPTION2N
IF %INPUT%==false GOTO DEFAULT2

:OPTION2A
CLS
cscript slmgr.vbs /upk
cscript slmgr.vbs /cpky
cscript slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
SET INPUT=true
SET /p KMS_CLIENT="Enter your KMS host then press ENTER or (n/N) to go back to MENU: "
IF %KMS_CLIENT%==n GOTO OPTION6
IF %KMS_CLIENT%==N GOTO OPTION6
cscript slmgr.vbs /skms %KMS_CLIENT%
cscript slmgr.vbs /ato
PAUSE
GOTO OPTION6
:OPTION2B
CLS
cscript slmgr.vbs /upk
cscript slmgr.vbs /cpky
cscript slmgr.vbs /ipk MH37W-N47XK-V7XM9-C7227-GCQG9
SET INPUT=true
SET /p KMS_CLIENT="Enter your KMS host then press ENTER or (n/N) to go back to MENU: "
IF %KMS_CLIENT%==n GOTO OPTION6
IF %KMS_CLIENT%==N GOTO OPTION6
cscript slmgr.vbs /skms %KMS_CLIENT%
cscript slmgr.vbs /ato
GOTO OPTION6
:OPTION2C
CLS
cscript slmgr.vbs /upk
cscript slmgr.vbs /cpky
cscript slmgr.vbs /ipk NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J
SET INPUT=true
SET /p KMS_CLIENT="Enter your KMS host then press ENTER or (n/N) to go back to MENU: "
IF %KMS_CLIENT%==n GOTO OPTION6
IF %KMS_CLIENT%==N GOTO OPTION6
cscript slmgr.vbs /skms %KMS_CLIENT%
cscript slmgr.vbs /ato
GOTO OPTION6
:OPTION2D
CLS
cscript slmgr.vbs /upk
cscript slmgr.vbs /cpky
cscript slmgr.vbs /ipk 9FNHH-K3HBT-3W4TD-6383H-6XYWF
SET INPUT=true
SET /p KMS_CLIENT="Enter your KMS host then press ENTER or (n/N) to go back to MENU: "
IF %KMS_CLIENT%==n GOTO OPTION6
IF %KMS_CLIENT%==N GOTO OPTION6
cscript slmgr.vbs /skms %KMS_CLIENT%
cscript slmgr.vbs /ato
GOTO OPTION6
:OPTION2E
CLS
cscript slmgr.vbs /upk
cscript slmgr.vbs /cpky
cscript slmgr.vbs /ipk 6TP4R-GNPTD-KYYHQ-7B7DP-J447Y
SET INPUT=true
SET /p KMS_CLIENT="Enter your KMS host then press ENTER or (n/N) to go back to MENU: "
IF %KMS_CLIENT%==n GOTO OPTION6
IF %KMS_CLIENT%==N GOTO OPTION6
cscript slmgr.vbs /skms %KMS_CLIENT%
cscript slmgr.vbs /ato
GOTO OPTION6
:OPTION2F
CLS
cscript slmgr.vbs /upk
cscript slmgr.vbs /cpky
cscript slmgr.vbs /ipk YVWGF-BXNMC-HTQYQ-CPQ99-66QFC
SET INPUT=true
SET /p KMS_CLIENT="Enter your KMS host then press ENTER or (n/N) to go back to MENU: "
IF %KMS_CLIENT%==n GOTO OPTION6
IF %KMS_CLIENT%==N GOTO OPTION6
cscript slmgr.vbs /skms %KMS_CLIENT%
cscript slmgr.vbs /ato
GOTO OPTION6
:OPTION2G
CLS
cscript slmgr.vbs /upk
cscript slmgr.vbs /cpky
cscript slmgr.vbs /ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
SET INPUT=true
SET /p KMS_CLIENT="Enter your KMS host then press ENTER or (n/N) to go back to MENU: "
IF %KMS_CLIENT%==n GOTO OPTION6
IF %KMS_CLIENT%==N GOTO OPTION6
cscript slmgr.vbs /skms %KMS_CLIENT%
cscript slmgr.vbs /ato
GOTO OPTION6
:OPTION2H
CLS
cscript slmgr.vbs /upk
cscript slmgr.vbs /cpky
cscript slmgr.vbs /ipk 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
SET INPUT=true
SET /p KMS_CLIENT="Enter your KMS host then press ENTER or (n/N) to go back to MENU: "
IF %KMS_CLIENT%==n GOTO OPTION6
IF %KMS_CLIENT%==N GOTO OPTION6
cscript slmgr.vbs /skms %KMS_CLIENT%
cscript slmgr.vbs /ato
GOTO OPTION6
:OPTION2I
CLS
cscript slmgr.vbs /upk
cscript slmgr.vbs /cpky
cscript slmgr.vbs /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43
SET INPUT=true
SET /p KMS_CLIENT="Enter your KMS host then press ENTER or (n/N) to go back to MENU: "
IF %KMS_CLIENT%==n GOTO OPTION6
IF %KMS_CLIENT%==N GOTO OPTION6
cscript slmgr.vbs /skms %KMS_CLIENT%
cscript slmgr.vbs /ato
GOTO OPTION6
:OPTION2J
CLS
cscript slmgr.vbs /upk
cscript slmgr.vbs /cpky
cscript slmgr.vbs /ipk DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4
SET INPUT=true
SET /p KMS_CLIENT="Enter your KMS host then press ENTER or (n/N) to go back to MENU: "
IF %KMS_CLIENT%==n GOTO OPTION6
IF %KMS_CLIENT%==N GOTO OPTION6
cscript slmgr.vbs /skms %KMS_CLIENT%
cscript slmgr.vbs /ato
GOTO OPTION6
:OPTION2K
CLS
cscript slmgr.vbs /upk
cscript slmgr.vbs /cpky
cscript slmgr.vbs /ipk YYVX9-NTFWV-6MDM3-9PT4T-4M68B
SET INPUT=true
SET /p KMS_CLIENT="Enter your KMS host then press ENTER or (n/N) to go back to MENU: "
IF %KMS_CLIENT%==n GOTO OPTION6
IF %KMS_CLIENT%==N GOTO OPTION6
cscript slmgr.vbs /skms %KMS_CLIENT%
cscript slmgr.vbs /ato
GOTO OPTION6
:OPTION2L
CLS
cscript slmgr.vbs /upk
cscript slmgr.vbs /cpky
cscript slmgr.vbs /ipk 44RPN-FTY23-9VTTB-MP9BX-T84FV
SET INPUT=true
SET /p KMS_CLIENT="Enter your KMS host then press ENTER or (n/N) to go back to MENU: "
IF %KMS_CLIENT%==n GOTO OPTION6
IF %KMS_CLIENT%==N GOTO OPTION6
cscript slmgr.vbs /skms %KMS_CLIENT%
cscript slmgr.vbs /ato
GOTO OPTION6
:OPTION2M
GOTO MENU1
:OPTION2N
GOTO OPTION8

:DEFAULT2
timeout 2 > NUL
GOTO OPTION6

:OPTION7
CLS
cscript slmgr.vbs /ckms
PAUSE
GOTO MENU1

:OPTION8
ECHO Ending process...
timeout 2 > NUL
EXIT /b

:DEFAULT
timeout 2 > NUL
GOTO MENU1