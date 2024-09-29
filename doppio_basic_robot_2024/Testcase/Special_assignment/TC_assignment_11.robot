*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot


*** Test Cases ***

TC ASSIGNMENT 11
    [Documentation]    Return to Dictionary
    &{user}=    Spacial_asgmt_kw.CREATE USER INFO
    BuiltIn.Log    name: ${user}[name]    WARN
    BuiltIn.Log    age: ${user}[age]      WARN
    BuiltIn.Log    city: ${user}[city]    WARN
