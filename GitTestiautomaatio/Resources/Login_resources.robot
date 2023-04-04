*** Settings ***
Library    Selenium2Library
Library    Collections

*** Variables ***
${LOGIN URL}        https://www.saucedemo.com/
${DOCUMENT URL}     https://demoqa.com/upload-download
@{BROWSERS}         chrome      firefox     edge


*** Keywords ***
Open Login Browser
    open browser    ${LOGIN URL}    ${BROWSERS}[0]  executable_path=C:/Users/juhan/OneDrive/Desktop/Drivers/chromedriver
    maximize browser window
Open Document Browser
    open browser    ${DOCUMENT URL}    ${BROWSERS}[2]
    maximize browser window
close Browsers
    close all browsers

Open Login Page
    go to   ${LOGIN URL}

Input username
    [Arguments]     ${username}
    input text      id:user-name     ${username}

Input pwd
    [Arguments]     ${password}
    input text      id:password     ${password}

click login button
    Click Button        id:login-button

Error message should be visible
    page should contain    Epic sadface:

Login succesful
    page should contain    Swag Labs