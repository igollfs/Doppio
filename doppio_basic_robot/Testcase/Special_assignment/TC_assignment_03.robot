*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot


*** Test Cases ***

TC ASSIGNMENT 3
    [Documentation]    Dictionary
    Spacial_asgmt_kw.PRINT USER INFO    &{user_info}