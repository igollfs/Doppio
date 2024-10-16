*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot

*** Keywords ***

Click button logout from page account
    common_keyword.Wait element and click element    locator=${acc.btn_logout_locator}


Click my order
    [Arguments]    ${timeout}=05s
    ${replace_done}    common_keyword.Replace text to locator    ${acc.orderid_or_status_locator}    text=${text_account_page}[verify_text_my_order_status]
    common_keyword.Wait element and click element    ${replace_done}
    SeleniumLibrary.Wait Until Page Contains    ${text_order_details}[verify_header_order_detail]    ${timeout}