*** Settings ***
Documentation       it is used for Diler var and KW
Resource    ../Base/CommonFunctionality.resource

*** Variables ***
${dialer_package}     com.samsung.android.dialer
${dialer_Launcher}    com.samsung.android.dialer.DialtactsActivity
${dialer_num}         8919111420

*** Keywords ***
Open Dialer Application
  Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=${deviceName}
  ...        appPackage=${dialer_package}    appActivity=${dialer_Launcher}     noReset=${True}
  Sleep    2s

Make A Call to
    [Arguments]         ${num}
    Input Value    digits    ${num}
    Sleep    1s
    AppiumLibrary.Click Element    id=dialButton


Disconnect The Call
    #AppiumLibrary.Click Element    id=voice_disconnect_button
    #//android.widget.ImageButton[@content-desc="End call"]
    Open Notifications
    AppiumLibrary.Click Element    //android.widget.ImageView[@content-desc="End call"]
    #Close Application