*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot


*** Keywords ***

INPUT EMAL ADDRESS FOR REGISTER
    [Arguments]    ${email}
    SeleniumLibrary.Wait Until Element Is Visible    ${regis.input_email}
    SeleniumLibrary.Input Text    ${regis.input_email}    ${email}


INPUT PASSWORD FOR REGISTER
    [Arguments]    ${password}
    SeleniumLibrary.Wait Until Element Is Visible    ${regis.input_pass}
    SeleniumLibrary.Input Text    ${regis.input_pass}    ${password}


INPUT CONFIRM PASSWORD FOR REGISTER
    [Arguments]    ${confirm_password}
    SeleniumLibrary.Wait Until Element Is Visible    ${regis.input_confirm_pass}
    SeleniumLibrary.Input Text    ${regis.input_confirm_pass}    ${confirm_password}