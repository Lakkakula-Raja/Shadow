*** Settings ***
Library     AppiumLibrary
Library     SeleniumLibrary
Library     OperatingSystem
Library     AutoItLibrary
Library     DateTime
Library     BuiltIn
Library     Collections

*** Variables ***

${deviceName}     RZ8T105EFQE

#Chrome app variable
${Chrome_package}      com.android.chrome
${Chrome_Launcher}     com.google.android.apps.chrome.Main

#data settings app variable
${DataSetting_package}     com.remifayolle.android.datasettings
${DataSetting_Launcher}    com.remifayolle.android.datasettings.DataSettingsActivity

#Message app variable
${message_package}     com.samsung.android.messaging
${message_Launcher}    com.android.mms.ui.ConversationComposer
${message_num}          8919111420

#Diler app variable
${dialer_package}     com.samsung.android.dialer
${dialer_Launcher}    com.samsung.android.dialer.DialtactsActivity
${dialer_num}         8919111420




*** Keywords ***
open chrome
    Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=${deviceName}
    ...                 appPackage=${Chrome_package}    appActivity=${Chrome_Launcher}     noReset=${True}
search for http downlode
    AppiumLibrary.Input Text    id=search_box_text      https://fastest.fish/test-files
    Sleep    5s
    AppiumLibrary.press keycode           66
    Sleep    25s
    AppiumLibrary.Click Element    //android.widget.ImageButton[@content-desc="More options"]
    Sleep    5s
    AppiumLibrary.Click Element    //android.widget.TextView[@text="Desktop site"]
    #AppiumLibrary.Click Element    //android.widget.Button[text="Download"]

make downlode http
    AppiumLibrary.Click Element    //android.widget.Button[@text="10MB"]
    AppiumLibrary.Wait Until Page Contains    Download again     timeout=60s
    AppiumLibrary.Click Element    //android.widget.Button[@text="Download again"]
    AppiumLibrary.Wait Until Page Contains    File downloaded     timeout=600s

open new tab
    #AppiumLibrary.Click Element    id=menu_button
    #AppiumLibrary.Click Element     id=new_tab_menu_id
    AppiumLibrary.Click Element    //android.widget.ImageButton[@content-desc="More options"]
    AppiumLibrary.Click Element    //android.widget.TextView[@text="New tab"]

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

Open Message Application
    Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=${deviceName}
    ...                 appPackage=${message_package}   appActivity=${message_Launcher}      noReset=${True}
    Sleep       1s
    AppiumLibrary.Click Element    id=fab
    Sleep       1s

Enter The Number
    [Arguments]     ${num}
    AppiumLibrary.Input Value    id=recipients_editor_to    ${num}
    Sleep    1s
    AppiumLibrary.press keycode           66
    Sleep    1s
Enter The Message
    [Arguments]     ${message}
    AppiumLibrary.Input Text    id=message_edit_text    ${message}
    Sleep    1s

Send The Message
    AppiumLibrary.press keycode           66
    Sleep    1s
    AppiumLibrary.Click Element    id=send_button1
    Sleep    1s

Open DataSettings Application
    Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=${deviceName}
    ...                 appPackage=${DataSetting_package}   appActivity=${DataSetting_Launcher}      noReset=${True}

GoTo APN
    AppiumLibrary.Click Element    //android.widget.TextView[@text="Access Point Names"]
    Sleep    2s
    AppiumLibrary.Click Element    //android.widget.TextView[@text="Vodafone Mobile connect"]
    Sleep    2s
    Scroll        //android.widget.TextView[@text="MMS port"]       //android.widget.TextView[@text="Server"]
    Sleep    2s
    Scroll        //android.widget.TextView[@text="APN type"]       //android.widget.TextView[@text="MMS port"]
Network set to
    [Arguments]     ${Mode}
    AppiumLibrary.Click Element         //android.widget.TextView[@text="Network mode"]
    AppiumLibrary.Click Element         //android.widget.CheckedTextView[@text="${Mode}"]
    AppiumLibrary.Click Element         //android.widget.ImageButton[@content-desc="Navigate up"]
APN set to
    [Arguments]     ${APN}

    AppiumLibrary.Click Element    //android.widget.TextView[@text="APN protocol"]
    Sleep    2s
    AppiumLibrary.Click Element    //android.widget.CheckedTextView[@text="${APN}"]
    Sleep    2s
    AppiumLibrary.Click Element    //android.widget.ImageView[@content-desc="More options"]
    Sleep    2s
    AppiumLibrary.Click Element     //android.widget.TextView[@text="Save"]

Back From APN
    AppiumLibrary.Click Element     //android.widget.ImageButton[@content-desc="Navigate up"]
    Sleep    2s
    AppiumLibrary.Click Element     //android.widget.ImageButton[@content-desc="Navigate up"]

