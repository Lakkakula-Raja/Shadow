*** Settings ***
Documentation       it is used for Chrome var and KW
Resource    ../Base/CommonFunctionality.resource

*** Variables ***
#set your Chrome app variable
${Chrome_package}      com.android.chrome
${Chrome_Launcher}     com.google.android.apps.chrome.Main

*** Keywords ***
Open chrome Application
    Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=${deviceName}
    ...                 appPackage=${Chrome_package}    appActivity=${Chrome_Launcher}     noReset=${True}
    AppiumLibrary.Click Element    id=menu_button
    AppiumLibrary.Click Element     id=new_tab_menu_id


Check APN with
    [Arguments]     ${IP}
    AppiumLibrary.Wait Until Page Contains    Your ${IP} address on the public Internet appears to be     timeout=60s
    AppiumLibrary.Capture Page Screenshot

open url
    [Arguments]     ${LINK}
    AppiumLibrary.Input Text    id=search_box_text      ${LINK}
    Sleep    5s
    AppiumLibrary.press keycode           66
    Sleep    5s
    AppiumLibrary.Click Element    //android.widget.ImageButton[@content-desc="More options"]
    Sleep    5s
    AppiumLibrary.Click Element    //android.widget.TextView[@text="Desktop site"]
    Sleep    10s
    AppiumLibrary.Capture Page Screenshot
    #AppiumLibrary.Click Element    //android.widget.Button[text="Download"]
    #AppiumLibrary.Wait Until Page Contains    ${NAME} is on Facebook    timeout=60s



make downlode http
    AppiumLibrary.Click Element    //android.widget.Button[@text="10MB"]
    AppiumLibrary.Wait Until Page Contains    Download again     timeout=60s
    AppiumLibrary.Click Element     id=positive_button
    #AppiumLibrary.Click Element    //android.widget.Button[@text="Download again"]
    AppiumLibrary.Wait Until Page Contains    File downloaded     timeout=600s
open new tab
    #AppiumLibrary.Click Element    id=menu_button
    #AppiumLibrary.Click Element     id=new_tab_menu_id
    AppiumLibrary.Click Element    //android.widget.ImageButton[@content-desc="More options"]
    AppiumLibrary.Click Element    //android.widget.TextView[@text="New tab"]
