*** Settings ***

Library        AppiumLibrary
Resource       ../Resources/Library.robot

Documentation   Test Cases for Classes module


*** Test Cases ***

TC_001 - User navigates to Classes screen and selects various options to Search
    User logged in and navigated to Classes screen
    Click Element    xpath=//android.widget.TextView[contains(@text,'WED')]
    Sleep    4
    Click Element    id=com.daxko.mobilemember.container:id/menuID
    Sleep    4
    Click Element    xpath=//android.widget.TextView[contains(@text,'LOCATION')]
    Click Element    xpath=//android.widget.TextView[contains(@text,'CSI QA 1')]
    Click Element    id=com.daxko.mobilemember.container:id/btn_apply
    Click Element    xpath=//android.widget.TextView[contains(@text,'CATEGORY')]
    Sleep    4
    Click Element    xpath=//android.widget.TextView[contains(@text,'All Categories')]
    Click Element    id=com.daxko.mobilemember.container:id/btn_apply
    Sleep    4
    Click Element    xpath=//android.widget.TextView[contains(@text,'CLASSES')]
    Sleep    4
    Click Element    xpath=//android.widget.TextView[contains(@text,'All Classes')]
    Click Element    id=com.daxko.mobilemember.container:id/btn_apply
    Sleep    4
    Click Element    xpath=//android.widget.TextView[contains(@text,'INSTRUCTOR')]
    Sleep    4
    Click Element    xpath=//android.widget.TextView[contains(@text,'All Instructor')]
    Click Element    id=com.daxko.mobilemember.container:id/btn_apply
    Sleep    4
    Click Element    id=com.daxko.mobilemember.container:id/btn_search
    Sleep    4
    Close Application


