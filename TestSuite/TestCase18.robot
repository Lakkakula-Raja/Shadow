*** Settings ***
Documentation  Test MO call while on data connection with LTE bands
Resource        ../Res/phone_kw.robot
Resource        ../Res/DataSettings_kw.robot
Test Teardown   Close Application

*** Test Cases ***
Test MO call while on data connection with LTE bands
  Open DataSettings Application
  Network set to    LTE/3G/2G (auto connect)
  Open Dialer Application
  Enter The Number      8919111420
  Make A Call
  Disconnect The Call


