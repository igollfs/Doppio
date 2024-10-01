*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot


*** Test Cases ***

TC ASSIGNMENT 2
    [Documentation]    For Loop list fruits
    Spacial_asgmt_kw.Print fruits    banana    # Input fruits name