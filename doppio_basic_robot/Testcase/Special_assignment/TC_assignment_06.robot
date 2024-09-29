*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot


*** Test Cases ***

TC ASSIGNMENT 6
    [Documentation]    Variables (Global vs Local)
    BuiltIn.Set Global Variable    ${GLOBAL_VAR}    Global Value
    Spacial_asgmt_kw.GLOBAL VS LOCAL