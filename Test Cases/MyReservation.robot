*** Settings ***

Library        AppiumLibrary
Resource       ../Resources/Library.robot

Documentation   Test Cases for My Reservation module


*** Test Cases ***

TC_001 - Navigate to My Account screen
    User successfully login
    Click Element    id=com.daxko.mobilemember.container:id/btn_my_accn
    Sleep    4
    Click Element  id=android:id/up
    Click Element  xpath=//android.widget.TextView[contains(@text,'Log out')]
    Close Application

TC_002 - Navigate to My Reservation screen after tapping on Home tab
    User successfully login
    Click Element    id=com.daxko.mobilemember.container:id/btn_my_accn
    Sleep    4
    Click Element  id=android:id/up
    Click Element  xpath=//android.widget.TextView[contains(@text,'Home')]
    Sleep    4
    Click Element  id=android:id/up
    Click Element  xpath=//android.widget.TextView[contains(@text,'Log out')]
    Close Application

TC_003 - Navigate to My Account screen by clicking on face symbol
    User successfully login
    Click Element    id=com.daxko.mobilemember.container:id/menuID
    Sleep    4
    Click Element  id=android:id/up
    Click Element  xpath=//android.widget.TextView[contains(@text,'Log out')]
    Close Application

TC_004 - Navigate to Classes tab
    User successfully login
    Click Element    id=com.daxko.mobilemember.container:id/btn_class
    Sleep    4
    Click Element  id=android:id/up
    Click Element  xpath=//android.widget.TextView[contains(@text,'Log out')]
    Close Application

TC_005 - Navigate to Programs tab
    User successfully login
    Click Element    id=com.daxko.mobilemember.container:id/btn_program
    Sleep    4
    Click Element  id=android:id/up
    Click Element  xpath=//android.widget.TextView[contains(@text,'Log out')]
    Close Application

TC_006 - Navigate to Bookings tab
    User successfully login
    Click Element    id=com.daxko.mobilemember.container:id/btn_schedule
    Sleep    4
    Click Element  id=android:id/up
    Click Element  xpath=//android.widget.TextView[contains(@text,'Log out')]
    Close Application

TC_007 - Navigate to Locations tab
    User successfully login
    Click Element    id=com.daxko.mobilemember.container:id/btn_locations
    Sleep    4
    Click Element  id=android:id/up
    Click Element  xpath=//android.widget.TextView[contains(@text,'Log out')]
    Close Application

TC_008 - Navigate to Bar Code screen
    User successfully login
    Click Element    id=com.daxko.mobilemember.container:id/iv_barcode
    Sleep    4
    Click Element  com.daxko.mobilemember.container:id/iv_close
    Sleep    2
    Click Element  id=android:id/up
    Click Element  xpath=//android.widget.TextView[contains(@text,'Log out')]
    Close Application

TC_009 - Verify dates are clickable on My Reservation screen
    User successfully login
    Click Element    xpath=//android.widget.TextView[contains(@text,'20')]
    Sleep    4
    Click Element  id=android:id/up
    Click Element  xpath=//android.widget.TextView[contains(@text,'Log out')]
    Close Application

TC_010 - Verify Program Details are getting by tapping on a particular booking
    User successfully login
    Click Element    xpath=//android.widget.TextView[contains(@text,'20')]
    Sleep    4
    Click Element    id=com.daxko.mobilemember.container:id/rl_main_row
    Sleep    4
    Click Element  id=android:id/up
    Sleep    4
    Click Element  id=android:id/up
    Click Element  xpath=//android.widget.TextView[contains(@text,'Log out')]
    Close Application
