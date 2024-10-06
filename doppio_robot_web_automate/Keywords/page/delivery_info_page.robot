*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot

*** Keywords ***

Click icon shopping card
    common_keyword.Wait element and click element    ${delivery.icon_shopee_cart_locator}


Input name delivery info
    [Arguments]    ${text}
    SeleniumLibrary.Wait Until Element Is Visible    ${delivery.info_name_locator}
    SeleniumLibrary.Input Text    ${delivery.info_name_locator}    ${text}


Input surname delivery info
    [Arguments]    ${text}
    SeleniumLibrary.Wait Until Element Is Visible    ${delivery.info_surname_locator}
    SeleniumLibrary.Input Text    ${delivery.info_surname_locator}    ${text}


Input shipping address delivery info
    [Arguments]    ${text}
    SeleniumLibrary.Wait Until Element Is Visible    ${delivery.info_shipping_address_locator}
    SeleniumLibrary.Input Text    ${delivery.info_shipping_address_locator}    ${text}


Input phone number delivery info
    [Arguments]    ${text}
    SeleniumLibrary.Wait Until Element Is Visible    ${delivery.info_phone_number_locator}
    SeleniumLibrary.Input Text    ${delivery.info_phone_number_locator}    ${text}


Click button pay
    BuiltIn.Sleep    ${global_timeout}
    common_keyword.Wait element and click element    ${delivery.btn_pay_locator}