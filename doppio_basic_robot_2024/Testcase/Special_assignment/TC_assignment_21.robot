*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot


*** Test Cases ***

TC ASSIGNMENT 21
    [Documentation]    Running Test Cases that include only specific tags.
    # run in terminal
    BuiltIn.Log   command is: robot --include critical .    WARN