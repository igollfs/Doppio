*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot
Suite Setup       BuiltIn.Log    Suite is starting    WARN
Suite Teardown    BuiltIn.Log    Suite is ending      WARN

*** Test Cases ***

TC ASSIGNMENT 18 SC01
    [Documentation]    Suite Setup & Suite Teardown
    BuiltIn.Log    Running Test 1    WARN


TC ASSIGNMENT 18 SC02
    [Documentation]    Suite Setup & Suite Teardown
    BuiltIn.Log    Running Test 2    WARN