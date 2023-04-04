*** Settings ***
Library             Selenium2Library
#Library             RequestLibrary
Resource            ../Resources/Login_resources.robot
Suite Setup         Open Document Browser
Suite Teardown      close Browsers
*** Variables ***
${UploadButton}         id=uploadFile
${UploadFilePath}       id=uploadedFilePath
${FileToUpload}         C:\\Users\\juhan\\PycharmProjects\\TestiautomaatioTeht\\UploadDocument.txt

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
    Choose File             ${UploadButton}    ${FileToUpload}
    ${uploaded_file_path}=  Get Text  ${UploadFilePath}
    Should Be Equal As Strings  ${uploaded_file_path}  C:\\fakepath\\UploadDocument.txt
*** Keywords ***
#Check Network Status
#    [Arguments]  ${url}  ${status}
#    ${response}=  Get Request  ${url}
#    Should Be Equal As Strings  ${response.status_code}  ${status}