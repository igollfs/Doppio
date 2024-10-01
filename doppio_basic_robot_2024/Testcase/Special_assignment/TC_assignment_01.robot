*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot


*** Test Cases ***

TC ASSIGNMENT 1 - SC01
    [Documentation]    Validate age <=18
    Spacial_asgmt_kw.Validate age    16    # Input age number


TC ASSIGNMENT 1 - SC02
    [Documentation]    Validate age <=18
    Spacial_asgmt_kw.Validate age    20    # Input age number