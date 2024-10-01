*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot

*** Keywords ***

Click icon shopping card
    common_keyword.Wait element and click element    ${delivery.icon_shopee_cart}