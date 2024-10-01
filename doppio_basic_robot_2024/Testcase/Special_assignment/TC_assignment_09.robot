*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot


*** Test Cases ***

TC ASSIGNMENT 9
    [Documentation]    Return to Scalar
    ${square}     Spacial_asgmt_kw.Calculate squat    number=4
    ${ans_int}    BuiltIn.Convert To Integer          item=16    
    BuiltIn.Should Be Equal    ${square}    ${ans_int}