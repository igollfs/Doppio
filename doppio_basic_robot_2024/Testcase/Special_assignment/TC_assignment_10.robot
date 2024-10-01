*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot


*** Test Cases ***

TC ASSIGNMENT 10
    [Documentation]    Return to List
    ${fruits}    Spacial_asgmt_kw.Create fruit list
    BuiltIn.Log    ${fruits}[0]    WARN
    BuiltIn.Log    ${fruits}[1]    WARN
    BuiltIn.Log    ${fruits}[2]    WARN