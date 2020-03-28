*** Settings ***

Library        AppiumLibrary
Resource       ../Resources/Library.robot

Documentation   Test Cases for Programs module


*** Test Cases ***

TC_001 - User navigates to Programs screen and selects various options to Search
    User logged in and navigated to Programs screen
    Click Element    xpath=//android.widget.Button[contains(@text,'All Categories')]
    Sleep    4
    Click Element    xpath=//android.widget.TextView[contains(@text,'Dance')]
    Click Element    id=com.daxko.mobilemember.container:id/btn_schedule
    Sleep    4
    Click Element    xpath=//android.widget.Button[contains(@text,'All Courses')]
    Sleep    4
    Click Element    xpath=//android.widget.TextView[contains(@text,'Tango')]
    Click Element    id=com.daxko.mobilemember.container:id/btn_schedule
    Click Element    xpath=//android.widget.TextView[contains(@text,'LOCATION')]
    Sleep    4
    Click Element    xpath=//android.widget.TextView[contains(@text,'CSI QA 1')]
    Click Element    id=com.daxko.mobilemember.container:id/btn_schedule
    Click Element    xpath=//android.widget.TextView[contains(@text,'INSTRUCTOR')]
    Sleep    4
    Click Element    xpath=//android.widget.TextView[contains(@text,'All Instructors')]
    Click Element    id=com.daxko.mobilemember.container:id/btn_schedule
    Sleep    4
    Click Element    id=com.daxko.mobilemember.container:id/btn_search
    Sleep    4
    Close Application



