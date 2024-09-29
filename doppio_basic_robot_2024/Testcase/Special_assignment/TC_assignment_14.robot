*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot


*** Test Cases ***

TC ASSIGNMENT 14
    [Documentation]    Continue loop
    FOR  ${number}    IN RANGE    1    10 
        BuiltIn.Run Keyword If    ${number} == 3    BuiltIn.Continue For Loop    
        BuiltIn.Run Keyword If    ${number} == 5    BuiltIn.Exit For Loop 
        BuiltIn.Log    ${number}    WARN
    END

