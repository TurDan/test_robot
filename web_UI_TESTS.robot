*** Test Cases ***
Stack Overflow title check
    Open Browser    ${URL}    ${BROWSER}
    Title Should Be    Stack Overflow

Verify Login Functionality
    [Tags]   SKIP
    Click Element    xpath://a[@href='/users/login']
    Wait Until Page Contains Element    id:email
    Input Text    id:email    testuser@example.com
    Input Text    id:password    password123
    Wait Until Page Contains Element    css:.my-profile

Chrome - Check Main Navigation Menu
    [Tags]   UI
    [Setup]    Open Browser     https://stackoverflow.com/
    browser=Chrome
    Chrome - Wait And Click Main Menu Button By Text    About
    [Teardown]    Close Browser

Firefox - Check Main Navigation Menu
    [Tags]   UI
    [Setup]    Open Browser     https://stackoverflow.com/
   browser=Firefox
    Firefox - Wait And Click Main Menu Button By Text    About
    [Teardown]    Close Browser

*** Keywords ***
Open Browser
    [Arguments]    ${url}    ${browser}
    Open Browser   ${url}    ${browser}
    Maximize Browser Window