*** Settings ***
Resource        ../Res/DataSettings_kw.robot

*** Test Cases ***

APN set to "IPv6 only".
    Set Selenium Speed    10s
    Open DataSettings Application
    GoTo APN
    APN set to    IPv6
    Back From APN

APN set to "IPv4 only"
    Open DataSettings Application
    Sleep    1s
    GoTo APN
    APN set to    IPv4
    Back From APN

APN set to "IPv4 and IPv6"
    Open DataSettings Application
    GoTo APN
    APN set to    IPv4/IPv6
    Back From APN