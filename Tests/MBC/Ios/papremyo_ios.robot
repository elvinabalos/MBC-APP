*** Settings ***
Documentation     A test case for a user is able to view My Papremyo list screen
Resource          ../../../Resources/resources.robot
Suite Setup     Open MBC Application IOS
Test Setup      Launch Application
Test Teardown    Quit Application
Suite Teardown    Close Application

*** Test Cases ***
My Papremyo test case IOS
    [Tags]    sanity       positive
    Handle Location and Notification IOS
    Go To Login Screen      ${LOGIN_BUTTON_IOS}
    Sign With User      ${USER_DETAILS}[email]     ${LOGIN_EMAIL_FIELD_IOS}       ${USER_DETAILS}[password]       ${LOGIN_PASSWORD_FIELD_IOS}
    Handle Hide Keyboard
    Submit Login Button     ${LOGIN_BUTTON_IOS}
    Handle Modals       ${MODAL_LOGGED_IN_ANOTHER_DEVICE_IOS}       ${USE_HERE_BUTTON_IOS}
    Sleep    3
    Log To Console    'Done'
#    ${PASSED}=      Run Keyword And Return Status       Wait Until Page Contains Element        ${VERIFICATION_MODAL_IOS}
#    Run Keyword If       '${PASSED}' == 'True'      Handle Verification
##    Wait Until Page Contains Element        ${SKIP_TUTORIAL_IOS}
##    Tap The Element     ${SKIP_TUTORIAL_IOS}
#    Sleep    5
#    Swipe    5    173    176    178         # to view the sidenav
#    Swipe    205    1122    207    553      # swipe to view the Papremyo
#    Sleep    5
#    Tap The Element    ${MY_PAPREMYO}
    Sleep    10
    Log To Console    'My Papremyo'