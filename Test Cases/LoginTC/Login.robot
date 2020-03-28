*** Settings ***

Library        AppiumLibrary
Resource       ../../Resources/Library.robot

Documentation   Test Cases for Login module

# Test Setup    User_open_application
# Test Teardown    User_close_application

default tags    DFLT
force tags    ALL_TC

test timeout    2mins

*** Test Cases ***

TC_001 - Successful Login

    [Documentation]    This test case checks whether valid user is able to login to application or not
    [Tags]    Functional    Regression
    Given User_open_application
    ${username_text}=    Read_Element_Locator  Login.username_textbox_id
    ${password_text}=    Read_Element_Locator  Login.password_textbox_id
    ${login_button}=    Read_Element_Locator  Login.login_button_id
    ${myaccount_button}=    Read_Element_Locator  Login.myaccount_button_id
    ${hamburger_menu}=    Read_Element_Locator  Login.hamburger_id
    ${logout_link}=    Read_Element_Locator  Login.logout_xpath
    ${row}=    Read_Number_Of_Rows    ValidLogin
         FOR    ${i}    IN RANGE    1    ${row}+1
    \    ${username}=    Read_Excel_Data_Of_Cell    ValidLogin    ${i}    1
    \    ${password}=    Read_Excel_Data_Of_Cell    ValidLogin    ${i}    2
    \    When Input Text  id=${username_text}  ${username}
    \    When Input Text  id=${password_text}  ${password}
    \    When Click Element  id=${login_button}
    \    When Sleep    8
    \    When Page Should Contain Text    MY ACCOUNT
    \    When Element Text Should Be    id=${myaccount_button}    MY ACCOUNT
    \    When Capture Page Screenshot    ../Snapshots/TC_001.png
    \    When Click Element  id=${hamburger_menu}
    \    When Click Element  xpath=${logout_link}
    Then User_close_application

TC_002 - Invalid Credentials

    [Documentation]    This test case checks whether invalid user is able to login to application or not
    [Tags]    Functional    Regression
    Given User_open_application
    ${username_text}=    Read_Element_Locator  Login.username_textbox_id
    ${password_text}=    Read_Element_Locator  Login.password_textbox_id
    ${login_button}=    Read_Element_Locator  Login.login_button_id
    ${row}=    Read_Number_Of_Rows    InvalidLogin
         FOR    ${i}    IN RANGE    1    ${row}+1
    \    ${username}=    Read_Excel_Data_Of_Cell    InvalidLogin    ${i}    1
    \    ${password}=    Read_Excel_Data_Of_Cell    InvalidLogin    ${i}    2
    \    When Input Text  id=${username_text}  ${username}
    \    When Input Text  id=${password_text}  ${password}
    \    When Click Element  id=${login_button}
    \    When Sleep  4
    \    When Page Should Contain Text    Invalid login name or password. Please try again.
    \    When Capture Page Screenshot    ../Snapshots/TC_002.png
    Then User_close_application

TC_003 - Do Not Have Login? -> Invalid Member Number

    [Documentation]    This test case checks the flow when user enters invalid member number
    [Tags]    Functional
    Given User_open_application
    ${donothavelogin}=    Read_Element_Locator  Login.donothavelogin_id
    ${membernumber}=    Read_Element_Locator  Login.membernumber_textbox_id
    ${submit}=    Read_Element_Locator  Login.submit_button_id
    ${ok}=    Read_Element_Locator  Login.ok_button_xpath
    When Click Element  id=${donothavelogin}
    When Sleep  4
    When Input Text  id=${membernumber}  1234
    When Click Element  id=${submit}
    When Sleep  4
    When Page Should Contain Text    Member not found.
    When Capture Page Screenshot    ../Snapshots/TC_003.png
    When Click Element  xpath=${ok}
    Then User_close_application

TC_004 - Do Not Have Login? -> Cancel

    [Documentation]    This test case checks the flow when user clicks Cancel button on Do Not Have Login page
    [Tags]    Functional
    Given User_open_application
    ${donothavelogin}=    Read_Element_Locator  Login.donothavelogin_id
    ${cancel}=    Read_Element_Locator  Login.cancel_button_id
    When Click Element  id=${donothavelogin}
    When Sleep  2
    When Element Text Should Be    id=${cancel}    Cancel
    When Capture Page Screenshot    ../Snapshots/TC_004.png
    When Click Element  id=${cancel}
    Then User_close_application

TC_005 - Home Page -> Skip -> Select Location

    [Documentation]    This test case checks the flow when user clicks Skip button on Home page
    Given User_open_application
    ${skip}=    Read_Element_Locator  Login.skip_button_id
    ${location}=    Read_Element_Locator  Login.location_xpath
    When Click Element  id=${skip}
    When Sleep  8
    When Capture Page Screenshot    ../Snapshots/TC_005.png
    When Click Element  xpath=${location}
    When Sleep    4
    When Page Should Contain Text    Description
    Then User_close_application

TC_006 - Forgot Password -> Display Alert

    [Documentation]    This test case checks the flow when user clicks on Alert icon on Forgot Password page
    [Tags]    Functional
    Given User_open_application
    ${forgot_password}=    Read_Element_Locator  Login.ForgotPassword.forgot_password_link_id
    ${alert_icon}=    Read_Element_Locator  Login.ForgotPassword.forgot_password_alerticon_id
    ${alert}=    Read_Element_Locator  Login.ForgotPassword.forgot_password_alert_xpath
    When Click Element  id=${forgot_password}
    When Sleep  2
    When Click Element  id=${alert_icon}
    When Sleep  2
    When Page Should Contain Text    If you do not have all the information requested, please contact the facility.
    When Capture Page Screenshot    ../Snapshots/TC_006.png
    When Click Element  xpath=${alert}
    Then User_close_application

TC_007 - Forgot Password -> Cancel

    [Documentation]    This test case checks when user clicks Cancel button on Forgot Password page
    [Tags]    Functional
    Given User_open_application
    ${forgot_password}=    Read_Element_Locator  Login.ForgotPassword.forgot_password_link_id
    ${forgot_cancel}=    Read_Element_Locator  Login.ForgotPassword.forgot_password_cancel_button_id
    When Click Element  id=${forgot_password}
    When Sleep  2
    When Element Text Should Be    id=${forgot_cancel}    Cancel
    When Capture Page Screenshot    ../Snapshots/TC_007.png
    When Click Element  id=${forgot_cancel}
    Then User_close_application

TC_008 - Forgot Password -> Invalid Email Address

    [Documentation]    This test case checks the flow ehen user enters invalid email address on Forgot Password page
    [Tags]    Functional    Regression
    Given User_open_application
    ${forgot_password}=    Read_Element_Locator  Login.ForgotPassword.forgot_password_link_id
    ${forgot_email}=    Read_Element_Locator  Login.ForgotPassword.forgot_password_email_textbox_id
    ${forgot_submit}=    Read_Element_Locator  Login.ForgotPassword.forgot_password_submit_button_id
    ${forgot_password_ok}=    Read_Element_Locator  Login.ForgotPassword.forgot_password_ok_button_xpath
    When Click Element  id=${forgot_password}
    When Sleep  2
    When Input Text  id=${forgot_email}  abc@xyz.com
    When Click Element  id=${forgot_submit}
    When Sleep  2
    When Page Should Contain Text    This email address does not match any email in our records.
    When Capture Page Screenshot    ../Snapshots/TC_008.png
    When Click Element  xpath=${forgot_password_ok}
    Then User_close_application
