*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot
Suite Teardown    BuiltIn.Log   Suite Teardown is running    WARN


*** Test Cases ***

TC ASSIGNMENT 19
    [Documentation]     Teardown in Keyword, Test Case, and Suite
    [Teardown]    BuiltIn.Log    Test Case Teardown is running    WARN
    BuiltIn.Log    Running the test    WARN
    Spacial_asgmt_kw.Keyword with teardown
