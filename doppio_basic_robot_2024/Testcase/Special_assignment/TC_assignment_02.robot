*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot


*** Test Cases ***

TC ASSIGNMENT 2
    [Documentation]    For Loop list fruits
    Spacial_asgmt_kw.PRINT FRUITS    banana    # Input fruits name