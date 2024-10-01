*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot


*** Test Cases ***

TC ASSIGNMENT 4 - SC01
    [Documentation]    default value
    Spacial_asgmt_kw.Greet user    igollfs    # input value not use default value


TC ASSIGNMENT 4 - SC02
    [Documentation]    defalut value
    Spacial_asgmt_kw.Greet user    # use default value