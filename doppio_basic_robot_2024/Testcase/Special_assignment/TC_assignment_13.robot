*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot


*** Test Cases ***

TC ASSIGNMENT 13 PRINT FRUIT LIST
    [Documentation]    For Loop
    @{fruits}    BuiltIn.Create List    apple    banana    cherry 
    FOR  ${fruit}    IN    @{fruits} 
        BuiltIn.Log    ${fruit}    WARN
    END


