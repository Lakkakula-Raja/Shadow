*** Settings ***
Documentation  Test SMS while on data connection with WCDMA bands.
Resource        ../Res/message_kw.robot
Resource        ../Res/DataSettings_kw.robot
Test Teardown   Close Application

*** Test Cases ***
Test SMS while on data connection with WCDMA bands.
    Open DataSettings Application
    Network set to    3G/2G (auto connect)
    Open Message Application
    Enter The Number        8919111420
    Enter The Message       Test SMS while on data connection with WCDMA bands
    Send The Message

