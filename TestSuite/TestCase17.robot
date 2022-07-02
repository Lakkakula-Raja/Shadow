*** Settings ***
Documentation  This script opens dialer on phone
Resource        ../Res/phone_kw.robot
Resource        ../Res/DataSettings_kw.robot
Test Teardown   Close Application

*** Test Cases ***
WCDMA bands
  Open DataSettings Application
  Network set to    3G/2G (auto connect)

Make call
  Open Dialer Application
  Enter The Number      8919111420
  Make A Call
  Disconnect The Call

