*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot


*** Keywords ***

Click the button sign up on the page login
    common_keyword.Wait element and click element    locator=${login.btn_sign_up_locator}
    SeleniumLibrary.Wait Until Page Contains    ${text_regis_page}[verify_text_title]
    BuiltIn.Sleep    02s


Input username for login
    [Arguments]    ${username}    ${timeout}=05s
    SeleniumLibrary.Wait Until Element Is Visible    ${login.input_username_locator}    ${timeout}
    SeleniumLibrary.Input Text    ${login.input_username_locator}    ${username}


Input password for login
    [Arguments]    ${password}    ${timeout}=05s
    SeleniumLibrary.Wait Until Element Is Visible    ${login.input_username_locator}    ${timeout}
    SeleniumLibrary.Input Text    ${login.input_password_locator}    ${password}


Click btn login
    common_keyword.Wait element and click element    ${login.btn_login_locator}
        common_keyword.Verify modal confirm message and click button ok
        ...    locator=${common.modal_confirm_content_ms_locator}    
        ...    message_ver=${text_login_page}[verify_text_popup_login_success]    
        ...    message_log_fail=Login Failed
