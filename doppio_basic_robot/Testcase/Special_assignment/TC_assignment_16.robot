*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot


*** Test Cases ***

TC ASSIGNMENT 16
    [Documentation]    Test Factorial Calculation
    ${result}=    Spacial_asgmt_kw.CALCULATE FACTORIAL    5
    ${ans_int}    BuiltIn.Convert To Integer    item=120    
    BuiltIn.Should Be Equal    ${result}    ${ans_int}