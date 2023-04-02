*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${MY_ELEMENT_LOCATOR}   class:navigation-top-menu-label.navigation-top-menu-label-arrow
${USERNAME}             Tester1234
${PASSWORD}             ASDF1234
${LOGIN_ERROR_MESSAGE}  Login was unsuccessful. Please correct the errors and try again.

*** Test Cases ***
LoginTest
    open browser        https://www.nopcommerce.com/en/login  chrome
    maximize browser window
    ${count}=           get element count   ${MY_ELEMENT_LOCATOR}
    log to console      This is the count ${count}
    input text          id:Username         ${USERNAME}
    input text          id:Password         ${PASSWORD}
    Click Button        //input[@class='btn blue-button' and @value='Log in']
    ${element_text}=    Get Text    xpath=//div[@class="message-error validation-summary-errors"]
    Should Contain      ${element_text}     ${LOGIN_ERROR_MESSAGE}
    sleep   10
*** Keywords ***







