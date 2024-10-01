*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot


*** Test Cases ***

TC ASSIGNMENT 6
    [Documentation]    Variables (Global vs local)
    BuiltIn.Set Global Variable    ${Global_var}    Global Value
    Spacial_asgmt_kw.Global vs local