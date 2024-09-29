*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot


*** Test Cases ***

TC ASSIGNMENT 15
    [Documentation]    Run Keyword And Return Status | Run Keyword And Ignore Error
    ${status}    BuiltIn.Run Keyword And Return Status    SeleniumLibrary.Click Element    invalid_locator    
    BuiltIn.Log    Status: ${status}    WARN

    BuiltIn.Run Keyword And Ignore Error    SeleniumLibrary.Input Text    invalid_locator    value
    BuiltIn.Log    Ignored the error and continued    WARN