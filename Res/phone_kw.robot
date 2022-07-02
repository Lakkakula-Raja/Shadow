*** Settings ***
Resource       ../var/phone_var.robot
Documentation  This script opens dialer on phone
Library  AppiumLibrary
Library  Collections

*** Keywords ***
Open Dialer Application
  Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=${deviceName}
  ...        appPackage=${dialer_package}    appActivity=${dialer_Launcher}     noReset=${True}
  Sleep    2s

Enter The Number
    [Arguments]         ${num}
    Input Value    digits    ${num}
    Sleep    1s

Make A Call
    AppiumLibrary.Click Element    id=dialButton
    Sleep    2s

Disconnect The Call
    #AppiumLibrary.Click Element    id=voice_disconnect_button
    #//android.widget.ImageButton[@content-desc="End call"]
    AppiumLibrary.Click Element    //android.widget.ImageButton[@content-desc="End call"]
    #Close Application
