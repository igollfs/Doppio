*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot


*** Test Cases ***

TC ASSIGNMENT 24 - SPLITTESTLEVEL TEST 1
    BuiltIn.Log    Running Test 1    WARN


TC ASSIGNMENT 24 - SPLITTESTLEVEL TEST 2
    BuiltIn.Log    Running Test 2    WARN


TC ASSIGNMENT 24 - SPLITTESTLEVEL TEST 3
    BuiltIn.Log    Running Test 3    WARN


# *********** How to run
    # command is: pabot --testlevelsplit ./