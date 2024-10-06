*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot

*** Keywords ***

Click the button next
    common_keyword.Wait element and click element    ${paymentsel.btn_next_locator}


Click button confirm payment details
    common_keyword.Wait element and click element    ${paymtdt.btn_conf_paymt_locator}
        common_keyword.Verify modal confirm message and click button ok
        ...    locator=${common.modal_confirm_content_ms_locator}    
        ...    message_ver=${text_payment_page}[verify_text_payment_success]    
        ...    message_log_fail=confirm payment not complete!


Click continue to shopping
    common_keyword.Wait element and click element    ${paymtdt.contn_to_shpping_locator}


Select payment method
    [Arguments]    ${text}
    ${replace_done}    common_keyword.Replace text to locator    ${paymentsel.redio_btn_pament_locator}    ${text}
    BuiltIn.Sleep    ${global_timeout}


Input card number payment details
    [Arguments]    ${text}
    SeleniumLibrary.Wait Until Element Is Visible    ${paymtdt.card_number_locator}
    SeleniumLibrary.Input Text    ${paymtdt.card_number_locator}    ${text}
    BuiltIn.Sleep    ${global_timeout}


Input expire date payment details
    [Arguments]    ${text}
    SeleniumLibrary.Wait Until Element Is Visible    ${paymtdt.expire_date_locator}
    SeleniumLibrary.Input Text    ${paymtdt.expire_date_locator}    ${text}
    BuiltIn.Sleep    ${global_timeout}


Input cvc code payment details
    [Arguments]    ${text}
    SeleniumLibrary.Wait Until Element Is Visible    ${paymtdt.cvc_code_locator}
    SeleniumLibrary.Input Text    ${paymtdt.cvc_code_locator}    ${text}
    BuiltIn.Sleep    ${global_timeout}


Input card owner payment details
    [Arguments]    ${text}
    SeleniumLibrary.Wait Until Element Is Visible    ${paymtdt.card_onwer_locator}
    SeleniumLibrary.Input Text    ${paymtdt.card_onwer_locator}    ${text}
    BuiltIn.Sleep    ${global_timeout}


Verify payment complete message
    SeleniumLibrary.Wait Until Page Contains    ${text_payment_page}[verify_text_payment_complete]


Get order id payment complete
    ${value}    common_keyword.Get text    ${paymtdt.get_txt_order_id_locator}
    common_keyword.FIND TEXT IN MESSAGE    ${value}
    
    ${value}    SeleniumLibrary.Get Text    //div[@class='success-description'][text()]