*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot


*** Test Cases ***

TC ASSIGNMENT 5
    [Documentation]    args no limit
    Spacial_asgmt_kw.PRINT ALL ITEM    @{fruits}