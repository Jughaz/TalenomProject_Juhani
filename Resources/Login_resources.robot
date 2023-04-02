*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN URL}    https://admin-demo.nopcommerce.com/login
${BROWSER}      chrome


*** Keywords ***
Open my Browser
    open browser    ${LOGIN URL}    ${BROWSER}
    maximize browser window

close Browsers
    close all browsers

Open Login Page
    go to   ${LOGIN URL}

Input username
    [Arguments]     ${username}
    input text      id:Email     ${username}

Input pwd
    [Arguments]     ${password}
    input text      id:Password     ${password}

click login button
    Click Button        class:button-1.login-button

Error message should be visible
    page should contain    Login was unsuccessful. Please correct the errors and try again.

Login succesful
    page should contain    Dashboard