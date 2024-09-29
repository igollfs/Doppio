*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot


*** Test Cases ***

TC ASSIGNMENT 4 - SC01
    [Documentation]    default value
    Spacial_asgmt_kw.GREET USER    igollfs    # input value not use default value


TC ASSIGNMENT 4 - SC02
    [Documentation]    defalut value
    Spacial_asgmt_kw.GREET USER    # use default value