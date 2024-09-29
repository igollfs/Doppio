*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot


*** Test Cases ***

TC ASSIGNMENT 25
    [Documentation]

    BuiltIn.Log    Use Test Suite form Assignment 23 --> pabot --processes 4 ./

# *********** How to run
    # command is: pabot --processes 4 ./