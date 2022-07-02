*** Settings ***
Resource        ../Res/DataSettings_kw.robot
Test Teardown   Close Application

*** Test Cases ***
TEST CASE 11
    Open DataSettings Application
    Sleep    1s
    GoTo APN
    APN set to    IPv4
    Back From APN