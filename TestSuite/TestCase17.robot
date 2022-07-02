*** Settings ***
Documentation  This script opens dialer on phone
Resource        ../Res/phone_kw.robot
Resource        ../Res/DataSettings_kw.robot
Test Teardown   Close Application

*** Test Cases ***
Test MO call while on data connection with WCDMA bands.
  Open DataSettings Application
  Network set to    3G/2G (auto connect)
  Open Dialer Application
  Enter The Number      8919111420
  Make A Call
  Disconnect The Call

