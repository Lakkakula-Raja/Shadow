*** Settings ***
Documentation  Test MO call while on data connection with LTE bands
Resource        ../Res/userdef_kw.robot
Test Teardown   Close Application

*** Test Cases ***
LTE bands
  Open DataSettings Application
  Network set to    LTE/3G/2G (auto connect)

Make call
  Open Dialer Application
  Enter The Number      8919111420
  Make A Call
  Disconnect The Call


