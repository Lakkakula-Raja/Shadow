*** Settings ***
Documentation       it is used for Message var and KW
Resource    ../Base/CommonFunctionality.resource

*** Variables ***
#set your Message app variable
${message_package}     com.samsung.android.messaging
${message_Launcher}    com.android.mms.ui.ConversationComposer
${message_num}          8919111420

*** Keywords ***
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