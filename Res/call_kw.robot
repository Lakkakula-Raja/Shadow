*** Settings ***
Documentation  This script opens dialer on phone
Resource        ../Res/phone_kw.robot
Resource        ../Res/DataSettings_kw.robot

*** Test Cases ***
Test MO call
  Open Dialer Application
  Enter The Number      8919111420
  Make A Call
  Disconnect The Call