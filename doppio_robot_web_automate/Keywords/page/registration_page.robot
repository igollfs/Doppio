*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot


*** Keywords ***

Input email address for register
    [Arguments]    ${email}
    SeleniumLibrary.Wait Until Element Is Visible    ${regis.input_email}
    SeleniumLibrary.Input Text    ${regis.input_email}    ${email}


Input password for register
    [Arguments]    ${password}
    SeleniumLibrary.Wait Until Element Is Visible    ${regis.input_pass}
    SeleniumLibrary.Input Text    ${regis.input_pass}    ${password}


Input confirm password for register
    [Arguments]    ${confirm_password}
    SeleniumLibrary.Wait Until Element Is Visible    ${regis.input_confirm_pass}
    SeleniumLibrary.Input Text    ${regis.input_confirm_pass}    ${confirm_password}


Click btn sign up
    common_keyword.Wait element and click element    locator=${regis.btn_signup}
        common_keyword.Verify modal confirm ms
        ...    locator=${common.modal_confirm_content_ms_locator}    
        ...    message_ver=${text_regis_page}[verify_text_popup_regis_success]    
        ...    message_log_fail=Register not complete!    
        ...    timeout=15s

    