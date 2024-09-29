*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot


*** Test Cases ***

TC ASSIGNMENT 23 - PARALLEL TEST 1
    [Documentation]    Pabot command runs parallel test case.
    BuiltIn.Log    Running Test 1    WARN

TC ASSIGNMENT 23 - PARALLEL TEST 2
    [Documentation]    Pabot command runs parallel test case.
    BuiltIn.Log    Running Test 2    WARN

TC ASSIGNMENT 23 - PARALLEL TEST 3
    [Documentation]    Pabot command runs parallel test case.
    BuiltIn.Log    Running Test 3    WARN


# *********** How to run
    # command is: pabot --processes 3 .
