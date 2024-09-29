*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot


*** Test Cases ***

TC ASSIGNMENT 22
    [Documentation]    Running Test Cases while excluding specific tags.
    BuiltIn.Log   command is: robot --exclude regression .    WARN
