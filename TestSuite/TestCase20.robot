*** Settings ***
Documentation   Simultaneous Data and voice call with LTE bands
Resource        ../Res/phone_kw.robot
Resource        ../Res/DataSettings_kw.robot
Test Teardown   Close Application

*** Test Cases ***
LTE bands
    Open DataSettings Application
    Network set to    LTE/3G/2G (auto connect)

Simultaneous Data and voice call
  Open Dialer Application
  Enter The Number      8919111420
  Make A Call
  Log To Console    "try to search on google while in call"
  Disconnect The Call
