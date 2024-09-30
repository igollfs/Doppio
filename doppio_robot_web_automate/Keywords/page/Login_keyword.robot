*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot


*** Keywords ***

CLICK ICON USER LOGIN
    Common_keyword.COMMON - WAIT ELEMENT AND CLICK ELEMENT    locator=${login.icon_user_locator}
    SeleniumLibrary.Wait Until Page Contains    ${text_login_page}[verify_text_title]
    BuiltIn.Sleep    02s


CLICK THE BUTTON SIGN UP ON THE PAGE LOGIN
    Common_keyword.COMMON - WAIT ELEMENT AND CLICK ELEMENT    locator=${login.btn_sign_up_locator}
    SeleniumLibrary.Wait Until Page Contains    ${text_regis_page}[verify_text_title]
    BuiltIn.Sleep    02s
