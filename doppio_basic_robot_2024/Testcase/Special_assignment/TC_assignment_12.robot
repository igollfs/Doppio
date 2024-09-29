*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot


*** Test Cases ***

TC ASSIGNMENT 12 AGE VERIFICATION
    [Documentation]    If/If-Else Statement
    ${age}=    BuiltIn.Set Variable    89
    BuiltIn.Run Keyword If    ${age}>18    BuiltIn.Log    You are an adult                WARN
    ...    ELSE IF    ${age} == 18         BuiltIn.Log    You just became an adult        WARN
    ...    ELSE                            BuiltIn.Log    You are underage                WARN