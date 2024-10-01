*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot


*** Keywords ***

Click icon user login
    common_keyword.Wait element and click element    locator=${homesrc.icon_user_locator}
    SeleniumLibrary.Wait Until Page Contains    ${text_login_page}[verify_text_title]
    BuiltIn.Sleep    02s


Input text to field search
    [Arguments]    ${text}    ${timeout}=05s
    SeleniumLibrary.Wait Until Element Is Visible    ${homesrc.search_filed_locator}    ${timeout}
    SeleniumLibrary.Input Text    ${homesrc.search_filed_locator}    ${text}


Click btn search
    common_keyword.Wait element and click element    ${homesrc.btn_search_locator}    


Select item collection for add to card
    ${rep_done}    common_keyword.Replace text to locator    ${homesrc.select_phone_item_locator}    ${phone_collections_name_locator}[collection_phone_03]
    common_keyword.Wait element and click element    ${rep_done}


Click btn add to card
    common_keyword.Wait element and click element    ${homesrc.btn_add_to_cart_locator}
        common_keyword.Verify modal confirm ms
        ...    locator=${common.modal_confirm_content_ms_locator}    
        ...    message_ver=${text_add_to_card}[verify_text_modal_success]    
        ...    message_log_fail=add to card not complete!