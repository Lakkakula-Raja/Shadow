*** Settings ***
Documentation       it is used for FTP RUSH var and KW
Resource    ../Base/CommonFunctionality.resource

*** Variables ***
#set your data settings app variable
${FTP_Rush_package}     com.wftpserver.ftprush
${FTP_Rush_Launcher}    crc64479b29261e5a40c6.SplashActivity

*** Keywords ***
Launch FTP RUSH App
        Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=${deviceName}
    ...                 appPackage=${FTP_Rush_package}   appActivity=${FTP_Rush_Launcher}      noReset=${True}
FTP download
    [Arguments]     ${file}
    Sleep    10s
    AppiumLibrary.Click Element    //android.widget.TextView[@text="Demo"]
    AppiumLibrary.Wait Until Page Contains    download     timeout=100s
    Sleep    2s
    AppiumLibrary.Click Element    //android.widget.TextView[@text="download"]
    Sleep    10s
    AppiumLibrary.Click Element         //android.widget.TextView[@text="${file}"]
    AppiumLibrary.Wait Until Page Contains    Open     timeout=300s

konda
    #AppiumLibrary.Input Text    //android.widget.EditText[@resource-id="username_val"]      ${user}
    #AppiumLibrary.Input Text    //android.widget.EditText[@resource-id="password_val"]      ${password}
    #AppiumLibrary.Click Element      //android.widget.Button[@contains(text(),'Login')]
    #AppiumLibrary.Click Element    //android.view.View[@index="8"]
    #AppiumLibrary.Click Element    //android.widget.Button[@index="0"]
    #android.widget.Button
    #AppiumLibrary.Click Element     id=positive_button android.widget.TextView
    AppiumLibrary.Click Element    //android.view.View[@text="50 KB"]
    AppiumLibrary.Click Element    //android.view.View[@index="2"]

    AppiumLibrary.Wait Until Page Contains    Download again     timeout=100s
    AppiumLibrary.Click Element     id=positive_button
    #AppiumLibrary.Click Element     id=negative_button
    AppiumLibrary.Wait Until Page Contains    File downloaded     timeout=100s

    AppiumLibrary.Wait Until Page Contains    File downloaded     timeout=600s

    AppiumLibrary.Click Element         //android.widget.TextView[@text="download"]
    AppiumLibrary.Click Element         //android.widget.TextView[@text="dmanual_en.pdf"]
    Open
    AppiumLibrary.Wait Until Page Contains    Open     timeout=300s

make downlode FTP
    AppiumLibrary.Click Element    //android.widget.Button[@text="10MB"]
    AppiumLibrary.Wait Until Page Contains    Download again     timeout=60s
    AppiumLibrary.Click Element    //android.widget.Button[@text="Download again"]
    AppiumLibrary.Wait Until Page Contains    File downloaded     timeout=600s