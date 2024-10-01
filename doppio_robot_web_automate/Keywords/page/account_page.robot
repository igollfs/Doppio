*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot

*** Keywords ***

Click button logout from page account
    common_keyword.Wait element and click element    locator=${acc.btn_logout_locator}