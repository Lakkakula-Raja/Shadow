*** Settings ***
Resource        ../Res/DataSettings_kw.robot
Test Teardown   Close Application

*** Test Cases ***
TEST CASE 12
    Open DataSettings Application
    GoTo APN
    APN set to    IPv4/IPv6
    Back From APN
