*** Settings ***
Library             SeleniumLibrary
Resource            ../Resources/Login_resources.robot
Suite Setup         Open Login Browser
Suite Teardown      close Browsers
Test Template       Invalid login

*** Test Cases ***
Right user empty password
    [Tags]                  priority:low
    admin@yourstore.com     ${EMPTY}
Right user wrong password
    [Tags]                  priority:low
    admin@yourstore.com     tester123
Wrong user right password
    [Tags]                  priority:low
    adm@yourstore.com       admin
Wrong user empty password
    [Tags]                  priority:low
    adm@yourstore.com       ${EMPTY}
Wrong user wrong password
    [Tags]                  priority:low
    adm@yourstore.com       tester123
Right user right password
    [Tags]                  priority:high
    [Template]              Correct Login
    ${CORRECT_LOGIN}        ${CORRECT_PASSWORD}

*** Keywords ***
Correct Login
    [Arguments]         ${username}  ${password}
    Input username      ${username}
    Input pwd           ${password}
    Click Login Button
    Login succesful
Invalid Login
    [Arguments]         ${username}  ${password}
    Input username      ${username}
    Input pwd           ${password}
    Click Login Button
    Error message should be visible