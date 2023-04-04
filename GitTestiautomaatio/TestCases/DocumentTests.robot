*** Settings ***
Library             SeleniumLibrary
#Library             RequestLibrary
Library             OperatingSystem
Resource            ../Resources/Login_resources.robot
Suite Setup         Open Document Browser
Suite Teardown      close Browsers
*** Variables ***
${UploadButton}         id=uploadFile
${UploadFilePath}       id=uploadedFilePath
*** Test Cases ***
#Create New Document
#    [Documentation]         Verify that a user can create a new document.
#    [Tags]                  document
#    Click Button            id=new_document_button
#    Input Text              id=document_name_field    New Document
#    Click Button            create_button
#    Page Should Contain     New Document
Add Files to Document
    [Documentation]         Verify that a user can add files to a document.
    [Tags]                  priority:high
#    Wait Until Keyword Succeeds  10s  1s  Check Network Status  https://demoqa.com/css/styles.css  200
    ${UploadDirectory}      normalize path          ${CURDIR}\\..\\UploadDocument.txt
    Create File             ${UploadDirectory}      This is the documentation test
    Choose File             ${UploadButton}    ${UploadDirectory}
    ${uploaded_file_path}=  Get Text  ${UploadFilePath}
    Should Be Equal As Strings  ${uploaded_file_path}  C:\\fakepath\\UploadDocument.txt
*** Keywords ***
#Check Network Status
#    [Arguments]  ${url}  ${status}
#    ${response}=  Get Request  ${url}
#    Should Be Equal As Strings  ${response.status_code}  ${status}