@ECHO OFF
netsh int ipv4 show global
netsh int ipv6 show global
pause
ECHO ===================================
ECHO Modified default hop limit for IPV4
ECHO ===================================
netsh int ipv4 set global defaultcurhoplimit=65
ECHO ===================================
ECHO Modified default hop limit for IPV6
ECHO ===================================
netsh int ipv6 set global defaultcurhoplimit=65
pause
netsh int ipv4 show global
netsh int ipv6 show global
pause
