*** Settings ***
Resource        ../Res/DataSettings_kw.robot
Test Teardown   Close Application

*** Test Cases ***
TEST CASE 10
    Open DataSettings Application
    Sleep    1s
    GoTo APN
    APN set to    IPv6
    Back From APN