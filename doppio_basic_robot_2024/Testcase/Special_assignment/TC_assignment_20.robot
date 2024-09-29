*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot


*** Test Cases ***

TC ASSIGNMENT 20 - TAGS 1
    [Tags]    smoke
    [Documentation]     Tags
    BuiltIn.Log    This is a smoke test    WARN


TC ASSIGNMENT 20 - TAGS 2  
    [Documentation]     Tags
    [Tags]    regression
    BuiltIn.Log    This is a regression test    WARN


TC ASSIGNMENT 20 - TAGS 3
    [Tags]    smoke    critical
    [Documentation]     Tags
    BuiltIn.Log    This is a smoke and critical test    WARN


# *********** How to run
    # command is: robot --include smoke .
    # command is: robot -i smoke TC_assignment_20.robot    [note: Cd to path]
    