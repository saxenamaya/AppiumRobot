*** Settings ***

Library        AppiumLibrary
Library    ../ExternalKeywords/UserKeywords.py
Library    ../ExternalKeywords/Locators.py
Library    ../TestData/ReadExcel.py

Documentation    Resources file for defining Keywords

*** Variables ***

${URL}  http://192.168.1.19:4723/wd/hub

*** Keywords ***
User_open_application
    [Documentation]    This keyword is for opening the application
    Open Application  ${URL}  platformName=Android  platformVersion=9  deviceName=RZ8M30ME1CN    appPackage=com.daxko.mobilemember.container  appActivity=com.csi.vanguard.ui.LoginActivity  noReset=true
    ${WindowWidth}=    Get Window Width
    ${WindowHeight}=    Get Window Height
    [Return]  ${WindowWidth}    ${WindowHeight}

User_close_application
    [Documentation]    This keyword is for closing the application
    Close Application

# Implicit_Wait
#    [Documentation]    This keyword is for implementing implicit wait
#    [Arguments]    ${time_to_wait}
#    set_implicitly_wait    ${time_to_wait}

# New_Folder
#    [Documentation]    This keyword will create a new folder at specified location
#    create_folder

Read_Number_Of_Rows
    [Arguments]    ${sheetname}
    ${maxr}=    fetch_number_of_rows    ${sheetname}
    [Return]    ${maxr}

Read_Excel_Data_Of_Cell
    [Arguments]    ${sheetname}    ${row}    ${cell}
    ${celldata}=    fetch_cell_data    ${sheetname}    ${row}    ${cell}
    [Return]    ${celldata}

Read_Element_Locator
    [Arguments]    ${JsonPath}
    ${result}=    read_locator_from_json    ${JsonPath}
    [Return]    ${result}

User successfully login
    Open Application  http://192.168.1.19:4723/wd/hub  platformName=Android  platformVersion=9  deviceName=RZ8M30ME1CN    appPackage=com.daxko.mobilemember.container  appActivity=com.csi.vanguard.ui.LoginActivity  noReset=true
    Input Text  id=com.daxko.mobilemember.container:id/et_Username  44728rgarg
    Input Text  id=com.daxko.mobilemember.container:id/et_password  Second50#*
    Click Element  id=com.daxko.mobilemember.container:id/btn_login
    Sleep  4

User logged in and navigated to Programs screen
    User successfully login
    Click Element    id=com.daxko.mobilemember.container:id/btn_program
    Sleep    4

User logged in and navigated to Classes screen
    User successfully login
    Click Element    id=com.daxko.mobilemember.container:id/btn_class
    Sleep    4