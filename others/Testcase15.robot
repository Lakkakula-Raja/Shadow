*** Settings ***
Documentation  Test SMS while on data connection with WCDMA bands.
Resource        ../Res/userdef_kw.robot
Test Teardown   Close Application

*** Test Cases ***
WCDMA bands
    Open DataSettings Application
    Network set to    LTE/3G/2G (auto connect)

Send SMS
    Open Message Application
    Enter The Number        8919111420
    Enter The Message       Test SMS while on data connection with WCDMA bands
    Send The Message

